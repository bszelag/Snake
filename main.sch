<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_4" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="VGA_640x480">
            <timestamp>2017-3-4T15:15:44</timestamp>
            <rect width="256" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:35</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="VGA_640x480" name="XLXI_1">
            <blockpin name="CLK" />
            <blockpin name="CLR" />
            <blockpin name="RGB(2:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="HS" />
            <blockpin signalname="VGA_VS" name="VS" />
            <blockpin name="X(9:0)" />
            <blockpin name="Y(9:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="E0" />
            <blockpin name="F0" />
            <blockpin name="DO_Rdy" />
            <blockpin name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2592" y="688" name="XLXI_1" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="3008" y1="272" y2="272" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="272" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3008" y1="336" y2="336" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="336" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3008" y1="400" y2="400" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="400" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3008" y1="464" y2="464" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="464" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3008" y1="528" y2="528" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="528" name="VGA_VS" orien="R0" />
        <instance x="432" y="512" name="XLXI_2" orien="R0">
        </instance>
        <branch name="PS2_Clk">
            <wire x2="432" y1="288" y2="288" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="288" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="432" y1="352" y2="352" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="352" name="PS2_Data" orien="R180" />
        <branch name="Clk_50MHz">
            <wire x2="400" y1="640" y2="640" x1="352" />
            <wire x2="432" y1="416" y2="416" x1="400" />
            <wire x2="400" y1="416" y2="480" x1="400" />
            <wire x2="432" y1="480" y2="480" x1="400" />
            <wire x2="400" y1="480" y2="640" x1="400" />
        </branch>
        <iomarker fontsize="28" x="352" y="640" name="Clk_50MHz" orien="R180" />
    </sheet>
</drawing>