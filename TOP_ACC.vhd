----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:43:00 05/07/2018 
-- Design Name: 
-- Module Name:    TOP_ACC - Behavioral 
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

entity TOP_ACC is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Start : in  STD_LOGIC;
           Stop : out  STD_LOGIC);
end TOP_ACC;

architecture Behavioral of TOP_ACC is

-- ROM_ACC component
component MROM_ACC is
	port(	RE: in std_logic;
			ADR: in std_logic_vector(4 downto 0);
			DOUT: out std_logic_vector(9 downto 0));
end component;

-- RAM component
component MRAM is
	port( RW: in std_logic;
			ADR: in std_logic_vector(5 downto 0);
			DIN: in std_logic_vector(7 downto 0);
			DOUT: out std_logic_vector(7 downto 0));
end component;

-- DATA_PATH_ACC component
component DATA_PATH_ACC is
	port(	EN: in std_logic;
			OPCODE: in std_logic_vector(3 downto 0);
			OP: in std_logic_vector(7 downto 0);
			RES: out std_logic_vector(7 downto 0);
			ZF: out STD_LOGIC);
end component;

-- FSM Controller component
component CTRL1_ACC is
	port(	CLK: in STD_LOGIC;
         RST: in STD_LOGIC;
         Start: in STD_LOGIC;
			
         Stop: out STD_LOGIC;
			
         ROM_re: out STD_LOGIC;
         ROM_adr: out STD_LOGIC_VECTOR (4 downto 0);
         ROM_dout: in STD_LOGIC_VECTOR (9 downto 0);
			 
         RAM_rw: out STD_LOGIC;
         RAM_adr: out STD_LOGIC_VECTOR (5 downto 0);
         RAM_din: out STD_LOGIC_VECTOR (7 downto 0);
         RAM_dout: in STD_LOGIC_VECTOR (7 downto 0);
			
			DP_en: out STD_LOGIC;
			DP_opcode: out STD_LOGIC_VECTOR (3 downto 0);
         DP_op: out STD_LOGIC_VECTOR (7 downto 0);
         DP_res: in STD_LOGIC_VECTOR (7 downto 0);
			DP_zf: in STD_LOGIC);
end component;

-- ROM interconnection signals
signal ROM_re: std_logic;
signal ROM_adr: std_logic_vector(4 downto 0);
signal ROM_dout: std_logic_vector(9 downto 0);

-- RAM interconnection signals
signal RAM_rw: std_logic;
signal RAM_adr: std_logic_vector(5 downto 0);
signal RAM_din: std_logic_vector(7 downto 0);
signal RAM_dout: std_logic_vector(7 downto 0);

-- Data Path interconnection signals
signal DP_en: std_logic;
signal DP_opcode: std_logic_vector(3 downto 0);
signal DP_op: std_logic_vector(7 downto 0);
signal DP_res: std_logic_vector(7 downto 0);
signal DP_zf: std_logic;

begin

	-- Controller Unit
	CU: CTRL1_ACC port map(
		CLK, RST, Start, Stop,
		ROM_re, ROM_adr, ROM_dout,
		RAM_rw, RAM_adr, RAM_din, RAM_dout,
		DP_en, DP_opcode, DP_op, DP_res, DP_zf
	);
	
	-- ROM
	ROMC: MROM_ACC port map(ROM_re, ROM_adr, ROM_dout);
	
	-- RAM
	RAMC: MRAM port map(RAM_rw, RAM_adr, RAM_din, RAM_dout);
	
	-- DATA PATH
	DPC: DATA_PATH_ACC port map(DP_en, DP_opcode, DP_op, DP_res, DP_zf);

end Behavioral;

