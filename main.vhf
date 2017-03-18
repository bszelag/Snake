--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : main.vhf
-- /___/   /\     Timestamp : 03/17/2017 13:44:27
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/Snake/Snake/main.vhf -w C:/Users/lab/Desktop/Snake/Snake/main.sch
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
          Clr       : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end main;

architecture BEHAVIORAL of main is
   signal XLXN_10                   : std_logic_vector (5 downto 0);
   signal XLXN_11                   : std_logic_vector (5 downto 0);
   signal XLXN_20                   : std_logic;
   signal XLXN_21                   : std_logic_vector (2 downto 0);
   signal XLXN_22                   : std_logic_vector (13 downto 0);
   signal XLXN_24                   : std_logic;
   signal XLXN_25                   : std_logic_vector (5 downto 0);
   signal XLXN_26                   : std_logic_vector (5 downto 0);
   signal XLXI_1_PointsB_openSignal : std_logic_vector (13 downto 0);
   signal XLXI_15_DI_openSignal     : std_logic_vector (1 downto 0);
   signal XLXI_15_DI_Rdy_openSignal : std_logic;
   signal XLXI_15_D_Type_openSignal : std_logic_vector (1 downto 0);
   signal XLXI_15_pixelX_openSignal : std_logic_vector (9 downto 0);
   signal XLXI_15_pixelY_openSignal : std_logic_vector (9 downto 0);
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
   
   component timer
      port ( Start       : in    std_logic; 
             Clk         : in    std_logic; 
             Clk16Hz_Out : out   std_logic; 
             Sec         : out   std_logic_vector (5 downto 0); 
             Min         : out   std_logic_vector (5 downto 0));
   end component;
   
   component engine
      port ( Clk        : in    std_logic; 
             DI_Rdy     : in    std_logic; 
             DI         : in    std_logic_vector (1 downto 0); 
             D_Type     : in    std_logic_vector (1 downto 0); 
             X          : in    std_logic_vector (5 downto 0); 
             Y          : in    std_logic_vector (5 downto 0); 
             pixelX     : in    std_logic_vector (9 downto 0); 
             pixelY     : in    std_logic_vector (9 downto 0); 
             Start      : out   std_logic; 
             RGB        : out   std_logic_vector (2 downto 0); 
             outPointsA : out   std_logic_vector (13 downto 0); 
             outPointsB : out   std_logic_vector (13 downto 0));
   end component;
   
begin
   XLXI_1 : VGA_640x480
      port map (CLK=>Clk_50MHz,
                CLR=>Clr,
                Min(5 downto 0)=>XLXN_11(5 downto 0),
                PointsA(13 downto 0)=>XLXN_22(13 downto 0),
                PointsB(13 downto 0)=>XLXI_1_PointsB_openSignal(13 downto 0),
                RGB(2 downto 0)=>XLXN_21(2 downto 0),
                Sec(5 downto 0)=>XLXN_10(5 downto 0),
                B=>VGA_B,
                G=>VGA_G,
                HS=>VGA_HS,
                pixelX=>open,
                pixelY=>open,
                R=>VGA_R,
                VS=>VGA_VS,
                X(5 downto 0)=>XLXN_25(5 downto 0),
                Y(5 downto 0)=>XLXN_26(5 downto 0));
   
   XLXI_9 : timer
      port map (Clk=>Clk_50MHz,
                Start=>XLXN_20,
                Clk16Hz_Out=>XLXN_24,
                Min(5 downto 0)=>XLXN_11(5 downto 0),
                Sec(5 downto 0)=>XLXN_10(5 downto 0));
   
   XLXI_15 : engine
      port map (Clk=>XLXN_24,
                DI(1 downto 0)=>XLXI_15_DI_openSignal(1 downto 0),
                DI_Rdy=>XLXI_15_DI_Rdy_openSignal,
                D_Type(1 downto 0)=>XLXI_15_D_Type_openSignal(1 downto 0),
                pixelX(9 downto 0)=>XLXI_15_pixelX_openSignal(9 downto 0),
                pixelY(9 downto 0)=>XLXI_15_pixelY_openSignal(9 downto 0),
                X(5 downto 0)=>XLXN_25(5 downto 0),
                Y(5 downto 0)=>XLXN_26(5 downto 0),
                outPointsA(13 downto 0)=>XLXN_22(13 downto 0),
                outPointsB=>open,
                RGB(2 downto 0)=>XLXN_21(2 downto 0),
                Start=>XLXN_20);
   
end BEHAVIORAL;


