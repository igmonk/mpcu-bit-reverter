----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:32 05/06/2018 
-- Design Name: 
-- Module Name:    MROM_ACC - Behavioral 
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

entity MROM_ACC is
    Port ( 
           -- Read enabled
			  RE : in  STD_LOGIC;
			  
			  -- Instruction address (max 32 commands can be addressed)
			  ADR : in  STD_LOGIC_VECTOR (4 downto 0);
			  
			  -- Output instruction
           DOUT : out  STD_LOGIC_VECTOR (9 downto 0));
end MROM_ACC;

architecture Behavioral of MROM_ACC is

-- Instruction subtype
subtype inst is std_logic_vector(9 downto 0);

-- 2D array type
type tROM is array (0 to 31) of inst;

-- 2D ROM content init
-- LOAD    0000
-- STORE   0001
-- LOADIN  0010
-- STOREIN 0011
-- ADD     0100
-- SUB     0101
-- REVERT  0110
-- JZ      0111
-- JMP     1000
-- HALT    1001
signal ROM: tROM := (
	"0000"&"000000", -- 00000 -- LOAD ADR_ZERO       -- ACC = RAM[ADR_ZERO] = RAM[0] = 0
	"0001"&"000010", -- 00001 -- STORE ADR_I         -- RAM[ADR_I] = ACC -- Init array index (index = 0)
	"0000"&"000011", -- 00010 -- LOAD ADR_LEN        -- ACC = RAM[ADR_LEN] = RAM[3] = 5
	"0101"&"000010", -- 00011 -- SUB ADR_I           -- ACC = ACC - RAM[ADR_I]
	"0111"&"000000", -- 00100 -- JZ                  -- Jump to HALT if zf is set (end of array)
	"0000"&"000100", -- 00101 -- LOAD ADR_START      -- ACC = RAM[ADR_START] = RAM[4] = 16 (address of a[0]) 
	"0100"&"000010", -- 00110 -- ADD ADR_I           -- ACC = ACC + RAM[ADR_I] (address of current a[i])
	"0001"&"000101", -- 00111 -- STORE ADR_CUR       -- RAM[ADR_CUR] = ACC
	"0000"&"000110", -- 01000 -- LOAD ADR_RES_START  -- ACC = RAM[ADR_RES_START] = RAM[6] = 24 (address of res[0])
	"0100"&"000010", -- 01001 -- ADD ADR_I           -- ACC = ACC + RAM[ADR_I] (address of current res[i])
	"0001"&"000111", -- 01010 -- STORE ADR_RES_CUR   -- RAM[ADR_RES_CUR] = ACC
	"0010"&"000101", -- 01011 -- LOADIN ADR_RES_CUR  -- ACC = RAM[RAM[ADR_CUR]] = a[i]
	"0110"&"000000", -- 01100 -- REVERT              -- Revert bits of a[i]
	"0011"&"000111", -- 01101 -- STOREIN ADR_RES_CUR -- RAM[RAM[ADR_RES_CUR]] = ACC (store reverted value to res[i])
	"0000"&"000010", -- 01110 -- LOAD ADR_I          -- ACC = RAM[ADR_I]
	"0100"&"000001", -- 01111 -- ADD ADR_ONE         -- ACC = ACC + 1
	"0001"&"000010", -- 10000 -- STORE ADR_I         -- RAM[ADR_I] = ACC
	"1000"&"000000", -- 10001 -- JMP                 -- Jump to 00010
	"1001"&"000000", -- 10010 -- HALT                -- End of execution.
	"1111"&"111111", -- 10011
	"1111"&"111111", -- 10100
	"1111"&"111111", -- 10101
	"1111"&"111111", -- 10110
	"1111"&"111111", -- 10111
	"1111"&"111111", -- 11000
	"1111"&"111111", -- 11001
	"1111"&"111111", -- 11010
	"1111"&"111111", -- 11011
	"1111"&"111111", -- 11100
	"1111"&"111111", -- 11101
	"1111"&"111111", -- 11110
	"1111"&"111111"  -- 11111
);

-- Selected instruction
signal data: inst;

begin

	-- Fetching of addressed instruction
	data <= ROM(CONV_INTEGER(ADR));

	zbufs: process(RE, data)
	begin
		if RE = '1' then
			DOUT <= data;
		else
			DOUT <= (others => 'Z');
		end if;
	end process;

end Behavioral;

