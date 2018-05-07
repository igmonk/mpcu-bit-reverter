--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:19:56 05/08/2018
-- Design Name:   
-- Module Name:   C:/Users/igor/Projects/mpcu_bit_reverter/MROM_ST_TB.vhd
-- Project Name:  mpcu_bit_reverter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MROM_ST
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
 
ENTITY MROM_ST_TB IS
END MROM_ST_TB;
 
ARCHITECTURE behavior OF MROM_ST_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MROM_ST
    PORT(
         RE : IN  std_logic;
         ADR : IN  std_logic_vector(4 downto 0);
         DOUT : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RE : std_logic := '0';
   signal ADR : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal DOUT : std_logic_vector(9 downto 0);
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MROM_ST PORT MAP (
          RE => RE,
          ADR => ADR,
          DOUT => DOUT
        );

   -- Clock process definitions
   clock_process :process
   begin
		RE <= '0';
		wait for clock_period/2;
		RE <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 
		
		-- insert stimulus here 
		
		RE <= '1'; -- read inst #0
		wait for clock_period * 2;
		
		ADR <= "00001"; -- inst #1
		wait for clock_period * 2;
		
		ADR <= "00010"; -- inst #2
		wait for clock_period * 2;
		
		ADR <= "00011"; -- inst #3
		wait for clock_period * 2;
		
		ADR <= "00100"; -- inst #4
		wait for clock_period * 2;
		
		ADR <= "00101"; -- inst #5
		wait for clock_period * 2;
		
		ADR <= "00110"; -- inst #6
		wait for clock_period * 2;
		
		ADR <= "00111"; -- inst #7
		wait for clock_period * 2;
		
		ADR <= "01000"; -- inst #8
		wait for clock_period * 2;
		
		ADR <= "01001"; -- inst #9
		wait for clock_period * 2;
		
		ADR <= "01010"; -- inst #10
		wait for clock_period * 2;
		
		ADR <= "01011"; -- inst #11
		wait for clock_period * 2;
		
		ADR <= "01100"; -- inst #12
		wait for clock_period * 2;
		
		ADR <= "01101"; -- inst #13
		wait for clock_period * 2;
		
		ADR <= "01110"; -- inst #14
		wait for clock_period * 2;
		
		ADR <= "01111"; -- inst #15
		wait for clock_period * 2;
		
		ADR <= "10000"; -- inst #16
		wait for clock_period * 2;
		
		ADR <= "10001"; -- inst #17
		wait for clock_period * 2;
		
		ADR <= "10010"; -- inst #18
		wait for clock_period * 2;
		
		ADR <= "10011"; -- inst #19
		wait for clock_period * 2;
		
		ADR <= "10100"; -- inst #20
		wait for clock_period * 2;
		
		ADR <= "10101"; -- inst #21
		wait for clock_period * 2;
		
		ADR <= "10110"; -- inst #22
		wait for clock_period * 2;
		
		ADR <= "10111"; -- inst #23
		wait for clock_period * 2;
		
		ADR <= "11000"; -- inst #24
		wait for clock_period * 2;
		
		ADR <= "11001"; -- inst #25
		wait for clock_period * 2;

      wait;
   end process;

END;
