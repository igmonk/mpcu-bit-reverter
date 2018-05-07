----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:02:38 05/07/2018 
-- Design Name: 
-- Module Name:    DATA_PATH_GPR - Behavioral 
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

entity DATA_PATH_GPR is
    Port ( EN : in  STD_LOGIC;
           OPCODE : in  STD_LOGIC_VECTOR (2 downto 0);
           OP1 : in  STD_LOGIC_VECTOR (7 downto 0);
           OP2 : in  STD_LOGIC_VECTOR (7 downto 0);
           RES : out  STD_LOGIC_VECTOR (7 downto 0);
           ZF : out  STD_LOGIC);
end DATA_PATH_GPR;

architecture Behavioral of DATA_PATH_GPR is

-- GPR data path result
signal res_gpr: std_logic_vector(7 downto 0);

signal res_add: std_logic_vector(7 downto 0);
signal res_sub: std_logic_vector(7 downto 0);
signal res_revert: std_logic_vector(7 downto 0);
signal res_copy: std_logic_vector(7 downto 0);
signal res_zf: std_logic;

-- Operation codes
constant ADD: std_logic_vector(2 downto 0) := "000";
constant SUB: std_logic_vector(2 downto 0) := "001";
constant REVERT: std_logic_vector(2 downto 0) := "010";
constant COPYINTO: std_logic_vector(2 downto 0) := "011";
constant COPYTOIN: std_logic_vector(2 downto 0) := "100";

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
	res_add <= CONV_STD_LOGIC_VECTOR(CONV_INTEGER(OP1) + CONV_INTEGER(OP2), 8);
	
	-- Subtractor
	res_sub <= CONV_STD_LOGIC_VECTOR(CONV_INTEGER(OP1) - CONV_INTEGER(OP2), 8);
	
	-- Reverter
	res_revert <= reverse_vector(OP1);
	
	-- Copy
	res_copy <= OP1;
	
	-- Synchronized register-accumulator
	REGA: process(EN, OPCODE, res_add, res_sub, res_revert, res_copy)
	begin
		if rising_edge(EN) then
			case OPCODE is
				when ADD => res_gpr <= res_add;
				when SUB => res_gpr <= res_sub;
				when REVERT => res_gpr <= res_revert;
				when COPYINTO | COPYTOIN => res_gpr <= res_copy;
				when others => null;
			end case;
		end if;
	end process;
	
	RES <= res_gpr;
	
	-- ZF flag
	PZF: process(res_gpr)
	begin
		if res_gpr = (res_gpr'range => '0') then
			res_zf <= '1';
		else
			res_zf <= '0';
		end if;
	end process;
	
	ZF <= res_zf;

end Behavioral;

