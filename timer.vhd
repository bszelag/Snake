----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:57 03/04/2017 
-- Design Name: 
-- Module Name:    timer - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity timer is
    Port ( Start : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Sec : out  STD_LOGIC_VECTOR (5 downto 0);
			  Clk16Hz_Out : out STD_LOGIC;
           Min : out  STD_LOGIC_VECTOR (5 downto 0));
			  
end timer;

architecture Behavioral of timer is


signal divisior : unsigned(24 downto 0);
signal divisior2 : unsigned(3 downto 0);
signal Clock16Hz	 : STD_LOGIC := '0';
signal Clock1Hz	 : STD_LOGIC := '0';


begin

cloc16Hz: process (Clk, Start)
begin

	if Start = '1' then
		
		Clock16Hz <= '0';
		divisior <= (others => '0');
		
	elsif rising_edge(Clk) then
	
		if divisior = X"17D784" then  --17D7840 to czas w hex po³owy okresu sygnalu 1Hz
			divisior   <= (others => '0');
			Clock16Hz   <= not Clock16Hz;
		else
			divisior <= divisior + "1";
		end if;

	end if;
end process;

	Clk16Hz_Out <= Clock16Hz;

cloc1Hz: process (Clock16Hz, Start)
begin

	if Start = '1' then
	
		Clock1Hz <= '0';
		divisior2 <= (others => '0');
		
	elsif rising_edge(Clock16Hz) then
	
		if divisior2 = X"8" then  --17D7840 to czas w hex po³owy okresu sygnalu 1Hz
			divisior2   <= (others => '0');
			Clock1Hz   <= not Clock1Hz;
		else
			divisior2 <= divisior2 + "1";
		end if;

	end if;
end process;


proc: process (Clock1Hz, Start)
variable seconds  : Integer range 0 to 60;
variable minutes  : Integer range 0 to 60;
begin
	if Start = '1' then
		seconds := 0;
		minutes := 0;
   elsif rising_edge(Clock1Hz) then
	
		
		seconds := seconds +1;
		
		if seconds = 60 then --przypisanie do jednego sygna³u powinno nastepowaæ tylko raz, st¹d dziwnie skonstruwany warunek (mo¿na te¿ u¿yæ zmiennych)
			seconds := 0;
			minutes := minutes+1;
		end if;
		
		if minutes = 60 then
			minutes := 0;
		end if;
		

	Min <= std_logic_vector(to_unsigned(minutes,6));
	Sec <= std_logic_vector(to_unsigned(seconds,6));
		
	end if;
end process;



end Behavioral;

