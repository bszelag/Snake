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
			  PointsA : in STD_LOGIC_VECTOR (13 downto 0);
			  PointsB : in STD_LOGIC_VECTOR (13 downto 0);
			  Sec : in STD_LOGIC_VECTOR (5 downto 0);
			  Min : in STD_LOGIC_VECTOR (5 downto 0);
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



--definicja tablicy do przechowywania znak�w
type signTable is array (0 to 9, 0 to 9) of STD_LOGIC;
--definicja znak�w
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
											
constant letterL : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','0','0','0','0','0','0'),
											('0','0','1','1','1','1','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterE : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','0','0','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterY : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','1','1','0','0','1','1','0','0'),
											('0','0','1','1','0','0','1','1','0','0'),
											('0','0','1','1','0','0','1','1','0','0'),
											('0','0','0','1','1','1','1','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterR : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','1','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','1','1','1','0','0'),
											('0','1','1','1','1','1','0','0','0','0'),
											('0','1','1','0','1','1','1','0','0','0'),
											('0','1','1','0','0','1','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
											
											
constant letterA : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','1','1','1','0','0','0','0'),
											('0','0','1','1','0','1','1','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
											
constant letterB : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','1','1','1','1','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','1','1','1','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','1','1','1','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterT : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','1','1','1','1','1','1','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterI : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','1','1','1','1','1','1','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','0','0','1','1','0','0','0','0'),
											('0','0','1','1','1','1','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterM : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','0','1','1','1','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','1','1','0','1','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterU : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','0','1','1','1','1','1','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterO : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','0','1','1','1','1','1','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','0','1','1','1','1','1','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));

constant letterN : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','1','1','1','0','0','1','1','0','0'),
											('0','1','1','1','1','0','1','1','0','0'),
											('0','1','1','1','1','1','1','1','0','0'),
											('0','1','1','0','1','1','1','1','0','0'),
											('0','1','1','0','0','1','1','1','0','0'),
											('0','1','1','0','0','0','1','1','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
											
constant letterD : signTable :=( ('0','0','0','0','0','0','0','0','0','0'),
											('0','1','1','1','1','0','0','0','0','0'),
											('0','1','1','0','1','1','0','0','0','0'),
											('0','1','1','0','0','1','1','0','0','0'),
											('0','1','1','0','0','1','1','0','0','0'),
											('0','1','1','0','0','1','1','0','0','0'),
											('0','1','1','0','1','1','0','0','0','0'),
											('0','1','1','1','1','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'),
											('0','0','0','0','0','0','0','0','0','0'));
----------------------------------------------------------------------------------
constant colon : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										('0','0','0','0','0','0','0','0','0','0'),
										('0','0','0','0','1','1','0','0','0','0'),
										('0','0','0','0','1','1','0','0','0','0'),
										('0','0','0','0','0','0','0','0','0','0'),
										('0','0','0','0','1','1','0','0','0','0'),
										('0','0','0','0','1','1','0','0','0','0'),
										('0','0','0','0','0','0','0','0','0','0'),
										('0','0','0','0','0','0','0','0','0','0'),
										('0','0','0','0','0','0','0','0','0','0'));




----------------------------------------------------------------------------------

constant number0 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','1','1','1','0','0','0','0'),
										  ('0','0','1','0','0','1','1','0','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
									     ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','1','1','0','0','1','0','0','0'),
										  ('0','0','0','1','1','1','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));


constant number1 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
										  ('0','0','0','1','1','1','0','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
									     ('0','0','0','0','1','1','0','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
										  ('0','0','1','1','1','1','1','1','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));
										  
constant number2 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','0','0','0','1','1','1','0','0'),
										  ('0','0','0','1','1','1','1','0','0','0'),
									     ('0','0','1','1','1','1','0','0','0','0'),
										  ('0','1','1','1','0','0','0','0','0','0'),
										  ('0','1','1','1','1','1','1','1','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));
										  
constant number3 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','1','1','1','1','1','1','0','0'),
										  ('0','0','0','0','0','1','1','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
										  ('0','0','0','1','1','1','1','0','0','0'),
									     ('0','0','0','0','0','0','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));

constant number4 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','1','1','1','0','0','0'),
										  ('0','0','0','1','1','1','1','0','0','0'),
										  ('0','0','1','1','0','1','1','0','0','0'),
										  ('0','1','1','0','0','1','1','0','0','0'),
									     ('0','1','1','1','1','1','1','1','0','0'),
										  ('0','0','0','0','0','1','1','0','0','0'),
										  ('0','0','0','0','0','1','1','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));

constant number5 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','1','1','1','1','1','1','0','0','0'),
										  ('0','1','1','0','0','0','0','0','0','0'),
										  ('0','1','1','1','1','1','1','0','0','0'),
										  ('0','0','0','0','0','0','1','1','0','0'),
									     ('0','0','0','0','0','0','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));

constant number6 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','1','1','1','1','0','0','0'),
										  ('0','0','1','1','0','0','0','0','0','0'),
										  ('0','1','1','0','0','0','0','0','0','0'),
										  ('0','1','1','1','1','1','1','0','0','0'),
									     ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));
										  										  
constant number7 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','1','1','1','1','1','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','0','0','0','1','1','0','0','0'),
										  ('0','0','0','0','1','1','0','0','0','0'),
									     ('0','0','0','1','1','0','0','0','0','0'),
										  ('0','0','0','1','1','0','0','0','0','0'),
										  ('0','0','0','1','1','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));
										  
constant number8 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','1','1','1','1','0','0','0','0'),
										  ('0','1','1','0','0','0','1','0','0','0'),
										  ('0','1','1','1','0','0','1','0','0','0'),
										  ('0','0','1','1','1','1','0','0','0','0'),
									     ('0','1','0','0','1','1','1','1','0','0'),
										  ('0','1','0','0','0','0','1','1','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));
										  
constant number9 : signTable :=(('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','1','1','1','1','1','0','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','1','1','0','0','0','1','1','0','0'),
										  ('0','0','1','1','1','1','1','1','0','0'),
									     ('0','0','0','0','0','0','1','1','0','0'),
										  ('0','0','0','0','0','1','1','0','0','0'),
										  ('0','0','1','1','1','1','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'),
										  ('0','0','0','0','0','0','0','0','0','0'));





--procedury i funkcje

--funkcja licz�ca div1000
procedure dive_1000 (variable num: in integer; variable ret: out integer) is
 begin
    if num < 1000  then
        ret := 0;
    elsif num < 2000 then
         ret := 1;
	 elsif num < 3000 then
		   ret := 2;
	 elsif num < 4000 then
		   ret:= 3;
	 elsif num < 5000 then
		   ret := 4;
	 elsif num < 6000 then
		   ret := 5;
	 elsif num < 7000 then
	      ret := 6;
	 elsif num < 8000 then
	     ret := 7;
	 elsif num < 9000 then
	     ret := 8;
	 else 
	     ret := 9;
    end if;  
 end dive_1000;
 



--funkcja licz�ca div100
procedure dive_100 (variable num: in integer; variable ret: out integer) is
 begin
    if num < 100  then
       ret := 0;
    elsif num < 200 then
        ret := 1;
	 elsif num < 300 then
		 ret := 2;
	 elsif num < 400 then
		ret := 3;
	 elsif num < 500 then
		 ret := 4;
	 elsif num < 600 then
		 ret := 5;
	 elsif num < 700 then
	  ret := 6;
	 elsif num < 800 then
	    ret := 7;
	 elsif num < 900 then
	   ret := 8;
	 else 
	   ret := 9;
    end if;  
 end dive_100;
 
--funkcja licz�ca div10
procedure dive_10 (variable num: in integer; variable ret: out integer) is
 begin
   if num < 10 then
     ret := 0;
   elsif num < 20 then
     ret := 1;
   elsif num < 30 then
     ret := 2;
   elsif num < 40 then
     ret := 3;
   elsif num < 50 then
     ret := 4;
   elsif num < 60 then
     ret := 5;
   elsif num < 70 then
    ret := 6;
   elsif num < 80 then
    ret := 7;
   elsif num < 90 then
     ret := 8;
   else 
		 ret := 9;
	end if;
 end dive_10;

procedure drawPoints (
signal pointsIN : in STD_LOGIC_VECTOR (13 downto 0);
signal R : out  STD_LOGIC;
signal G : out  STD_LOGIC;
signal B : out  STD_LOGIC) is
variable points : Integer range 0 to 9999;
variable points_1000 : Integer range 0 to 9;
variable points_100 : Integer range 0 to 9;
variable points_10 : Integer range 0 to 9;
variable points_1 : Integer range 0 to 9;
begin

points := to_integer(unsigned(pointsIN));
dive_1000(points,points_1000);
points := points-points_1000*1000;
dive_100(points,points_100);
points := points-points_100*100;
dive_10(points,points_10);
points := points - points_10*10;

if (hor >= 274 and hor <= 283) then -- 1000
	case points_1000 is
		when 0 =>
			R <= number0(ver-480,hor-274);
			G <= number0(ver-480,hor-274);
			B <= number0(ver-480,hor-274);
		when 1 =>
			R <= number1(ver-480,hor-274);
			G <= number1(ver-480,hor-274);
			B <= number1(ver-480,hor-274);
		when 2 =>
			R <= number2(ver-480,hor-274);
			G <= number2(ver-480,hor-274);
			B <= number2(ver-480,hor-274);
		when 3 =>
			R <= number3(ver-480,hor-274);
			G <= number3(ver-480,hor-274);
			B <= number3(ver-480,hor-274);
		when 4 =>
			R <= number4(ver-480,hor-274);
			G <= number4(ver-480,hor-274);
			B <= number4(ver-480,hor-274);
		when 5 =>
			R <= number5(ver-480,hor-274);
			G <= number5(ver-480,hor-274);
			B <= number5(ver-480,hor-274);
		when 6 =>
			R <= number6(ver-480,hor-274);
			G <= number6(ver-480,hor-274);
			B <= number6(ver-480,hor-274);
		when 7 =>
			R <= number7(ver-480,hor-274);
			G <= number7(ver-480,hor-274);
			B <= number7(ver-480,hor-274);
		when 8 =>
			R <= number8(ver-480,hor-274);
			G <= number8(ver-480,hor-274);
			B <= number8(ver-480,hor-274);
		when 9 =>
			R <= number9(ver-480,hor-274);
			G <= number9(ver-480,hor-274);
			B <= number9(ver-480,hor-274);
		when OTHERS =>
			R <= '0';
			G <= '0';
			B <= '0';	
	end case;
			
elsif (hor >= 284 and hor <= 293) then --100
	case points_100 is
		when 0 =>
			R <= number0(ver-480,hor-284);
			G <= number0(ver-480,hor-284);
			B <= number0(ver-480,hor-284);
		when 1 =>
			R <= number1(ver-480,hor-284);
			G <= number1(ver-480,hor-284);
			B <= number1(ver-480,hor-284);
		when 2 =>
			R <= number2(ver-480,hor-284);
			G <= number2(ver-480,hor-284);
			B <= number2(ver-480,hor-284);
		when 3 =>
			R <= number3(ver-480,hor-284);
			G <= number3(ver-480,hor-284);
			B <= number3(ver-480,hor-284);
		when 4 =>
			R <= number4(ver-480,hor-284);
			G <= number4(ver-480,hor-284);
			B <= number4(ver-480,hor-284);
		when 5 =>
			R <= number5(ver-480,hor-284);
			G <= number5(ver-480,hor-284);
			B <= number5(ver-480,hor-284);
		when 6 =>
			R <= number6(ver-480,hor-284);
			G <= number6(ver-480,hor-284);
			B <= number6(ver-480,hor-284);
		when 7 =>
			R <= number7(ver-480,hor-284);
			G <= number7(ver-480,hor-284);
			B <= number7(ver-480,hor-284);
		when 8 =>
			R <= number8(ver-480,hor-284);
			G <= number8(ver-480,hor-284);
			B <= number8(ver-480,hor-284);
		when 9 =>
			R <= number9(ver-480,hor-284);
			G <= number9(ver-480,hor-284);
			B <= number9(ver-480,hor-284);
		when OTHERS =>
			R <= '0';
			G <= '0';
			B <= '0';	
	end case;
			

elsif (hor >= 294 and hor <= 303) then --10
	case points_10 is
		when 0 =>
			R <= number0(ver-480,hor-294);
			G <= number0(ver-480,hor-294);
			B <= number0(ver-480,hor-294);
		when 1 =>
			R <= number1(ver-480,hor-294);
			G <= number1(ver-480,hor-294);
			B <= number1(ver-480,hor-294);
		when 2 =>
			R <= number2(ver-480,hor-294);
			G <= number2(ver-480,hor-294);
			B <= number2(ver-480,hor-294);
		when 3 =>
			R <= number3(ver-480,hor-294);
			G <= number3(ver-480,hor-294);
			B <= number3(ver-480,hor-294);
		when 4 =>
			R <= number4(ver-480,hor-294);
			G <= number4(ver-480,hor-294);
			B <= number4(ver-480,hor-294);
		when 5 =>
			R <= number5(ver-480,hor-294);
			G <= number5(ver-480,hor-294);
			B <= number5(ver-480,hor-294);
		when 6 =>
			R <= number6(ver-480,hor-294);
			G <= number6(ver-480,hor-294);
			B <= number6(ver-480,hor-294);
		when 7 =>
			R <= number7(ver-480,hor-294);
			G <= number7(ver-480,hor-294);
			B <= number7(ver-480,hor-294);
		when 8 =>
			R <= number8(ver-480,hor-294);
			G <= number8(ver-480,hor-294);
			B <= number8(ver-480,hor-294);
		when 9 =>
			R <= number9(ver-480,hor-294);
			G <= number9(ver-480,hor-294);
			B <= number9(ver-480,hor-294);
		when OTHERS =>
			R <= '0';
			G <= '0';
			B <= '0';	
	end case;
			
else -- 1

	case points_1 is
		when 0 =>
			R <= number0(ver-480,hor-304);
			G <= number0(ver-480,hor-304);
			B <= number0(ver-480,hor-304);
		when 1 =>
			R <= number1(ver-480,hor-304);
			G <= number1(ver-480,hor-304);
			B <= number1(ver-480,hor-304);
		when 2 =>
			R <= number2(ver-480,hor-304);
			G <= number2(ver-480,hor-304);
			B <= number2(ver-480,hor-304);
		when 3 =>
			R <= number3(ver-480,hor-304);
			G <= number3(ver-480,hor-304);
			B <= number3(ver-480,hor-304);
		when 4 =>
			R <= number4(ver-480,hor-304);
			G <= number4(ver-480,hor-304);
			B <= number4(ver-480,hor-304);
		when 5 =>
			R <= number5(ver-480,hor-304);
			G <= number5(ver-480,hor-304);
			B <= number5(ver-480,hor-304);
		when 6 =>
			R <= number6(ver-480,hor-304);
			G <= number6(ver-480,hor-304);
			B <= number6(ver-480,hor-304);
		when 7 =>
			R <= number7(ver-480,hor-304);
			G <= number7(ver-480,hor-304);
			B <= number7(ver-480,hor-304);
		when 8 =>
			R <= number8(ver-480,hor-304);
			G <= number8(ver-480,hor-304);
			B <= number8(ver-480,hor-304);
		when 9 =>
			R <= number9(ver-480,hor-304);
			G <= number9(ver-480,hor-304);
			B <= number9(ver-480,hor-304);
		when OTHERS =>
			R <= '0';
			G <= '0';
			B <= '0';	
	end case;
end if;
end drawPoints;


procedure drawTime 
(signal timeIN : in STD_LOGIC_VECTOR (5 downto 0);
constant flagMin : in STD_LOGIC;
signal R : out STD_LOGIC;
signal G : out STD_LOGIC; 
signal B : out STD_LOGIC) is 
variable pos : Integer range 0 to 1000;
variable valTime : Integer range 0 to 60;
variable valTime10 : Integer range 0 to 10;
begin
valTime := to_integer(unsigned(timeIN));
dive_10(valTime,valTime10);
valTime := valTime - valTime10*10;

if flagMin = '1' then
pos := 704;
else
pos := 734;
end if;

if (hor < pos + 10) then
		case valTime10 is
			when 0 =>
				R <= number0(ver-480,hor-pos);
				G <= number0(ver-480,hor-pos);
				B <= number0(ver-480,hor-pos);
			when 1 =>
				R <= number1(ver-480,hor-pos);
				G <= number1(ver-480,hor-pos);
				B <= number1(ver-480,hor-pos);
			when 2 =>
				R <= number2(ver-480,hor-pos);
				G <= number2(ver-480,hor-pos);
				B <= number2(ver-480,hor-pos);
			when 3 =>
				R <= number3(ver-480,hor-pos);
				G <= number3(ver-480,hor-pos);
				B <= number3(ver-480,hor-pos);
			when 4 =>
				R <= number4(ver-480,hor-pos);
				G <= number4(ver-480,hor-pos);
				B <= number4(ver-480,hor-pos);
			when 5 =>
				R <= number5(ver-480,hor-pos);
				G <= number5(ver-480,hor-pos);
				B <= number5(ver-480,hor-pos);
         when 6 =>
				R <= number6(ver-480,hor-pos);
				G <= number6(ver-480,hor-pos);
				B <= number6(ver-480,hor-pos);
         when 7 =>
				R <= number7(ver-480,hor-pos);
				G <= number7(ver-480,hor-pos);
				B <= number7(ver-480,hor-pos);
         when 8 =>
				R <= number8(ver-480,hor-pos);
				G <= number8(ver-480,hor-pos);
				B <= number8(ver-480,hor-pos);
         when 9 =>
				R <= number9(ver-480,hor-pos);
				G <= number9(ver-480,hor-pos);
				B <= number9(ver-480,hor-pos);

			when OTHERS =>
				R <= '0';
				G <= '0';
				B <= '0';	
		end case;
else
		case valTime is
			when 0 =>
				R <= number0(ver-480,hor-pos-10);
				G <= number0(ver-480,hor-pos-10);
				B <= number0(ver-480,hor-pos-10);
			when 1 =>
				R <= number1(ver-480,hor-pos-10);
				G <= number1(ver-480,hor-pos-10);
				B <= number1(ver-480,hor-pos-10);
			when 2 =>
				R <= number2(ver-480,hor-pos-10);
				G <= number2(ver-480,hor-pos-10);
				B <= number2(ver-480,hor-pos-10);
			when 3 =>
				R <= number3(ver-480,hor-pos-10);
				G <= number3(ver-480,hor-pos-10);
				B <= number3(ver-480,hor-pos-10);
			when 4 =>
				R <= number4(ver-480,hor-pos-10);
				G <= number4(ver-480,hor-pos-10);
				B <= number4(ver-480,hor-pos-10);
			when 5 =>
				R <= number5(ver-480,hor-pos-10);
				G <= number5(ver-480,hor-pos-10);
				B <= number5(ver-480,hor-pos-10);
         when 6 =>
				R <= number6(ver-480,hor-pos-10);
				G <= number6(ver-480,hor-pos-10);
				B <= number6(ver-480,hor-pos-10);
         when 7 =>
				R <= number7(ver-480,hor-pos-10);
				G <= number7(ver-480,hor-pos-10);
				B <= number7(ver-480,hor-pos-10);
         when 8 =>
				R <= number8(ver-480,hor-pos-10);
				G <= number8(ver-480,hor-pos-10);
				B <= number5(ver-480,hor-pos-10);
         when 9 =>
				R <= number9(ver-480,hor-pos-10);
				G <= number9(ver-480,hor-pos-10);
				B <= number9(ver-480,hor-pos-10);
			when OTHERS =>
				R <= '0';
				G <= '0';
				B <= '0';	
		end case;
end if;

end drawTime;

procedure drawFirstLine (
--	hor : in Integer range 0 to 1023;
--	ver : in Integer range 0 to 1023;
signal R : out  STD_LOGIC;
signal G :  out  STD_LOGIC;
signal B : out  STD_LOGIC)  is
begin
	if (hor >= 174 and hor <= 183) then --P
		R <= letterP(ver-480,hor-174);
		G <= letterP(ver-480,hor-174);
		B <= letterP(ver-480,hor-174);
	elsif (hor >= 184 and hor <= 193) then --L
		R <= letterL(ver-480,hor-184);
		G <= letterL(ver-480,hor-184);
		B <= letterL(ver-480,hor-184);
	elsif (hor >= 194 and hor <= 203) then --A
		R <= letterA(ver-480,hor-194);
		G <= letterA(ver-480,hor-194);
		B <= letterA(ver-480,hor-194);
	elsif (hor >= 204 and hor <= 213) then --Y
		R <= letterY(ver-480,hor-204);
		G <= letterY(ver-480,hor-204);
		B <= letterY(ver-480,hor-204);
	elsif (hor >= 214 and hor <= 223) then --E
		R <= letterE(ver-480,hor-214);
		G <= letterE(ver-480,hor-214);
		B <= letterE(ver-480,hor-214);
	elsif (hor >= 224 and hor <= 233) then --R
		R <= letterR(ver-480,hor-224);
		G <= letterR(ver-480,hor-224);
		B <= letterR(ver-480,hor-224);
		-- SPACE
	elsif (hor >= 244 and hor <= 253) then --A
		R <= letterA(ver-480,hor-244);
		G <= letterA(ver-480,hor-244);
		B <= letterA(ver-480,hor-244);
	elsif (hor >= 254 and hor <= 263) then --:
		R <= colon(ver-480,hor-254);
		G <= colon(ver-480,hor-254);
		B <= colon(ver-480,hor-254);
	--SPACE
	--points
	elsif (hor >= 274 and hor <= 313) then --:
		drawPoints(PointsA,R,G,B);--rysuj pkt A (4 miejsca)
		
	elsif (hor >=654 and hor <= 663) then --T
		R <= letterT(ver-480,hor-654);
		G <= letterT(ver-480,hor-654);
		B <= letterT(ver-480,hor-654);
	elsif (hor >=664 and hor <= 673) then --I
		R <= letterI(ver-480,hor-664);
		G <= letterI(ver-480,hor-664);
		B <= letterI(ver-480,hor-664);
	elsif (hor >=674 and hor <= 683) then --M
		R <= letterM(ver-480,hor-674);
		G <= letterM(ver-480,hor-674);
		B <= letterM(ver-480,hor-674);
	elsif (hor >=684 and hor <= 693) then --E
		R <= letterE(ver-480,hor-684);
		G <= letterE(ver-480,hor-684);
		B <= letterE(ver-480,hor-684);
	--SPACE
   elsif (hor >=704 and hor <= 723) then
		drawTime(Min,'1',R,G,B);
	elsif (hor >=724 and hor <= 733) then --MIN
		R <= colon(ver-480,hor-724);
		G <= colon(ver-480,hor-724);
		B <= colon(ver-480,hor-724);
	elsif (hor >=734 and hor <= 753) then --SEC
      drawTime(Sec,'0',R,G,B);

	end if;
end drawFirstLine;
	


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
  -- inkrementowanie licznik�w
      if  hor < 799  then --800
		  if hor >= 144 and hor <= 783 then
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
		
		--jezeli doszed�em do do�u ekranu, na kt�rym ma by� pasek, to nadpisuj� sygna�, zanim ten si� zmieni
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

-- proces, kt�ry nadaje wartosci x i y, oraz ustala kolor akt. plamki
color: process(Clock, CLR)
variable indexCol : integer range 0 to 10;
variable indexRow : integer range 0 to 10;
variable tempHigh : integer range 0 to 1024; -- pomaga okreslic, czy przesunelismy sie w dol na ekranie
begin
	if CLR = '1' then
      R <= '0';
      G <= '0';
      B <= '0';
	elsif rising_edge(Clock) then
      if  hor >= 144 and hor <= 783 and ver >=31 and ver <511 then -- TIU ZMIANY NA 144/143
			if ver > 470 then --fragment ekranu do wyswietlania pkt i czasu
			
				if (ver >= 480 and ver <= 489) then --literki na tym samym poziomie
				
				drawFirstLine(R,G,B);
				
				else
					R <= '0';
					G <= '0';
					B <= '0';
				end if;
				
           
				
			else --rysuj to co podesle engine
				X <= std_logic_vector(to_unsigned(fieldX,6));
				Y <= std_logic_vector(to_unsigned(fieldY,6));
				R <= RGB(2);
				G <= RGB(1);
				B <= RGB(0);
			end if;
				pixelX <= std_logic_vector(to_unsigned(hor-144,10));
				pixelY <= std_logic_vector(to_unsigned(ver-31,10));
      else
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

