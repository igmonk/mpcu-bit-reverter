--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:38:26 05/06/2018
-- Design Name:   
-- Module Name:   C:/Users/igor/Projects/mpcu_bit_reverter/MRAM_TB.vhd
-- Project Name:  mpcu_bit_reverter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MRAM
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
 
ENTITY MRAM_TB IS
END MRAM_TB;
 
ARCHITECTURE behavior OF MRAM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MRAM
    PORT(
         RW : IN  std_logic;
         ADR : IN  std_logic_vector(5 downto 0);
         DIN : IN  std_logic_vector(7 downto 0);
         DOUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RW : std_logic := '0';
   signal ADR : std_logic_vector(5 downto 0) := (others => '0');
   signal DIN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DOUT : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MRAM PORT MAP (
          RW => RW,
          ADR => ADR,
          DIN => DIN,
          DOUT => DOUT
        );

   -- Clock process definitions
   --clock_process :process
   --begin
	--	clock <= '0';
	--	wait for clock_period/2;
	--	clock <= '1';
	--	wait for clock_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		
		RW <= '1'; -- Enter read mode
		wait for clock_period * 2;
		
		ADR <= "000000"; -- read ZERO
		wait for clock_period * 2;
		
		ADR <= "000001"; -- read ONE
		wait for clock_period * 2;
		
		ADR <= "010000"; -- read a[0]
		wait for clock_period * 2;
		
		RW <= '0'; -- Enter write mode
		wait for clock_period * 2;
		
		ADR <= "011000"; -- write to res[0]
		DIN <= "00001111";
		wait for clock_period * 2;
		
		RW <= '1'; -- Enter read mode
		ADR <= "011000"; -- read res[0]
		wait for clock_period * 2;

      wait;
   end process;

END;
