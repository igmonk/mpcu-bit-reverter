--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:35:19 05/07/2018
-- Design Name:   
-- Module Name:   C:/Users/igor/Projects/mpcu_bit_reverter/MRAM_GPR_TB.vhd
-- Project Name:  mpcu_bit_reverter
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MRAM_GPR
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
 
ENTITY MRAM_GPR_TB IS
END MRAM_GPR_TB;
 
ARCHITECTURE behavior OF MRAM_GPR_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MRAM_GPR
    PORT(
         CLK : IN  std_logic;
         RW : IN  std_logic;
         ADR1 : IN  std_logic_vector(5 downto 0);
         ADR2 : IN  std_logic_vector(5 downto 0);
         ADRW : IN  std_logic_vector(5 downto 0);
         DINW : IN  std_logic_vector(7 downto 0);
         DOUT1 : OUT  std_logic_vector(7 downto 0);
         DOUT2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RW : std_logic := '0';
   signal ADR1 : std_logic_vector(5 downto 0) := (others => '0');
   signal ADR2 : std_logic_vector(5 downto 0) := (others => '0');
   signal ADRW : std_logic_vector(5 downto 0) := (others => '0');
   signal DINW : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal DOUT1 : std_logic_vector(7 downto 0);
   signal DOUT2 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MRAM_GPR PORT MAP (
          CLK => CLK,
          RW => RW,
          ADR1 => ADR1,
          ADR2 => ADR2,
          ADRW => ADRW,
          DINW => DINW,
          DOUT1 => DOUT1,
          DOUT2 => DOUT2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
		DINW <= "10101010";
		ADRW <= "001001";
		wait for CLK_period * 2;
		
		RW <= '1';
		ADR1 <= "000011";
		ADR2 <= "000100";
      wait;
   end process;

END;
