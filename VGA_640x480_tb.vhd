--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:22:22 01/22/2017
-- Design Name:   
-- Module Name:   D:/NAUKA/Xilinx/LAB12_VGA/VGA_640x480_tb.vhd
-- Project Name:  LAB12_VGA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_640x480
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
 
ENTITY VGA_640x480_tb IS
END VGA_640x480_tb;
 
ARCHITECTURE behavior OF VGA_640x480_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_640x480
    PORT(
         RGB : IN  std_logic_vector(2 downto 0);
         CLK : IN  std_logic;
         CLR : IN  std_logic;
         R : OUT  std_logic;
         G : OUT  std_logic;
         B : OUT  std_logic;
         HS : OUT  std_logic;
         VS : OUT  std_logic;
         X : OUT  std_logic_vector(9 downto 0);
         Y : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal RGB : std_logic_vector(2 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal CLR : std_logic := '0';

 	--Outputs
   signal R : std_logic;
   signal G : std_logic;
   signal B : std_logic;
   signal HS : std_logic;
   signal VS : std_logic;
   signal X : std_logic_vector(9 downto 0);
   signal Y : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_640x480 PORT MAP (
          RGB => RGB,
          CLK => CLK,
          CLR => CLR,
          R => R,
          G => G,
          B => B,
          HS => HS,
          VS => VS,
          X => X,
          Y => Y
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
		CLR <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		CLR <= '0';

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

   -- Color process definitions
   Color :process
   begin
      wait for 200 ns;
		for i in 0 to 100 loop
			RGB<="111";
			WAIT FOR 2*CLK_period;
		END LOOP;
--		for i in 0 to 100 loop
--			RGB<="101";
--			WAIT FOR 2*CLK_period;
--		END LOOP;
   end process;
END;
