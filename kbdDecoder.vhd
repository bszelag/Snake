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
           F0 : in  STD_LOGIC;
           DI_Rdy : in  STD_LOGIC;
           DO : out  STD_LOGIC_VECTOR (1 downto 0);
           D_Type : out  STD_LOGIC;
           DO_Rdy : out  STD_LOGIC);
end kbdDecoder;

architecture Behavioral of kbdDecoder is

begin


end Behavioral;

