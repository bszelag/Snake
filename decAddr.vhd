----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:18 03/31/2017 
-- Design Name: 
-- Module Name:    decAddr - Behavioral 
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

entity decAddr is
    Port ( x : in  STD_LOGIC_VECTOR (5 downto 0);
           y : in  STD_LOGIC_VECTOR (5 downto 0);
           addr : out  STD_LOGIC_VECTOR (11 downto 0));
end decAddr;

architecture Behavioral of decAddr is

begin

addr <= x & y;

end Behavioral;

