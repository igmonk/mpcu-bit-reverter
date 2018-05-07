----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:23 05/07/2018 
-- Design Name: 
-- Module Name:    MROM_GPR - Behavioral 
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

entity MROM_GPR is
    Port ( RE : in  STD_LOGIC;
           ADR : in  STD_LOGIC_VECTOR (3 downto 0); -- max 16 commands can be addressed
           DOUT : out  STD_LOGIC_VECTOR (20 downto 0));
end MROM_GPR;

architecture Behavioral of MROM_GPR is

-- Instruction subtype
subtype inst is std_logic_vector(20 downto 0);

-- 2D array type
type tROM is array (0 to 15) of inst;

-- 2D ROM content init
-- ADD      000
-- SUB      001
-- REVERT   010
-- COPYINTO 011
-- COPYTOIN 100
-- JZ       101
-- JMP      110
-- HALT     111
signal ROM: tROM := (
	"000"&"000000"&"000000"&"000010", -- 0000 -- ADD ADR_ZERO ADR_ZERO ADR_I
	"001"&"000011"&"000010"&"001001", -- 0001 -- SUM ADR_LEN ADR_I ADR_TMP_1 (maybe TMP1 is needless)
	"101"&"001010"&"000000"&"000000", -- 0010 -- Jump to HALT if zf is set (end of array)
	"000"&"000100"&"000010"&"000101", -- 0011 -- ADD ADR_START ADR_I ADR_CUR
	"000"&"000110"&"000010"&"000111", -- 0100 -- ADD ADR_RES_START ADR_I ADR_RES_CUR
	"011"&"000101"&"001000"&"001010", -- 0101 -- COPYINTO ADR_CUR EMPTY_ADR ADR_TMP_2
	"010"&"001010"&"001000"&"001010", -- 0110 -- REVERT ADR_TMP_2 EMPTY_ADR ADR_TMP_2
	"100"&"001010"&"000111"&"001000", -- 0111 -- COPYTOIN ADR_TMP_2 ADR_RES_CUR EMPTY_ADR
	"000"&"000010"&"000001"&"000010", -- 1000 -- ADD ADR_I ADR_ONE ADR_I
	"110"&"000001"&"000000"&"000000", -- 1001 -- Jump to 0001
	"111"&"000000"&"000000"&"000000", -- 1010 -- End of execution.
	others => "111"&"000000"&"000000"&"000000"
);

-- Selected instruction
signal data: inst;

begin

	-- Fetching of addressed instruction
	data <= ROM(CONV_INTEGER(ADR));
	
	ZBUFS: process(RE, data)
	begin
		if RE = '1' then
			DOUT <= data;
		else
			DOUT <= (others => 'Z');
		end if;
	end process;

end Behavioral;

