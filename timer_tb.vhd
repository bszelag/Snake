--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:15:29 03/04/2017
-- Design Name:   
-- Module Name:   C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/timer_tb.vhd
-- Project Name:  Snake
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: timer
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
 
ENTITY timer_tb IS
END timer_tb;
 
ARCHITECTURE behavior OF timer_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT timer
    PORT(
         Start : IN  std_logic;
         Clk : IN  std_logic;
         Sec : OUT  std_logic_vector(5 downto 0);
			Clk16Hz_Out : OUT std_logic;
         Min : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Start : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Sec : std_logic_vector(5 downto 0);
   signal Min : std_logic_vector(5 downto 0);
	signal Clk16Hz_Out :  std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: timer PORT MAP (
          Start => Start,
          Clk => Clk,
          Sec => Sec,
			 Clk16Hz_Out => Clk16Hz_Out,
          Min => Min
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	
      wait for Clk_period*10;
		
		Start<='1'; wait for 20ns;
		Start<='0';

      -- insert stimulus here 

      wait;
   end process;

END;
