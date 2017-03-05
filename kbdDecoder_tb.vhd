--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:56:21 03/05/2017
-- Design Name:   
-- Module Name:   C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/kbdDecoder_tb.vhd
-- Project Name:  Snake
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: kbdDecoder
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
 
ENTITY kbdDecoder_tb IS
END kbdDecoder_tb;
 
ARCHITECTURE behavior OF kbdDecoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kbdDecoder
    PORT(
         DI : IN  std_logic_vector(7 downto 0);
         E0 : IN  std_logic;
         F0 : IN  std_logic;
         DI_Rdy : IN  std_logic;
         DO : OUT  std_logic_vector(1 downto 0);
         D_Type : OUT  std_logic_vector(1 downto 0);
         DO_Rdy : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DI : std_logic_vector(7 downto 0) := (others => '0');
   signal E0 : std_logic := '0';
   signal F0 : std_logic := '0';
   signal DI_Rdy : std_logic := '0';

 	--Outputs
   signal DO : std_logic_vector(1 downto 0);
   signal D_Type : std_logic_vector(1 downto 0);
   signal DO_Rdy : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kbdDecoder PORT MAP (
          DI => DI,
          E0 => E0,
          F0 => F0,
          DI_Rdy => DI_Rdy,
          DO => DO,
          D_Type => D_Type,
          DO_Rdy => DO_Rdy
        );

   -- Clock process definitions
 
 

   -- Stimulus process
   stim_proc: process
   begin		
      E0 <= '0';
		F0 <= '0';
      wait for 100 ns;	

	
		DI <= X"1D";  --move b up
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		DI <= X"1B";  --move b down
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		DI <= X"75";  --move a up 
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		DI <= X"6B";  --move a left 
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		DI <= X"2D"; --reset
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		DI <= X"29"; --space
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		
		DI <= X"14"; --random value
		DI_Rdy<='1'; wait for 20ns;
		DI_Rdy<='0'; wait for 40ns;
		
		
		
      -- insert stimulus here 

      wait;
   end process;

END;
