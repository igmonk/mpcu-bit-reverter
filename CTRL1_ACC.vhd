----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:52:00 05/06/2018 
-- Design Name: 
-- Module Name:    CTRL1_ACC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CTRL1_ACC is
    Port ( 
           -- Input ports: control
			  CLK : in  STD_LOGIC;
			  RST : in  STD_LOGIC;
           Start : in  STD_LOGIC;
			  
			  -- Output port: result
           Stop : out  STD_LOGIC;
			  
			  -- ROM connection (microprogram memory)
           ROM_re : out  STD_LOGIC;
           ROM_adr : out  STD_LOGIC_VECTOR (4 downto 0);
           ROM_dout : in  STD_LOGIC_VECTOR (9 downto 0);
			  
			  -- RAM connection (data memory)
           RAM_rw : out  STD_LOGIC;
           RAM_adr : out  STD_LOGIC_VECTOR (5 downto 0);
           RAM_din : out  STD_LOGIC_VECTOR (7 downto 0);
           RAM_dout : in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  -- Data Path connection
           DP_en : out  STD_LOGIC;
           DP_opcode : out  STD_LOGIC_VECTOR (3 downto 0);
           DP_op : out  STD_LOGIC_VECTOR (7 downto 0);
           DP_res : in  STD_LOGIC_VECTOR (7 downto 0);
           DP_zf : in  STD_LOGIC);
end CTRL1_ACC;

architecture Behavioral of CTRL1_ACC is

-- Enum of FSM states
type states is (I, F, D, R, L, S, A, SUB, REV, LIN, RIN, SIN, JZ, JMP, H);
-- I - Idle
-- F - Fetch
-- D - Decode
-- R - Read
-- L - Load
-- S - Store
-- A - Add
-- SUB - Sub
-- REV - Revert
-- LIN - Load indirect
-- RIN - Read indirect
-- SIN - Store indirect
-- JZ - Jump if zero
-- JMP - Unconditional jump
-- H - Halt

-- Current & Next state signals
signal current_state, next_state: states;

-- Fetched instruction register
signal RI: std_logic_vector(9 downto 0);

-- Instruction counter register
signal IC: std_logic_vector(4 downto 0);

-- Operation type register
signal RO: std_logic_vector(3 downto 0);

-- Data memoty address register
signal RA: std_logic_vector(5 downto 0);

-- Data register
signal RD: std_logic_vector(7 downto 0);

-- Operations binary codes
constant LOAD: std_logic_vector := "0000";
constant STORE: std_logic_vector := "0001";
constant LOADIN: std_logic_vector := "0010";
constant STOREIN: std_logic_vector := "0011";
constant ADD: std_logic_vector := "0100";
constant OP_SUB: std_logic_vector := "0101";
constant REVERT: std_logic_vector := "0110";
constant OP_JZ: std_logic_vector := "0111";
constant OP_JMP: std_logic_vector := "1000";
constant HALT: std_logic_vector := "1001";

begin

	--------------------------
	-- Synchronized FSM memory
	--------------------------
	FSM_mem: process(RST, CLK, next_state)
	begin
		if RST = '1' then
			current_state <= I;
		elsif rising_edge(CLK) then
			current_state <= next_state;
		end if;
	end process;
	--------------------------
	
	------------------------------------------------------
	-- Combinational logic of FSM which defines next state
	------------------------------------------------------
	FSM_gamma: process(current_state, Start, RO)
	begin
		case current_state is
			when I => if Start = '1' then
					next_state <= F;
				else
					next_state <= I;
				end if;
			when F => next_state <= D;
			when D => if RO = HALT then
					next_state <= H;
				elsif RO = STORE then
					next_state <= S;
				elsif RO = REVERT then
					next_state <= REV;
				elsif RO = OP_JZ then
					next_state <= JZ;
				elsif RO = OP_JMP then
					next_state <= JMP;
				else
					next_state <= R;
				end if;
			when R => if RO = LOAD then
					next_state <= L;
				elsif RO = ADD then
					next_state <= A;
				elsif RO = OP_SUB then
					next_state <= SUB;
				elsif RO = LOADIN then
					next_state <= LIN;
				elsif RO = STOREIN then
					next_state <= SIN;
				else
					next_state <= I;
				end if;
			when LIN => next_state <= RIN;
			when RIN => next_state <= L;
			when SIN => next_state <= S;
			when L | S | REV | A | SUB | JZ | JMP => next_state <= F;
			when H => next_state <= H;
			when others => next_state <= I;
		end case;
	end process;
	------------------------------------------------------
	
	-----------------------
	-- Output signal / Stop
	-----------------------
	FSM_phi: process(current_state)
	begin
		if current_state = H then
			Stop <= '1';
		else
			Stop <= '0';
		end if;
	end process;
	-----------------------
	
	-----------------
	-- ROM controller
	-----------------
	
	-- Instruction counter
	PIC: process(CLK, RST, current_state)
	begin
		if RST = '1' then
			IC <= "00000";
		elsif falling_edge(CLK) then
			if current_state = D then
				IC <= IC + 1;
			elsif (current_state = JZ and DP_zf = '1') then
				IC <= RA(4 downto 0);
			elsif current_state = JMP then
				IC <= RA(4 downto 0);
			end if;
		end if;
	end process;
	
	-- Feeding of IC value to ROM's address bus
	ROM_adr <= IC;
	
	-- ROM: read enabled
	PROMREAD: process(current_state, next_state)
	begin
		if (current_state = F or next_state = F) then
			ROM_re <= '1';
		else
			ROM_re <= '0';
		end if;
	end process;
	
	-- ROM: reading of instruction
	PROMDAT: process(current_state, RST, ROM_dout)
	begin
		if RST = '1' then
			RI <= "0000000000";
		elsif current_state = F then
			RI <= ROM_dout;
		end if;
	end process;
	-----------------
	
	------------------------------
	-- RO and RA registers control
	------------------------------
	PRORA: process(RST, next_state, RI, RD)
	begin
		if RST = '1' then
			RO <= "0000";
			RA <= "000000";
		elsif next_state = D then
			RO <= RI(9 downto 6);
			RA <= RI(5 downto 0);
		elsif (next_state = LIN or next_state = SIN) then
			RA <= RD(5 downto 0); -- RD sensitivity list?
		end if;
	end process;
	------------------------------
	
	-----------------
	-- RAM controller
	-----------------
	
	-- Feeding of RA value to RAM's address bus
	PRAMADR: process(current_state, RA)
	begin
		if (current_state /= JZ and current_state /= JMP) then
			RAM_adr <= RA; -- current_state sensitivity list?
		end if;
	end process;
	
	-- Read/Write RAM signal
	PRAMREAD: process(current_state)
	begin
		if current_state = S then
			RAM_rw <= '0'; -- Write to RAM
		else
			RAM_rw <= '1'; -- Read from RAM
		end if;
	end process;
	
	-- Write data (fetched from RAM) to RD register
	PRAMDAT: process(current_state)
	begin
		if (current_state = R or current_state = RIN) then
			RD <= RAM_dout; -- ?? RAM_dout sensitivity list?
		end if;
	end process;
	
	-- Feeding of Data Path result value to RAM
	RAM_din <= DP_res;
	-----------------
	
	-----------------------
	-- Data Path controller
	-----------------------
	
	-- Passing of RD register value as operand to Data Path
	DP_op <= RD;
	
	-- Passing of RO register value as operation code to Data Path
	DP_opcode <= RO;
	
	-- Data Path operations enabled
	PADDSUBREVEN: process(current_state)
	begin
		if (current_state = L or current_state = A or current_state = SUB or current_state = REV) then
			DP_en <= '1';
		else
			DP_en <= '0';
		end if;
	end process;

end Behavioral;

