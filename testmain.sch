<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Clk_50MHz" />
        <signal name="we" />
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_5(12:0)" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="we" />
        <blockdef name="sync_ram">
            <timestamp>2017-3-31T10:2:45</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="sync_ram" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="we" name="we" />
            <blockpin signalname="XLXN_3(15:0)" name="address(15:0)" />
            <blockpin signalname="XLXN_5(12:0)" name="datain(12:0)" />
            <blockpin name="dataout(12:0)" />
        </block>
        <block symbolname="constant" name="XLXI_4(15:0)">
            <blockpin signalname="XLXN_3(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_5(12:0)">
            <blockpin signalname="XLXN_5(12:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="992" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="896" y1="768" y2="768" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="768" name="Clk_50MHz" orien="R180" />
        <branch name="we">
            <wire x2="896" y1="832" y2="832" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="832" name="we" orien="R180" />
        <branch name="XLXN_3(15:0)">
            <wire x2="672" y1="1024" y2="1024" x1="624" />
            <wire x2="688" y1="1024" y2="1024" x1="672" />
            <wire x2="896" y1="1024" y2="1024" x1="688" />
        </branch>
        <instance x="480" y="992" name="XLXI_4(15:0)" orien="R0">
        </instance>
        <instance x="640" y="1120" name="XLXI_5(12:0)" orien="R0">
        </instance>
        <branch name="XLXN_5(12:0)">
            <wire x2="832" y1="1152" y2="1152" x1="784" />
            <wire x2="832" y1="1088" y2="1152" x1="832" />
            <wire x2="896" y1="1088" y2="1088" x1="832" />
        </branch>
    </sheet>
</drawing>