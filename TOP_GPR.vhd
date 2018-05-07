----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:38 05/07/2018 
-- Design Name: 
-- Module Name:    TOP_GPR - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_GPR is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           Stop : out  STD_LOGIC);
end TOP_GPR;

architecture Behavioral of TOP_GPR is

	component MROM_GPR is
		Port ( RE : in  STD_LOGIC;
           ADR : in  STD_LOGIC_VECTOR (3 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (20 downto 0));
	end component;
	
	component MRAM_GPR is
		Port ( RW : in  STD_LOGIC;
           ADR1 : in  STD_LOGIC_VECTOR (5 downto 0);
           ADR2 : in  STD_LOGIC_VECTOR (5 downto 0);
           ADRW : in  STD_LOGIC_VECTOR (5 downto 0);
           DINW : in  STD_LOGIC_VECTOR (7 downto 0);
           DOUT1 : out  STD_LOGIC_VECTOR (7 downto 0);
           DOUT2 : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component DATA_PATH_GPR is
		Port ( EN : in  STD_LOGIC;
           OPCODE : in  STD_LOGIC_VECTOR (2 downto 0);
           OP1 : in  STD_LOGIC_VECTOR (7 downto 0);
           OP2 : in  STD_LOGIC_VECTOR (7 downto 0);
           RES : out  STD_LOGIC_VECTOR (7 downto 0);
           ZF : out  STD_LOGIC);
	end component;
	
	component CTRL1_GPR is
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
	end component;
	
	-- ROM interconnection signals
	signal ROM_re: std_logic;
	signal ROM_adr: std_logic_vector(3 downto 0);
	signal ROM_dout: std_logic_vector(20 downto 0);

	-- RAM interconnection signals
	signal RAM_rw: std_logic;
	signal RAM_adr1: std_logic_vector(5 downto 0);
	signal RAM_adr2: std_logic_vector(5 downto 0);
	signal RAM_adrw: std_logic_vector(5 downto 0);
	signal RAM_dwin: std_logic_vector(7 downto 0);
	signal RAM_dout1: std_logic_vector(7 downto 0);
	signal RAM_dout2: std_logic_vector(7 downto 0);

	-- Data Path interconnection signals
	signal DP_en: std_logic;
	signal DP_opcode: std_logic_vector(2 downto 0);
	signal DP_op1: std_logic_vector(7 downto 0);
	signal DP_op2: std_logic_vector(7 downto 0);
	signal DP_res: std_logic_vector(7 downto 0);
	signal DP_zf: std_logic;

begin

	-- Controller Unit
	CU: CTRL1_GPR port map(
		CLK, RST, Start, Stop,
		ROM_re, ROM_adr, ROM_dout,
		RAM_rw, RAM_adr1, RAM_adr2, RAM_adrw, RAM_dwin, RAM_dout1, RAM_dout2,
		DP_en, DP_opcode, DP_op1, DP_op2, DP_res, DP_zf
	);
	
	-- ROM
	ROMC: MROM_GPR port map(ROM_re, ROM_adr, ROM_dout);
	
	-- RAM
	RAMC: MRAM_GPR port map(RAM_rw, RAM_adr1, RAM_adr2, RAM_adrw, RAM_dwin, RAM_dout1, RAM_dout2);
	
	-- DATA PATH
	DPC: DATA_PATH_GPR port map(DP_en, DP_opcode, DP_op1, DP_op2, DP_res, DP_zf);

end Behavioral;

