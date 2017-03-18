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
        <signal name="Clk_50MHz" />
        <signal name="Clr" />
        <signal name="XLXN_10(5:0)" />
        <signal name="XLXN_11(5:0)" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21(2:0)" />
        <signal name="XLXN_22(13:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25(5:0)" />
        <signal name="XLXN_26(5:0)" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Clr" />
        <blockdef name="VGA_640x480">
            <timestamp>2017-3-17T12:44:17</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
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
            <rect width="256" x="64" y="-448" height="704" />
        </blockdef>
        <blockdef name="timer">
            <timestamp>2017-3-16T23:30:58</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="engine">
            <timestamp>2017-3-17T12:38:33</timestamp>
            <rect width="320" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-480" y2="-480" x1="384" />
            <rect width="64" x="384" y="-348" height="24" />
            <line x2="448" y1="-336" y2="-336" x1="384" />
            <rect width="64" x="384" y="-204" height="24" />
            <line x2="448" y1="-192" y2="-192" x1="384" />
            <rect width="64" x="384" y="-60" height="24" />
            <line x2="448" y1="-48" y2="-48" x1="384" />
        </blockdef>
        <block symbolname="VGA_640x480" name="XLXI_1">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_21(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_22(13:0)" name="PointsA(13:0)" />
            <blockpin name="PointsB(13:0)" />
            <blockpin signalname="XLXN_10(5:0)" name="Sec(5:0)" />
            <blockpin signalname="XLXN_11(5:0)" name="Min(5:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="HS" />
            <blockpin signalname="VGA_VS" name="VS" />
            <blockpin signalname="XLXN_25(5:0)" name="X(5:0)" />
            <blockpin signalname="XLXN_26(5:0)" name="Y(5:0)" />
            <blockpin name="pixelX(9:0)" />
            <blockpin name="pixelY(9:0)" />
        </block>
        <block symbolname="timer" name="XLXI_9">
            <blockpin signalname="XLXN_20" name="Start" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_24" name="Clk16Hz_Out" />
            <blockpin signalname="XLXN_10(5:0)" name="Sec(5:0)" />
            <blockpin signalname="XLXN_11(5:0)" name="Min(5:0)" />
        </block>
        <block symbolname="engine" name="XLXI_15">
            <blockpin signalname="XLXN_24" name="Clk" />
            <blockpin name="DI_Rdy" />
            <blockpin name="DI(1:0)" />
            <blockpin name="D_Type(1:0)" />
            <blockpin signalname="XLXN_25(5:0)" name="X(5:0)" />
            <blockpin signalname="XLXN_26(5:0)" name="Y(5:0)" />
            <blockpin name="pixelX(9:0)" />
            <blockpin name="pixelY(9:0)" />
            <blockpin signalname="XLXN_20" name="Start" />
            <blockpin signalname="XLXN_21(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_22(13:0)" name="outPointsA(13:0)" />
            <blockpin name="outPointsB(13:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="VGA_R">
            <wire x2="3008" y1="272" y2="272" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3008" y="272" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="3008" y1="336" y2="336" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3008" y="336" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="3008" y1="400" y2="400" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3008" y="400" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="3008" y1="464" y2="464" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3008" y="464" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="3008" y1="528" y2="528" x1="2880" />
        </branch>
        <iomarker fontsize="28" x="3008" y="528" name="VGA_VS" orien="R0" />
        <instance x="2496" y="688" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="1664" y1="560" y2="1328" x1="1664" />
            <wire x2="1920" y1="1328" y2="1328" x1="1664" />
            <wire x2="2400" y1="560" y2="560" x1="1664" />
            <wire x2="2400" y1="272" y2="272" x1="2272" />
            <wire x2="2400" y1="272" y2="560" x1="2400" />
            <wire x2="2496" y1="272" y2="272" x1="2400" />
        </branch>
        <instance x="1920" y="1360" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_10(5:0)">
            <wire x2="2400" y1="1264" y2="1264" x1="2304" />
            <wire x2="2400" y1="848" y2="1264" x1="2400" />
            <wire x2="2496" y1="848" y2="848" x1="2400" />
        </branch>
        <branch name="XLXN_11(5:0)">
            <wire x2="2416" y1="1328" y2="1328" x1="2304" />
            <wire x2="2416" y1="912" y2="1328" x1="2416" />
            <wire x2="2496" y1="912" y2="912" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2240" y="464" name="Clr" orien="R180" />
        <iomarker fontsize="28" x="2272" y="272" name="Clk_50MHz" orien="R180" />
        <branch name="Clr">
            <wire x2="2496" y1="464" y2="464" x1="2240" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1904" y1="656" y2="656" x1="1376" />
            <wire x2="1904" y1="656" y2="1200" x1="1904" />
            <wire x2="1920" y1="1200" y2="1200" x1="1904" />
        </branch>
        <instance x="928" y="1136" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_21(2:0)">
            <wire x2="1936" y1="800" y2="800" x1="1376" />
            <wire x2="1936" y1="656" y2="800" x1="1936" />
            <wire x2="2496" y1="656" y2="656" x1="1936" />
        </branch>
        <branch name="XLXN_22(13:0)">
            <wire x2="1952" y1="944" y2="944" x1="1376" />
            <wire x2="1952" y1="720" y2="944" x1="1952" />
            <wire x2="2496" y1="720" y2="720" x1="1952" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="848" y1="576" y2="656" x1="848" />
            <wire x2="928" y1="656" y2="656" x1="848" />
            <wire x2="2368" y1="576" y2="576" x1="848" />
            <wire x2="2368" y1="576" y2="1200" x1="2368" />
            <wire x2="2368" y1="1200" y2="1200" x1="2304" />
        </branch>
        <branch name="XLXN_25(5:0)">
            <wire x2="928" y1="912" y2="912" x1="880" />
            <wire x2="880" y1="912" y2="1424" x1="880" />
            <wire x2="2960" y1="1424" y2="1424" x1="880" />
            <wire x2="2960" y1="592" y2="592" x1="2880" />
            <wire x2="2960" y1="592" y2="1424" x1="2960" />
        </branch>
        <branch name="XLXN_26(5:0)">
            <wire x2="864" y1="160" y2="976" x1="864" />
            <wire x2="928" y1="976" y2="976" x1="864" />
            <wire x2="2944" y1="160" y2="160" x1="864" />
            <wire x2="2944" y1="160" y2="656" x1="2944" />
            <wire x2="2944" y1="656" y2="656" x1="2880" />
        </branch>
    </sheet>
</drawing>