----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:40 03/04/2017 
-- Design Name: 
-- Module Name:    kbdDecoder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kbdDecoder is
    Port ( DI : in  STD_LOGIC_VECTOR (7 downto 0);
           E0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           DI_Rdy : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (1 downto 0);-- PLAYERS: UP 00, LEFT 01, DOWN 10, RIGHT 11 | INSTRUCTIONS: RESET 00, START 01, SINGLE 10, MUL 11 
           D_Type : out  STD_LOGIC_VECTOR (1 downto 0);  -- 00 PLAYER A | 01 PLAYER B | 10 INSTRUCTIONS
           DO_Rdy : out  STD_LOGIC);
end kbdDecoder;

architecture Behavioral of kbdDecoder is

begin

proc: process(Clk)	
	begin
		if rising_edge(Clk) then
        DO_Rdy<='0'; --domyœlna akcja
			if F0 = '0' and DI_Rdy = '1' then  --interesuje nas nacisniecie, a nie puszczenie
				case DI is
					--PLAYER A
					when X"75" =>	-- UP/NUM8
						D_Type <= "00";
						DO <= "00";
						DO_Rdy <= '1';
					when X"6B" =>	-- LEFT/NUM4
						D_Type <= "00";
						DO <= "01";
						DO_Rdy <= '1';
					when X"72" =>	-- DOWN/NUM2
						D_Type <= "00";
						DO <= "10";
						DO_Rdy <= '1';
					when X"74" =>	-- RIGHT/NUM6
						D_Type <= "00";
						DO <= "11";
						DO_Rdy <= '1';
					
					--PLAYER B
					when X"1D" =>	-- W
						D_Type <= "01";
						DO <= "00";
						DO_Rdy <= '1';
					when X"1C" =>	-- A
						D_Type <= "01";
						DO <= "01";
						DO_Rdy <= '1';
					when X"1B" =>	-- S
						D_Type <= "01";
						DO <= "10";
						DO_Rdy <= '1';
					when X"23" =>	-- D
						D_Type <= "01";
						DO <= "11";
						DO_Rdy <= '1';
					
					--INSTRUCTIONS
					when X"2D" =>	-- RESET "R"
						D_Type <= "10";
						DO <= "00";
						DO_Rdy <= '1';
					when X"29" =>	-- PLAY "Space"
						D_Type <= "10";
						DO <= "01";
						DO_Rdy <= '1';
					when X"16" =>	-- GAME MODE 1 - SINGLE "1"
						D_Type <= "10";
						DO <= "10";
						DO_Rdy <= '1';
					when X"1E" =>	-- GAME MODE 2 - MULTI "2"
						D_Type <= "10";
						DO <= "11";
						DO_Rdy <= '1';
					when OTHERS =>
						 null;
				end case;
			end if;
		end if;
			
			
	
	
	end process;
	

end Behavioral;

