--TODO: czy sie xi i yi nie psuje?
--TODO: inicjalizacja gry

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
    Port ( Clk : in STD_LOGIC;  --Clock 16Hz
			  Clk_50 : in STD_LOGIC; --Clk 50Mhz
			  DI : in  STD_LOGIC_VECTOR (1 downto 0); --dane z klawiarury
           D_Type : in  STD_LOGIC_VECTOR (1 downto 0); --rodzaj danych z klawiatury
           DI_Rdy : in  STD_LOGIC; --dane do odczytania
           X : in  STD_LOGIC_VECTOR (5 downto 0); -- z vga czyta z board
           Y : in  STD_LOGIC_VECTOR (5 downto 0); -- z vga czyta z board
           XMem : out  STD_LOGIC_VECTOR (5 downto 0); --wyjscie na RAM
           YMem : out  STD_LOGIC_VECTOR (5 downto 0); --wyjscie na RAM
			  pixelX : in  STD_LOGIC_VECTOR (9 downto 0); -- akt. pixel (jest bo jest)
           pixelY : in  STD_LOGIC_VECTOR (9 downto 0); -- akt. pixel (jest bo jest)
			  RGB : out  STD_LOGIC_VECTOR (2 downto 0); 
           writeMem : out STD_LOGIC; --czy piszemy po pamieci, czy nie
           dataInArray : in STD_LOGIC_VECTOR (12 downto 0); --wartosc odczyna z RAM
           dataOutArray : out STD_LOGIC_VECTOR (12 downto 0); --wartosc do zapisu w RAM
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
signal pointsA : unsigned (13 downto 0) :=  (others => '0');
signal pointsB : unsigned (13 downto 0) :=  (others => '0');

 
signal valHeadA : integer range 0 to 44*64;
signal headA_X : integer range 0 to 63;
signal headA_Y : integer range 0 to 43;
signal headB_X : integer range 0 to 63;
signal headB_Y : integer range 0 to 43;

signal decA : STD_LOGIC;
signal decB : STD_LOGIC;
signal playersMoved : STD_LOGIC;

signal writeM : STD_LOGIC := '1';
signal mode : STD_LOGIC_VECTOR(1 downto 0) := "01"; -- 00 - wybor trybu, 01 - player 1, 10 - multiplayer

signal divider : unsigned(3 downto 0) := "1000";
type boardArray is array (0 to 63, 0 to 63) of unsigned(1 downto 0); 
signal board : boardArray; -- z tej tablicy czyta "game" i "vga"

begin


--------------------------------------------------------dzielenie Clk o 16Hz przez divider 
clock: process(Clk)
begin

end process;
---------------------------------------------------------



------------------------zwraca kolor dla danego piksela z tablicy board
--00 - t³o
--01 - food
--10 - A
--11 - B
drawBoard: process(X,Y)
begin
	if board(to_integer(unsigned(X)),to_integer(unsigned(Y))) = "00" then
		RGB <= boardColor;
	elsif board(to_integer(unsigned(X)),to_integer(unsigned(Y))) = "01" then
		RGB <= foodColor;
	elsif board(to_integer(unsigned(X)),to_integer(unsigned(Y))) = "10" then
		RGB <= playerAColor;
	else
		RGB <= playerBColor;
	end if;
end process;

-----------------------------------------aktualizuje board i RAM
--proces powinien ciagle iterowac po calym RAM'ie
--i aktualizowac tablice Board.
--
--Jezeli na poczatku nowego cyklu (jako cykl rozumiemy przejscie przez caly RAM)
--ustawione byly flagi dotyczace dekrementacji to dekrementujemy danego gracza
--
--Jezeli na poczatku danego cyklu ustawione byla flaga o ruchu graczy,
--to na odpowiednie miejsce w RAM'ie wpisujemy wartosc z odpowiedniego sygna³u
--(potrzebujemy info co wpisac i gdzie - dl. wê¿a i adres X,Y head)
--
--Jezeli na pocztku danego cyklu byla ustawiona flaga dot. wygenerowania jedzenia,
--to na odpowienim polu generujemy jedzenie

--info: podczas zapisywania zwracana wartosc to ta sama co jest zapisywana (to dobrze)
writeBoard: process(Clk_50)
variable xi : integer range 0 to 63 := 0; 
variable yi : integer range 0 to 63 := 0;
variable decrementA : STD_LOGIC;
variable decrementB : STD_LOGIC;
variable writeCycle : STD_LOGIC; --ustawiajac stwierdzasz, ze nastepny cykl dost. do RAM bedzie zapisem na akt xy 
begin
if rising_edge(Clk_50) then

	writeMem<='0'; --domyslnie nie piszemy po pamieci
	
	if playersMoved = '1' then --wazniejsze niz wszystko - gracze sie ruszyli trza wpisac gdzie (czy nie trzeba na pocz cyklu?)
		playersMoved <= '0';		--(i czy nie jebie sie xi, yi? - chyba jebie...)
		writeMem<='1';
		XMem <= Std_logic_vector(To_unsigned(headA_X,6));
		YMem <= Std_logic_vector(To_unsigned(headA_Y,6));
		dataOutArray <= Std_logic_vector(To_unsigned(valHeadA,13));
	else
		if writeCycle = '1' then
			writeCycle := '0';
		else
			
			--tutaj wstaw warunek do ruchu weza (tutaj lub przy pustym polu/zarciu)
			
			if dataInArray = "0000000000000" then --w tym warunku mozna generowac zarcie
				board(xi,yi) <= "00"; --pole
			elsif dataInArray = "1111111111111" then
				board(xi,yi) <= "01"; --food
			elsif ((dataInArray AND "1000000000000") = "0000000000000" ) then -- mozna dekrementujac A 
				if decrementA='1' then
					writeMem<='1';
					writeCycle:='1';
					dataOutArray<=Std_logic_vector(Unsigned(dataInArray) - "1");
				end if;
				board(xi,yi) <= "10"; --A
			else --mozna dekrementowac B
				if decrementB='1' then
					writeMem<='1';
					writeCycle:='1';
					dataOutArray<=Std_logic_vector(Unsigned(dataInArray) - "1");
				end if;
				board(xi,yi) <= "11"; --B
			end if;
		end if;

		if writeCycle = '0' then --bierz nastepna tylko jak nastepny cykl nie bedzie cyklem zapisu
		--kolejna komorka pamieci
			if xi=63 then
				xi:=0;
				if yi=43 then --rozpoczêcie nowego cyklu!!!!!
					yi:=0;
					decrementA:='0';
					decrementB:='0';
					if decA='1' then
						decrementA:='1';
					end if;
					if decB='1' then
						decrementB:='1';
					end if;
				else
				yi:=yi+1;
				end if;
			else
				xi:=xi+1;
			end if;
		end if;
		
		XMem <= Std_logic_vector(To_unsigned(xi,6));
		YMem <= Std_logic_vector(To_unsigned(yi,6));
	end if;
end if;

end process;

-----------------------------------------bada stan klawiatury
instruction: process(DI_Rdy, Clk_50)
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
variable nextMoveA : unsigned(1 downto 0); 
variable nextMoveB : unsigned(1 downto 0);
variable lenA : integer range 0 to 44*64; -- lenA jest liczba, ktora okreœla glowê wê¿a A 
variable lenB : integer range 0 to 44*64;

begin
	if rising_edge(Clk) then
		case directionA is
		
			when "00" => ------------------------------------------------------UP-A
				if headA_Y = 0 then
					-- GAME OVER
				else
					nextMoveA := board(headA_X, headA_Y - 1);
					headA_Y <= headA_Y - 1; --nowy adres g³owy
					if  nextMoveA = "00" then -- Puste pole							
						decA <= '1';
						writeHeadA <= lenA + "1";  --wpisz jeden wiecej niz w rzeczywistosci (zaraz dekrementacja)
					elsif nextMoveA = "01" then -- Jedzenie							
						decA <= '0';
						lenA := lenA + "1";
						writeHeadA <= lenA;
						pointsA <= pointsA + "1";
					else  -- W¹¿ A lub B
						-- GAME OVER
					end if;
				end if;
				
			when "01" => ------------------------------------------------------LEFT-A
				if headA_X = 0 then
					-- GAME OVER
				else
					headA_X <= headA_X - 1; --nowy adres g³owy
					nextMoveA := board(headA_X - 1, headA_Y);
					if  nextMoveA = "00" then -- Puste pole							
						decA <= '1';
						writeHeadA <= lenA + "1";
					elsif nextMoveA = "01" then -- Jedzenie							
						decA <= '0';
						lenA := lenA + "1";
						writeHeadA <= lenA;
						pointsA <= pointsA + "1";
					else -- Waz A lub B
						-- GAME OVER
					end if;	
				end if;
				
			when "10" => ------------------------------------------------------DOWN-A
				if headA_Y = 43 then
					-- GAME OVER
				else
					nextMoveA := board(headA_X, headA_Y + 1);
					headA_Y <= headA_Y + 1; --nowy adres g³owy
					if  nextMoveA = "00" then -- Puste pole							
						decA <= '1';
						writeHeadA <= lenA + "1";
					elsif nextMoveA = "01" then -- Jedzenie							
						decA <= '0';
						lenA := lenA + "1";
						writeHeadA <= lenA;
						pointsA <= pointsA + "1";
					else 
						-- GAME OVER                                      
					end if;	
				end if;
				
			when "11" => ------------------------------------------------------RIGHT-A
				if headA_X = 63 then
					-- GAME OVER
				else
					nextMoveA := board(headA_X + 1, headA_Y);
					headA_X <= headA_X + 1; --nowy adres g³owy
					if  nextMoveA = "00" then -- Puste pole							
						decA <= '1';
						writeHeadA <= lenA + "1";
					elsif nextMoveA = "01" then -- Jedzenie							
						decA <= '0';
						lenA := lenA + "1";
						writeHeadA <= lenA;
						pointsA <= pointsA + "1";
					else   -- W¹¿ A                                                        
						-- GAME OVER
					end if;
				end if;
			when others => null;
		end case;
		
--		case directionB is
--			when "00" => ------------------------------------------------------UP-A
--				if headB_Y = 0 then
--					-- GAME OVER
--				else
--					nextMoveB := board(headB_X, headB_Y - 1);
--					if  nextMoveB = "0000000000000" then -- Puste pole							
--						decB <= '1';
--						board(headB_X, headB_Y - 1) 
--							<= lenB + "1";
--					elsif nextMoveB = "1111111111111" then -- Jedzenie							
--						decB <= '0';
--						board(headB_X, headB_Y - 1) 
--							<= lenB + "1";
--					elsif ( nextMoveB AND "1000000000000" ) = "0000000000000" then -- W¹¿ A
--						-- GAME OVER
--						
--					else   -- W¹¿ B                                                        
--						-- GAME OVER
--						
--					end if;
--				end if;
--			when "01" => ------------------------------------------------------LEFT-A
--				if headB_X = 0 then
--					-- GAME OVER
--				else
--					nextMoveB := board(headB_X - 1, headB_Y);
--					if  nextMoveB = "0000000000000" then -- Puste pole							
--						decB <= '1';
--						board(headB_X - 1, headB_Y) 
--							<= lenB + "1";
--					elsif nextMoveB = "1111111111111" then -- Jedzenie							
--						decB <= '0';
--						board(headB_X - 1, headB_Y) 
--							<= lenB + "1";
--					elsif ( nextMoveB AND "1000000000000" ) = "0000000000000" then -- W¹¿ A
--						-- GAME OVER
--						
--					else   -- W¹¿ B                                                        
--						-- GAME OVER
--					end if;	
--				end if;
--			when "10" => ------------------------------------------------------DOWN-A
--				if headB_Y = 43 then
--					-- GAME OVER
--				else
--					nextMoveB := board(headB_X, headB_Y + 1);
--					if  nextMoveB = "0000000000000" then -- Puste pole							
--						decB <= '1';
--						board(headB_X, headB_Y + 1) 
--							<= lenB + "1";
--					elsif nextMoveB = "1111111111111" then -- Jedzenie							
--						decB <= '0';
--						board(headB_X, headB_Y + 1) 
--							<= lenB + "1";
--					elsif ( nextMoveB AND "1000000000000" ) = "0000000000000" then -- W¹¿ A
--						-- GAME OVER
--						
--					else   -- W¹¿ B                                                        
--						-- GAME OVER
--					end if;	
--				end if;
--			when "11" => ------------------------------------------------------RIGHT-A
--				if headB_X = 63 then
--					-- GAME OVER
--				else
--					nextMoveB := board(headB_X + 1, headB_Y);
--					if  nextMoveB = "0000000000000" then -- Puste pole							
--						decB <= '1';
--						board(headB_X + 1, headB_Y) 
--							<= lenB + "1";
--					elsif nextMoveB = "1111111111111" then -- Jedzenie							
--						decB <= '0';
--						board(headB_X + 1, headB_Y) 
--							<= lenB + "1";
--					elsif ( nextMoveB AND "1000000000000" ) = "0000000000000" then -- W¹¿A
--						-- GAME OVER
--						
--					else   -- W¹¿ B                                                        
--						-- GAME OVER
--					end if;
--				end if;
--			when others => null;
--		end case;


	playersMoved <= '1'; --info dla procesu od RAMu, ze ma wpisac do komorek glowy graczy;
	end if;
end process;

end Behavioral;

