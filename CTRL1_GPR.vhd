----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:57 05/07/2018 
-- Design Name: 
-- Module Name:    CTRL1_GPR - Behavioral 
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

entity CTRL1_GPR is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           Stop : out  STD_LOGIC;
			  
			  -- ROM Control
           ROM_re : out  STD_LOGIC;
           ROM_adr : out  STD_LOGIC_VECTOR (3 downto 0);
           ROM_dout : in  STD_LOGIC_VECTOR (20 downto 0);
			  
			  -- RAM Control
           RAM_rw : out  STD_LOGIC;
           RAM_adr1 : out  STD_LOGIC_VECTOR (5 downto 0);
           RAM_adr2 : out  STD_LOGIC_VECTOR (5 downto 0);
           RAM_adrw : out  STD_LOGIC_VECTOR (5 downto 0);
           RAM_dwin : out  STD_LOGIC_VECTOR (7 downto 0);
           RAM_dout1 : in  STD_LOGIC_VECTOR (7 downto 0);
           RAM_dout2 : in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  -- Data Path control
           DP_en : out  STD_LOGIC;
           DP_opcode : out  STD_LOGIC_VECTOR (2 downto 0);
           DP_op1 : out  STD_LOGIC_VECTOR (7 downto 0);
           DP_op2 : out  STD_LOGIC_VECTOR (7 downto 0);
           DP_res : in  STD_LOGIC_VECTOR (7 downto 0);
           DP_zf : in  STD_LOGIC);
end CTRL1_GPR;

architecture Behavioral of CTRL1_GPR is

-- Enum of FSM states
type states is (I, F, D, R, H, A, SUB, REV, CPIT, CPITR, M, CPTI, CPTIR, W, JZ, JMP);
-- I - Idle
-- F - Fetch
-- D - Decode
-- R - Read
-- H - Halt
-- A - Add
-- SUB - Sub
-- REV - Revert
-- CPIT - COPYINTO
-- CPITR - COPYINTO READ
-- M - Move (move value from RD_1 to RD_W...)
-- CPTI - COPYTOIN
-- CPTIR - COPYTOINR
-- W - Write
-- JZ - Jump if zero
-- JMP - Unconditional jump

-- Current & Next state signals
signal current_state, next_state: states;

-- Fetched instruction register
signal RI: std_logic_vector(20 downto 0);

-- Instruction counter register
signal IC: std_logic_vector(3 downto 0);

-- Operation type register
signal RO: std_logic_vector(2 downto 0);

-- Data memory address register (first operand)
signal RA_1: std_logic_vector(5 downto 0);

-- Data memory address register (second operand)
signal RA_2: std_logic_vector(5 downto 0);

-- Data memory address register (result operand)
signal RA_W: std_logic_vector(5 downto 0);

-- Data register (first operand)
signal RD_1: std_logic_vector(7 downto 0);

-- Data register (second operand)
signal RD_2: std_logic_vector(7 downto 0);

-- Operations binary codes
constant ADD: std_logic_vector := "000";
constant OP_SUB: std_logic_vector := "001";
constant REVERT: std_logic_vector := "010";
constant COPYINTO: std_logic_vector := "011";
constant COPYTOIN: std_logic_vector := "100";
constant OP_JZ: std_logic_vector := "101";
constant OP_JMP: std_logic_vector := "110";
constant HALT: std_logic_vector := "111";

begin

	--------------------------
	-- Synchronous FSM memory
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
				elsif RO = OP_JZ then
					next_state <= JZ;
				elsif RO = OP_JMP then
					next_state <= JMP;
				else
					next_state <= R;
				end if;
			when R => if RO = ADD then
					next_state <= A;
				elsif RO = OP_SUB then
					next_state <= SUB;
				elsif RO = REVERT then
					next_state <= REV;
				elsif RO = COPYINTO then
					next_state <= CPIT;
				elsif RO = COPYTOIN then
					next_state <= CPTI;
				else
					next_state <= I;
				end if;
			when CPIT => next_state <= CPITR;
			when CPTI => next_state <= CPTIR;
			when CPITR | CPTIR => next_state <= M;
			when A | SUB | REV | M => next_state <= W;
			when W | JZ | JMP => next_state <= F;
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
			IC <= "0000";
		elsif falling_edge(CLK) then
			if current_state = D then
				IC <= IC + 1;
			elsif (current_state = JZ and DP_zf = '1') then
				IC <= RA_1(3 downto 0); -- RA_1 to sensitivity list?
			elsif current_state = JMP then
				IC <= RA_1(3 downto 0);
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
			RI <= (others => '0');
		elsif current_state = F then
			RI <= ROM_dout;
		end if;
	end process;
	-----------------
	
	-----------------------------------------
	-- RO, RA_1, RA_2, RA_W registers control
	-----------------------------------------
	PRORA: process(RST, next_state, RI, RD_1, RD_2)
	begin
		if RST = '1' then
			RO <= "000";
			RA_1 <= "000000";
			RA_2 <= "000000";
			RA_W <= "000000";
		elsif next_state = D then
			RO <= RI(20 downto 18);
			RA_1 <= RI(17 downto 12);
			RA_2 <= RI(11 downto 6);
			RA_W <= RI(5 downto 0);
		elsif next_state = CPIT then
			RA_1 <= RD_1(5 downto 0);
		elsif next_state = CPTI then
			RA_2 <= RD_2(5 downto 0);
		elsif next_state = CPTIR then
			RA_W <= RA_2;
		end if;
	end process;
	-----------------------------------------
	
	-----------------
	-- RAM controller
	-----------------
	
	-- Feeding of RA value to RAM's address bus
	PRAMADR: process(current_state, RA_1, RA_2, RA_W)
	begin
		if (current_state /= JZ and current_state /= JMP) then
			RAM_adr1 <= RA_1;
			RAM_adr2 <= RA_2;
			RAM_adrw <= RA_W;
		end if;
	end process;
	
	-- Read/Write RAM signal
	PRAMREAD: process(current_state)
	begin
		if current_state = W then
			RAM_rw <= '0'; -- Write to RAM
		else
			RAM_rw <= '1'; -- Read from RAM
		end if;
	end process;
	
	-- Write data (fetched from RAM) to RD_1 and RD_2 registers
	PRAMDAT: process(current_state)
	begin
		if (current_state = R) then
			RD_1 <= RAM_dout1; -- ?? RAM_dout1 sensitivity list?
			RD_2 <= RAM_dout2; -- ?? RAM_dout2 sens. list?
		elsif current_state = CPITR then
			RD_1 <= RAM_dout1;
		end if;
	end process;
	
	-- Feeding of Data Path result value to RAM
	RAM_dwin <= DP_res;
	-----------------
	
	-----------------------
	-- Data Path controller
	-----------------------
	
	-- Passing of RD_1 and RD_2 register values as operands to Data Path
	DP_op1 <= RD_1;
	DP_op2 <= RD_2;
	
	-- Passing of RO register value as operation code to Data Path
	DP_opcode <= RO;
	
	-- Data Path operations enabled
	PADDSUBREVEN: process(current_state)
	begin
		if (current_state = A or current_state = SUB or current_state = REV or current_state = M) then
			DP_en <= '1';
		else
			DP_en <= '0';
		end if;
	end process;

end Behavioral;

