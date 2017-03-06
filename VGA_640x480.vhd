----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:58 01/21/2017 
-- Design Name: 
-- Module Name:    VGA_640x480 - Behavioral 
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

entity VGA_640x480 is
    Port ( RGB : in  STD_LOGIC_VECTOR (2 downto 0);
           CLK : in  STD_LOGIC;
           CLR : in  STD_LOGIC;
           R : out  STD_LOGIC;
           G : out  STD_LOGIC;
           B : out  STD_LOGIC;
           HS : out  STD_LOGIC;
           VS : out  STD_LOGIC;
           X : out  std_logic_vector(5 downto 0);
           Y : out  std_logic_vector(5 downto 0);
			  pixelX : out  std_logic_vector(9 downto 0);
           pixelY : out  std_logic_vector(9 downto 0));
end VGA_640x480;

architecture Behavioral of VGA_640x480 is

signal Clock : STD_LOGIC;
signal ver : Integer range 0 to 1023;
signal hor : Integer range 0 to 1023;
signal fieldX : integer range 0 to 63;
signal fieldY : integer range 0 to 63;



--definicja tablicy do przechowywania znaków
type signTable is array (0 to 9, 0 to 9) of STD_LOGIC;
--definicja znaków
constant letterP : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','0','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','1','1','1','0','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
--constant letterL : signTable :=
--constant letterE : signTable :=
--constant letterY : signTable :=
--constant letterR : signTable :=
--constant letterA : signTable :=
--constant letterB : signTable :=
--
--constant colon : signTable :=
--
--constant number0 : signTable :=
--constant number1 : signTable :=
--constant number2 : signTable :=
--constant number3 : signTable :=
--constant number4 : signTable :=
--constant number5 : signTable :=
--constant number6 : signTable :=






--proces odpowiedzialny za dzielenie zegara
begin
Cloc: process (CLK, CLR)
begin
	if CLR = '1' then
		Clock <= '0';
   elsif rising_edge( Clk ) then
		Clock <= not Clock;
   end if;
end process;


--proces zajmujacy sie ustalaniem polozenia plamki
liczniki: process(Clock, CLR)
variable tempX : integer range 0 to 10;
variable tempY : integer range 0 to 10;
begin
--wait until Clock = '1';
	if CLR = '1' then
		hor <= 0;
		ver <= 0;
		fieldX <= 0;
		fieldY <= 0;
		tempX := 0;
		tempY := 0;
	elsif rising_edge(Clock) then
  -- inkrementowanie liczników
      if  hor < 799  then --800
		  if hor >= 144 and hor < 784 then
		  tempX := tempX +1;
				if tempX = 10 then 
					tempX := 0;
					fieldX <= fieldX + 1;
				end if;
		  end if;
        hor <= hor + 1;
      else
		  fieldX <=0;
        hor <= 0;
		  
        if ver < 520  then --521
				if ver >=31 and ver <511 then
					tempY := tempY + 1;
					if tempY = 10 then
						tempY :=0;
						fieldY <= fieldY +1;
					end if;
				end if;
           ver <=  ver + 1;
        else
           ver <= 0;
		  end if;
      end if;
		
		--jezeli doszed³em do do³u ekranu, na którym ma byæ pasek, to nadpisujê sygna³, zanim ten siê zmieni
			if ver > 470 then
			fieldY <= 0;
			fieldX <= 0;
			end if;
	end if;
--	ver <= vertical;
--	hor <= horizontal;
end process;

--proces, ktory na podstawie polozenia plamki, steruje sygnalami synchronizacji
synh: process(Clock, CLR)
begin
	if CLR = '1' then
		HS <= '1';
		VS <= '1';
	elsif rising_edge(Clock) then
  -- define H pulse
      if  hor < 96  then --656 752
        HS <= '0';
      else
        HS <= '1';
      end if;
  -- define V pulse
      if  ver < 2  then --490 492
        VS <= '0';
      else
        VS <= '1';
		end if;
	end if;
end process;

-- proces, który nadaje wartosci x i y, oraz ustala kolor akt. plamki
color: process(Clock, CLR)
variable indexCol : integer range 0 to 10;
variable indexRow : integer range 0 to 10;
variable tempHigh : integer range 0 to 1024; -- pomaga okreslic, czy przesunelismy sie w dol na ekranie
begin
	if CLR = '1' then
      R <= '0';
      G <= '0';
      B <= '0';
		tempHigh := 480;
	elsif rising_edge(Clock) then
      if  hor >= 144 and hor < 784 and ver >=31 and ver <511 then
			if ver > 470 then --fragment ekranu do wyswietlania pkt i czasu
			
				if (ver >= 480 and ver <= 489) then --literki na tym samym poziomie
				
					if (hor >=154 and hor <= 163) then --w ró¿nym miejscu horyzontalnie najpierw P
						R <= letterP(indexRow,indexCol);
						G <= letterP(indexRow,indexCol);
						B <= letterP(indexRow,indexCol);
						indexCol := indexCol + 1;
					--elsif ...
					
					if ver /= tempHigh then
						tempHigh := ver;
						indexRow := indexRow + 1;
					end if;	
					end if;
				else
					R <= '0';
					G <= '0';
					B <= '0';
				end if;
				
				if indexCol = 10 then
					indexCol := 0;
				end if;
				
				if indexRow = 10 then
					indexRow := 0;
				end if;
				
			else --rysuj to co podesle engine
				X <= std_logic_vector(to_unsigned(fieldX,6));
				Y <= std_logic_vector(to_unsigned(fieldY,6));
				pixelX <= std_logic_vector(to_unsigned(hor-144,10));
				pixelY <= std_logic_vector(to_unsigned(ver-31,10));
				R <= RGB(0);
				G <= RGB(1);
				B <= RGB(2);
			end if;
				pixelX <= std_logic_vector(to_unsigned(hor-144,10));
				pixelY <= std_logic_vector(to_unsigned(ver-31,10));
      else
			tempHigh := 480;
         X <= "000000";
         Y <= "000000";
         R <= '0';
         G <= '0';
         B <= '0';
		end if;
	end if;
end process;
--RGB przepisania 


end Behavioral;

