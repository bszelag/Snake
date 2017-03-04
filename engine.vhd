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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity engine is
    Port ( DI : in  STD_LOGIC_VECTOR (1 downto 0);
           D_Type : in  STD_LOGIC_VECTOR (1 downto 0);
           DI_Rdy : in  STD_LOGIC;
           Game_Time : in  STD_LOGIC_VECTOR (15 downto 0);
           X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end engine;

architecture Behavioral of engine is

begin


end Behavioral;

