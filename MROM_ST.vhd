----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:48:28 05/08/2018 
-- Design Name: 
-- Module Name:    MROM_ST - Behavioral 
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

entity MROM_ST is
    Port ( RE : in  STD_LOGIC;
           ADR : in  STD_LOGIC_VECTOR (4 downto 0);
           DOUT : out  STD_LOGIC_VECTOR (9 downto 0));
end MROM_ST;

architecture Behavioral of MROM_ST is

-- Instruction subtype
subtype inst is std_logic_vector(9 downto 0);

-- 2D array type
type tROM is array (0 to 31) of inst;

-- 2D ROM content init
-- PUSH    0000
-- POP     0001
-- PUSHIN  0010
-- POPIN   0011
-- ADD     0100
-- SUB     0101
-- REVERT  0110
-- JZ      0111
-- JMP     1000
-- HALT    1001
signal ROM: tROM := (
	"0000"&"000000", -- 00000 -- PUSH ADR_ZERO      -- TOP[n] = RAM[ADR_ZERO] = RAM[0] = 0
	"0001"&"000010", -- 00001 -- POP ADR_I          -- RAM[ADR_I] = ACC -- Init array index (index = 0)
	"0000"&"000010", -- 00010 -- PUSH ADR_I
	"0000"&"000011", -- 00011 -- PUSH ADR_LEN       -- TOP[n] = RAM[ADR_LEN] = RAM[3] = 5
	"0101"&"001000", -- 00100 -- SUB EMPTY_ADR      -- TOP[n] = TOP[n] - TOP[n-1]
	"0111"&"010010", -- 00101 -- JZ                 -- Jump to HALT if zf is set (end of array)
	"0000"&"000100", -- 00110 -- PUSH ADR_START     -- TOP[n] = RAM[ADR_START] = RAM[4] = 16 (address of a[0]) 
	"0000"&"000010", -- 00111 -- PUSH ADR_I
	"0100"&"001000", -- 01000 -- ADD EMPTY_ADR      -- TOP[n] = TOP[n] + TOP[n-1] (address of current a[i])
	"0001"&"000101", -- 01001 -- POP ADR_CUR        -- RAM[ADR_CUR] = TOP[n]
	"0000"&"000110", -- 01010 -- PUSH ADR_RES_START -- TOP[n] = RAM[ADR_RES_START] = RAM[6] = 24 (address of res[0])
	"0000"&"000010", -- 01011 -- PUSH ADR_I
	"0100"&"001000", -- 01100 -- ADD EMPTY_ADR      -- TOP[n] = TOP[n] + TOP[n-1] (address of current res[i])
	"0001"&"000111", -- 01101 -- POP ADR_RES_CUR    -- RAM[ADR_RES_CUR] = TOP[n]
	"0010"&"000101", -- 01110 -- PUSHIN ADR_CUR     -- TOP[n] = RAM[RAM[ADR_CUR]] = a[i]
	"0110"&"001000", -- 01111 -- REVERT EMPTY_ADR   -- Revert bits of a[i] which is located at TOP[n]
	"0011"&"000111", -- 10000 -- POPIN ADR_RES_CUR  -- RAM[RAM[ADR_RES_CUR]] = TOP[n] (store reverted value to res[i])
	"0000"&"000010", -- 10001 -- PUSH ADR_I         -- TOP[n] = RAM[ADR_I]
	"0000"&"000001", -- 10010 -- PUSH ADR_ONE
	"0100"&"001000", -- 10011 -- ADD EMPTY_ADR      -- TOP[n] = TOP[n] + 1
	"0001"&"000010", -- 10100 -- POP ADR_I          -- RAM[ADR_I] = TOP[n]
	"1000"&"000010", -- 10101 -- JMP                -- Jump to 00010
	"1001"&"000000", -- 10110 -- HALT               -- End of execution.
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

