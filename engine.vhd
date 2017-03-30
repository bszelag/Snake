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
			  Clk_50 : in STD_LOGIC;
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

constant boardColor : STD_LOGIC_VECTOR(2 downto 0) := "010";
constant foodColor : STD_LOGIC_VECTOR(2 downto 0) := "011";
constant playerAColor : STD_LOGIC_VECTOR(2 downto 0) := "100";
constant playerBColor : STD_LOGIC_VECTOR(2 downto 0) := "001";

signal directionA : STD_LOGIC_VECTOR(1 downto 0) := "00";
signal directionB : STD_LOGIC_VECTOR(1 downto 0) := "00";

signal headA_X : STD_LOGIC_VECTOR(6 downto 0);
signal headA_Y : STD_LOGIC_VECTOR(6 downto 0);
signal headB_X : STD_LOGIC_VECTOR(6 downto 0);
signal headB_Y : STD_LOGIC_VECTOR(6 downto 0);

signal decA : STD_LOGIC;
signal decB : STD_LOGIC;

signal mode : STD_LOGIC_VECTOR(1 downto 0) := "01"; -- 00 - wybor trybu, 01 - player 1, 10 - multiplayer

signal divider : unsigned(3 downto 0) := "1000";
type boardArray is array (0 to 63, 0 to 43) of unsigned(12 downto 0);
signal board : boardArray;

begin

-------------------------------Testowe wyswietlanie planszy
--board(0,0) <= "00";
--board(63,0) <= "01";
--board(0,43) <= "10";
--board(63,43) <= "11";
--board(0,20) <= "00";
--board(43,0) <= "01";
--board(0,33) <= "10";
--board(45,13) <= "11";
--board(6,6) <= "00";
--board(25,22) <= "01";
--board(0,11) <= "10";
--board(33,23) <= "11";
--board(18,10) <= "10";
--board(19,10) <= "10";
--board(20,10) <= "10";
--board(21,10) <= "10";
--board(30,15) <= "10";
--board(30,16) <= "10";
--board(30,17) <= "10";
--board(30,18) <= "10";
--------------------------------------------------------------


-------------------------------------------------------------------------------------------------------------dzielenie Clk o 16Hz przez divider 
clock: process(Clk)
begin

end process;
--------------------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------------------zwraca kolor dla danego piksela
drawBoard: process(pixelX,pixelY)
begin
	if board(to_integer(unsigned(X)),to_integer(unsigned(Y))) = "0000000000000" then
		RGB <= boardColor;
	elsif board(to_integer(unsigned(X)),to_integer(unsigned(Y))) = "1111111111111" then
		RGB <= foodColor;
	elsif (board(to_integer(unsigned(X)),to_integer(unsigned(Y))) AND "1000000000000" ) = "1000000000000" then 
		RGB <= playerBColor;
	else
		RGB <= playerAColor;
	end if;
end process;
--------------------------------------------------------------------------------------------------------------

play: process(DI_Rdy, Clk_50)
begin
	if rising_edge(Clk_50) then
		if DI_Rdy = '1' then
			case D_Type is
				when "00" => ------------------------------------------------PLAYER A --ustawic direction
					case DI is
						when "00" => null; ---UP
							directionA <= "00";
						when "01" => null; --LEFT	
							directionA <= "01";
						when "10" => null; --DOWN
							directionA <= "10";
						when "11" => null; --RIGHT
							directionA <= "11";
						when others => null;
						
					end case;
				when "01" => ------------------------------------------------PLAYER B
					case DI is
						when "00" => null; --UP
							directionB <= "00";
						when "01" => null; --LEFT
							directionB <= "01";
						when "10" => null; --DOWN
							directionB <= "10";
						when "11" => null; --RIGHT
							directionB <= "11";
						when others => null;
						
					end case;
				when "10" => ------------------------------------------------INSTRUCTIONS
					case DI is
						when "00" => ------------------------------------------RESET
							Start <= '0';
						when "01" => ------------------------------------------1 PLAYER
							Start <= '1';
						when "10" => ------------------------------------------MULTIPLAYER
							null; 
						when others =>	 null;
					end case;
				when others => null;
			end case;
		end if;
	end if;
end process;

game: process(Clk)
variable lenA : integer range 0 to 44*64; -- lenA jest liczba, ktora okreœla glowê wê¿a A 
variable lenB : integer range 0 to 44*64;
variable nextMoveA : STD_LOGIC_VECTOR(12 downto 0);
variable nextMoveB : STD_LOGIC_VECTOR(12 downto 0);

begin
	if rising_edge(Clk) then
		case directionA is
			when "00" => ------------------------------------------------------UP-A
				if to_integer(unsigned(headA_Y)) = 0 then
					-- GAME OVER
				else
					nextMoveA := board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))-1);
					if  nextMoveA = "0000000000000" then -- Puste pole							
						decA <= '1';
						board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))-1) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif nextMoveA = "1111111111111" then -- Jedzenie							
						decA <= '0';
						board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))-1) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif ( nextMoveA AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
						
					end if;
				end if;
			when "01" => ------------------------------------------------------LEFT-A
				if to_integer(unsigned(headA_X)) = 0 then
					-- GAME OVER
				else
					nextMoveA := board(to_integer(unsigned(headA_X)-1),to_integer(unsigned(headA_Y)));
					if  nextMoveA = "0000000000000" then -- Puste pole							
						decA <= '1';
						board(to_integer(unsigned(headA_X)-1),to_integer(unsigned(headA_Y))) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif nextMoveA = "1111111111111" then -- Jedzenie							
						decA <= '0';
						board(to_integer(unsigned(headA_X)-1),to_integer(unsigned(headA_Y))) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif ( nextMoveA AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;	
				end if;
			when "10" => ------------------------------------------------------DOWN-A
				if to_integer(unsigned(headA_Y)) = 43 then
					-- GAME OVER
				else
					nextMoveA := board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))+1);
					if  nextMoveA = "0000000000000" then -- Puste pole							
						decA <= '1';
						board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))+1) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif nextMoveA = "1111111111111" then -- Jedzenie							
						decA <= '0';
						board(to_integer(unsigned(headA_X)),to_integer(unsigned(headA_Y))+1) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif ( nextMoveA AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;	
				end if;
			when "11" => ------------------------------------------------------RIGHT-A
				if to_integer(unsigned(headA_X)) = 63 then
					-- GAME OVER
				else
					nextMoveA := board(to_integer(unsigned(headA_X)+1),to_integer(unsigned(headA_Y)));
					if  nextMoveA = "0000000000000" then -- Puste pole							
						decA <= '1';
						board(to_integer(unsigned(headA_X)+1),to_integer(unsigned(headA_Y))) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif nextMoveA = "1111111111111" then -- Jedzenie							
						decA <= '0';
						board(to_integer(unsigned(headA_X)+1),to_integer(unsigned(headA_Y))) 
							<= std_logic_vector(to_unsigned(lenA+1, 13));
					elsif ( nextMoveA AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when others => null;
		end case;
		case directionB is
			when "00" => ------------------------------------------------------UP-B
				if to_integer(unsigned(headB_Y)) = 0 then
					-- GAME OVER
				else
					nextMoveB := board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))-1);
					if  nextMoveB = "0000000000000" then -- Puste pole							
						decB <= '1';
						board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))-1) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif nextMoveB = "1111111111111" then -- Jedzenie							
						decB <= '0';
						board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))-1) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif ( nextMoveB AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when "01" => ------------------------------------------------------LEFT-B
				if to_integer(unsigned(headB_X)) = 0 then
					-- GAME OVER
				else
					nextMoveB := board(to_integer(unsigned(headB_X)-1),to_integer(unsigned(headB_Y)));
					if  nextMoveB = "0000000000000" then -- Puste pole							
						decB <= '1';
						board(to_integer(unsigned(headB_X)-1),to_integer(unsigned(headB_Y))) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif nextMoveB = "1111111111111" then -- Jedzenie							
						decB <= '0';
						board(to_integer(unsigned(headB_X)-1),to_integer(unsigned(headB_Y))) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif ( nextMoveB AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when "10" => ------------------------------------------------------DOWN-B
				if to_integer(unsigned(headB_Y)) = 43 then
					-- GAME OVER
				else
					nextMoveB := board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))+1);
					if  nextMoveB = "0000000000000" then -- Puste pole							
						decB <= '1';
						board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))+1) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif nextMoveB = "1111111111111" then -- Jedzenie							
						decB <= '0';
						board(to_integer(unsigned(headB_X)),to_integer(unsigned(headB_Y))+1) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif ( nextMoveB AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when "11" => ------------------------------------------------------RIGHT-B
				if to_integer(unsigned(headB_X)) = 63 then
					-- GAME OVER
				else
					nextMoveB := board(to_integer(unsigned(headB_X)+1),to_integer(unsigned(headB_Y)));
					if  nextMoveB = "0000000000000" then -- Puste pole							
						decB <= '1';
						board(to_integer(unsigned(headB_X)+1),to_integer(unsigned(headB_Y))) 
							<= lenB + "1";
					elsif nextMoveB = "1111111111111" then -- Jedzenie							
						decB <= '0';
						board(to_integer(unsigned(headB_X)+1),to_integer(unsigned(headB_Y))) 
							<= std_logic_vector(to_unsigned(lenB+1, 13));
					elsif ( nextMoveB AND "1000000000000" ) = "1000000000000" then -- W¹¿ B
						-- GAME OVER
						
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when others => null;
		end case;
	end if;
end process;


---------------------------------------------------------------------------------------------------- Dekrementacja tablicy - "ruch" wê¿y
decrementation : process(Clk_50)
variable i : integer range 0 to 44;
variable j : integer range 0 to 64;
variable act_pos : unsigned(12 downto 0);--STD_LOGIC_VECTOR(12 downto 0);
begin
	if (rising_edge(Clk_50) AND (decA='1' OR decB='1')) then 
		act_pos := board(i,j);
		if ((act_pos > "0000000000000") AND (act_pos < "1111111111111") AND ((act_pos AND "1000000000000") = "0000000000000") AND decA='1') then
			board(i,j) <= act_pos - "1";
		end if;
		if ((act_pos > "0000000000000") AND (act_pos < "1111111111111") AND ((act_pos AND "1000000000000") = "1000000000000") AND decB='1') then
			board(i,j) <=  act_pos - "1";--std_logic_vector(to_unsigned(to_integer(unsigned(act_pos)) - 1, 13));
			
		end if;
		if i = 43 then
				i := 0;
				if j = 63 then
					j := 0;
					decA <= '0';
					decB <= '0';
				else
					j := j + 1;
				end if;
		else
			i := i + 1;
		end if;
	end if;
end process;

end Behavioral;

