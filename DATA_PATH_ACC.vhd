----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:12:05 05/06/2018 
-- Design Name: 
-- Module Name:    DATA_PATH_ACC - Behavioral 
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

entity DATA_PATH_ACC is
    Port ( 
           -- Enable
			  EN : in  STD_LOGIC;
			  
			  -- Operation code
			  OPCODE : in  STD_LOGIC_VECTOR (3 downto 0);
			  
			  -- Operand
           OP : in  STD_LOGIC_VECTOR (7 downto 0);
			  
			  -- Data Path output
           RES : out  STD_LOGIC_VECTOR (7 downto 0);
			  
			  -- Zero Flag
			  -- ZF is set to '1' when accumulator's value equals to zero
           ZF : out  STD_LOGIC);
end DATA_PATH_ACC;

architecture Behavioral of DATA_PATH_ACC is

-- Register-accumulator
signal ACCUM: std_logic_vector(7 downto 0);

-- Result of ADD operation
signal res_add: std_logic_vector(7 downto 0);

-- Result of SUB operation
signal res_sub: std_logic_vector(7 downto 0);

-- Result of REVERT operation
signal res_revert: std_logic_vector(7 downto 0);

-- Result of ZF
signal res_zf: std_logic;

-- Operation codes
constant LOAD: std_logic_vector(3 downto 0) := "0000";
constant LOADIN: std_logic_vector(3 downto 0) := "0010";
constant ADD: std_logic_vector(3 downto 0) := "0100";
constant SUB: std_logic_vector(3 downto 0) := "0101";
constant REVERT: std_logic_vector(3 downto 0) := "0110";

function reverse_vector (a: in std_logic_vector)
return std_logic_vector is
  variable result: std_logic_vector(a'RANGE);
  alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end;

begin

	-- Adder
	res_add <= CONV_STD_LOGIC_VECTOR(CONV_INTEGER(ACCUM) + CONV_INTEGER(OP), 8);
	
	-- Subtractor
	res_sub <= CONV_STD_LOGIC_VECTOR(CONV_INTEGER(ACCUM) - CONV_INTEGER(OP), 8);
	
	-- Reverter
	res_revert <= reverse_vector(ACCUM);
	
	-- Synchronized register-accumulator
	REGA: process(EN, OPCODE, OP, res_add, res_sub, res_revert)
	begin
		if rising_edge(EN) then
			case OPCODE is
				when LOAD | LOADIN => ACCUM <= OP;
				when ADD => ACCUM <= res_add;
				when SUB => ACCUM <= res_sub;
				when REVERT => ACCUM <= res_revert;
				when others => null;
			end case;
		end if;
	end process;
	
	RES <= ACCUM;
	
	-- ZF flag
	PZF: process(ACCUM)
	begin
		if ACCUM = (ACCUM'range => '0') then
			res_zf <= '1';
		else
			res_zf <= '0';
		end if;
	end process;
	
	ZF <= res_zf;

end Behavioral;

