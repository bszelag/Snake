--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 03/11/2017 16:39:45
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/main.vhf -w C:/Users/Mateusz/Desktop/SemestrVI/UCISKP/Snake/main.sch
--Design Name: main
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity main is
   port ( Clk_50MHz : in    std_logic; 
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXI_1_CLK_openSignal     : std_logic;
   signal XLXI_1_CLR_openSignal     : std_logic;
   signal XLXI_1_Min_openSignal     : std_logic_vector (5 downto 0);
   signal XLXI_1_PointsA_openSignal : std_logic_vector (13 downto 0);
   signal XLXI_1_PointsB_openSignal : std_logic_vector (13 downto 0);
   signal XLXI_1_RGB_openSignal     : std_logic_vector (2 downto 0);
   signal XLXI_1_Sec_openSignal     : std_logic_vector (5 downto 0);
   component VGA_640x480
      port ( CLK     : in    std_logic; 
             CLR     : in    std_logic; 
             RGB     : in    std_logic_vector (2 downto 0); 
             PointsA : in    std_logic_vector (13 downto 0); 
             PointsB : in    std_logic_vector (13 downto 0); 
             Sec     : in    std_logic_vector (5 downto 0); 
             Min     : in    std_logic_vector (5 downto 0); 
             R       : out   std_logic; 
             G       : out   std_logic; 
             B       : out   std_logic; 
             HS      : out   std_logic; 
             VS      : out   std_logic; 
             X       : out   std_logic_vector (5 downto 0); 
             Y       : out   std_logic_vector (5 downto 0); 
             pixelX  : out   std_logic_vector (9 downto 0); 
             pixelY  : out   std_logic_vector (9 downto 0));
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
begin
   XLXI_1 : VGA_640x480
      port map (CLK=>XLXI_1_CLK_openSignal,
                CLR=>XLXI_1_CLR_openSignal,
                Min(5 downto 0)=>XLXI_1_Min_openSignal(5 downto 0),
                PointsA(13 downto 0)=>XLXI_1_PointsA_openSignal(13 downto 0),
                PointsB(13 downto 0)=>XLXI_1_PointsB_openSignal(13 downto 0),
                RGB(2 downto 0)=>XLXI_1_RGB_openSignal(2 downto 0),
                Sec(5 downto 0)=>XLXI_1_Sec_openSignal(5 downto 0),
                B=>VGA_B,
                G=>VGA_G,
                HS=>VGA_HS,
                pixelX=>open,
                pixelY=>open,
                R=>VGA_R,
                VS=>VGA_VS,
                X=>open,
                Y=>open);
   
   XLXI_2 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO=>open,
                DO_Rdy=>open,
                E0=>open,
                F0=>open);
   
end BEHAVIORAL;


