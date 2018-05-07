--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:28:29 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/igor/Projects/mpcu_bit_reverter/DATA_PATH_GPR_TB.vhd
-- Project Name:  mpcu_bit_reverter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DATA_PATH_GPR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY DATA_PATH_GPR_TB IS
END DATA_PATH_GPR_TB;
 
ARCHITECTURE behavior OF DATA_PATH_GPR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DATA_PATH_GPR
    PORT(
         EN : IN  std_logic;
         OPCODE : IN  std_logic_vector(2 downto 0);
         OP1 : IN  std_logic_vector(7 downto 0);
         OP2 : IN  std_logic_vector(7 downto 0);
         RES : OUT  std_logic_vector(7 downto 0);
         ZF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal EN : std_logic := '0';
   signal OPCODE : std_logic_vector(2 downto 0) := (others => '0');
   signal OP1 : std_logic_vector(7 downto 0) := (others => '0');
   signal OP2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal RES : std_logic_vector(7 downto 0);
   signal ZF : std_logic;
   -- No clocks detected in port list. Replace EN below with 
   -- appropriate port name 
 
   constant EN_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DATA_PATH_GPR PORT MAP (
          EN => EN,
          OPCODE => OPCODE,
          OP1 => OP1,
          OP2 => OP2,
          RES => RES,
          ZF => ZF
        );

   -- Clock process definitions
   EN_process :process
   begin
		EN <= '0';
		wait for EN_period/2;
		EN <= '1';
		wait for EN_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for EN_period*10;

      -- insert stimulus here 
		
		OPCODE <= "000"; -- ADD
		OP1 <= "00000001";
		OP2 <= "00000001";
		wait for EN_period;
		
		OPCODE <= "000"; -- ADD
		OP1 <= "00000011";
		OP2 <= "00000001";
		wait for EN_period;
		
		OPCODE <= "001"; -- SUB
		OP1 <= "00000011";
		OP2 <= "00000001";
		wait for EN_period;
		
		OPCODE <= "010"; -- REVERT
		OP1 <= "01010101";
		OP2 <= "00000000";
		wait for EN_period;
		
		OPCODE <= "011"; -- COPYINTO
		OP1 <= "00001111";
		OP2 <= "00000000";
		wait for EN_period;
		
		OPCODE <= "100"; -- COPYTOIN
		OP1 <= "11110000";
		OP2 <= "00000000";
		wait for EN_period;

      wait;
   end process;

END;
