----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:46 03/04/2017 
-- Design Name: 
-- Module Name:    engine - Behavioral 
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

entity engine is
    Port ( Clk : in STD_LOGIC;
			  DI : in  STD_LOGIC_VECTOR (1 downto 0);
           D_Type : in  STD_LOGIC_VECTOR (1 downto 0);
           DI_Rdy : in  STD_LOGIC;
           X : in  STD_LOGIC_VECTOR (5 downto 0);
           Y : in  STD_LOGIC_VECTOR (5 downto 0);
			  pixelX : in  STD_LOGIC_VECTOR (9 downto 0);
           pixelY : in  STD_LOGIC_VECTOR (9 downto 0);
			  RGB : out  STD_LOGIC_VECTOR (2 downto 0);
			  outPointsA : out  STD_LOGIC_VECTOR (13 downto 0);
           outPointsB : out  STD_LOGIC_VECTOR (13 downto 0);
			  Start : out STD_LOGIC );
end engine;

architecture Behavioral of engine is

signal boardColor : STD_LOGIC_VECTOR(2 downto 0) := "010";
signal foodColor : STD_LOGIC_VECTOR(2 downto 0) := "011";
signal playerAColor : STD_LOGIC_VECTOR(2 downto 0) := "100";
signal playerBColor : STD_LOGIC_VECTOR(2 downto 0) := "001";

signal divider : unsigned(3 downto 0) := "1000";
type boardArray is array (0 to 63, 0 to 43) of STD_LOGIC_VECTOR(1 downto 0);
signal board : boardArray;

--:= (   ("00","00","00","00","00","00","00","00","00","00"),
--											("00","00","00","01","00","00","00","11","11","00"),
--											("00","00","00","01","00","00","00","00","00","00"),
--											("00","00","00","01","00","10","00","00","00","00"),
--											("00","00","00","01","00","10","00","00","00","00"),
--											("00","00","00","01","00","10","00","000","00","00"),
--											("00","00","00","01","00","10","00","00","00","00"),
--											("00","00","00","01","00","10","00","00","00","00"),
--											("00","00","00","00","00","00","00","00","00","00"),
--											("00","00","00","00","00","00","00","00","00","00")
--                                 
--                               );



begin

board(0,0) <= "00";
board(63,0) <= "01";
board(0,43) <= "10";
board(63,43) <= "11";
board(0,20) <= "00";
board(43,0) <= "01";
board(0,33) <= "10";
board(45,13) <= "11";
board(6,6) <= "00";
board(25,22) <= "01";
board(0,11) <= "10";
board(33,23) <= "11";
board(18,10) <= "10";
board(19,10) <= "10";
board(20,10) <= "10";
board(21,10) <= "10";

board(30,15) <= "10";
board(30,16) <= "10";
board(30,17) <= "10";
board(30,18) <= "10";


clock: process(Clk)
begin
-- dzielenie Clk o 16Hz przez divider 
end process;

game: process(pixelX,pixelY)
begin
-- zwraca kolor dla danego piksela, sprawdza czy dany ruch jest dozwolony (spr z tablica)
case board(to_integer(unsigned(X)),to_integer(unsigned(Y))) is
	when "00" => --nic
		RGB <= boardColor;
	when "01" => --jedzenie
		RGB <= foodColor;
	when "10" => --A
		RGB <= playerAColor;
	when "11" => --B
		RGB <= playerBColor;
	when others =>
		RGB <= "000";
end case;
end process;

end Behavioral;

