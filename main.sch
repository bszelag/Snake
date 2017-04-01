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
        <signal name="XLXN_20" />
        <signal name="XLXN_21(2:0)" />
        <signal name="XLXN_22(13:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25(5:0)" />
        <signal name="XLXN_26(5:0)" />
        <signal name="XLXN_27(7:0)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33(1:0)" />
        <signal name="XLXN_34(1:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_35(11:0)" />
        <signal name="XLXN_40" />
        <signal name="XLXN_42(12:0)" />
        <signal name="XLXN_43(12:0)" />
        <signal name="XLXN_44(5:0)" />
        <signal name="XLXN_45(5:0)" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Input" name="Clr" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <blockdef name="VGA_640x480">
            <timestamp>2017-3-31T11:45:54</timestamp>
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
        <blockdef name="PS2_Kbd">
            <timestamp>2017-3-4T16:47:6</timestamp>
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
        <blockdef name="kbdDecoder">
            <timestamp>2017-3-16T23:30:52</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="decAddr">
            <timestamp>2017-3-31T10:27:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sync_ram">
            <timestamp>2017-3-31T10:27:48</timestamp>
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
        <blockdef name="engine">
            <timestamp>2017-3-31T11:46:36</timestamp>
            <rect width="64" x="0" y="260" height="24" />
            <rect width="64" x="384" y="340" height="24" />
            <line x2="448" y1="352" y2="352" x1="384" />
            <rect width="64" x="384" y="212" height="28" />
            <line x2="448" y1="224" y2="224" x1="384" />
            <rect width="64" x="384" y="276" height="24" />
            <line x2="448" y1="288" y2="288" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
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
            <rect width="320" x="64" y="-512" height="1024" />
            <line x2="0" y1="272" y2="272" x1="64" />
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
        <block symbolname="PS2_Kbd" name="XLXI_16">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_29" name="E0" />
            <blockpin signalname="XLXN_30" name="F0" />
            <blockpin signalname="XLXN_31" name="DO_Rdy" />
            <blockpin signalname="XLXN_27(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="kbdDecoder" name="XLXI_17">
            <blockpin signalname="XLXN_29" name="E0" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_30" name="F0" />
            <blockpin signalname="XLXN_31" name="DI_Rdy" />
            <blockpin signalname="XLXN_27(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_32" name="DO_Rdy" />
            <blockpin signalname="XLXN_33(1:0)" name="DO(1:0)" />
            <blockpin signalname="XLXN_34(1:0)" name="D_Type(1:0)" />
        </block>
        <block symbolname="decAddr" name="XLXI_28">
            <blockpin signalname="XLXN_45(5:0)" name="x(5:0)" />
            <blockpin signalname="XLXN_44(5:0)" name="y(5:0)" />
            <blockpin signalname="XLXN_35(11:0)" name="addr(11:0)" />
        </block>
        <block symbolname="sync_ram" name="XLXI_29">
            <blockpin signalname="Clk_50MHz" name="clock" />
            <blockpin signalname="XLXN_40" name="we" />
            <blockpin signalname="XLXN_35(11:0)" name="address(11:0)" />
            <blockpin signalname="XLXN_43(12:0)" name="datain(12:0)" />
            <blockpin signalname="XLXN_42(12:0)" name="dataout(12:0)" />
        </block>
        <block symbolname="engine" name="XLXI_33">
            <blockpin signalname="XLXN_24" name="Clk" />
            <blockpin signalname="Clk_50MHz" name="Clk_50" />
            <blockpin signalname="XLXN_32" name="DI_Rdy" />
            <blockpin signalname="XLXN_33(1:0)" name="DI(1:0)" />
            <blockpin signalname="XLXN_34(1:0)" name="D_Type(1:0)" />
            <blockpin signalname="XLXN_25(5:0)" name="X(5:0)" />
            <blockpin signalname="XLXN_26(5:0)" name="Y(5:0)" />
            <blockpin name="pixelX(9:0)" />
            <blockpin name="pixelY(9:0)" />
            <blockpin signalname="XLXN_42(12:0)" name="dataInArray(12:0)" />
            <blockpin signalname="XLXN_40" name="writeMem" />
            <blockpin signalname="XLXN_20" name="Start" />
            <blockpin signalname="XLXN_45(5:0)" name="XMem(5:0)" />
            <blockpin signalname="XLXN_44(5:0)" name="YMem(5:0)" />
            <blockpin signalname="XLXN_21(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_43(12:0)" name="dataOutArray(12:0)" />
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
            <wire x2="160" y1="48" y2="464" x1="160" />
            <wire x2="240" y1="464" y2="464" x1="160" />
            <wire x2="272" y1="464" y2="464" x1="240" />
            <wire x2="240" y1="464" y2="528" x1="240" />
            <wire x2="272" y1="528" y2="528" x1="240" />
            <wire x2="240" y1="528" y2="816" x1="240" />
            <wire x2="288" y1="816" y2="816" x1="240" />
            <wire x2="1216" y1="48" y2="48" x1="160" />
            <wire x2="1216" y1="48" y2="272" x1="1216" />
            <wire x2="1536" y1="272" y2="272" x1="1216" />
            <wire x2="2400" y1="272" y2="272" x1="1536" />
            <wire x2="2400" y1="272" y2="560" x1="2400" />
            <wire x2="2496" y1="272" y2="272" x1="2400" />
            <wire x2="1536" y1="272" y2="1280" x1="1536" />
            <wire x2="928" y1="1168" y2="1168" x1="848" />
            <wire x2="848" y1="1168" y2="1280" x1="848" />
            <wire x2="1536" y1="1280" y2="1280" x1="848" />
            <wire x2="1216" y1="272" y2="272" x1="1088" />
            <wire x2="1408" y1="1328" y2="1520" x1="1408" />
            <wire x2="1440" y1="1520" y2="1520" x1="1408" />
            <wire x2="1664" y1="1328" y2="1328" x1="1408" />
            <wire x2="1920" y1="1328" y2="1328" x1="1664" />
            <wire x2="1664" y1="560" y2="1328" x1="1664" />
            <wire x2="2400" y1="560" y2="560" x1="1664" />
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
        <branch name="Clr">
            <wire x2="2496" y1="464" y2="464" x1="2240" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1904" y1="656" y2="656" x1="1376" />
            <wire x2="1904" y1="656" y2="1200" x1="1904" />
            <wire x2="1920" y1="1200" y2="1200" x1="1904" />
        </branch>
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
            <wire x2="912" y1="496" y2="912" x1="912" />
            <wire x2="928" y1="912" y2="912" x1="912" />
            <wire x2="1808" y1="496" y2="496" x1="912" />
            <wire x2="1808" y1="496" y2="1376" x1="1808" />
            <wire x2="1824" y1="1376" y2="1376" x1="1808" />
            <wire x2="1824" y1="1376" y2="1424" x1="1824" />
            <wire x2="2960" y1="1424" y2="1424" x1="1824" />
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
        <instance x="288" y="1040" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_27(7:0)">
            <wire x2="16" y1="192" y2="1008" x1="16" />
            <wire x2="288" y1="1008" y2="1008" x1="16" />
            <wire x2="656" y1="192" y2="192" x1="16" />
            <wire x2="656" y1="192" y2="336" x1="656" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="144" y1="144" y2="752" x1="144" />
            <wire x2="288" y1="752" y2="752" x1="144" />
            <wire x2="672" y1="144" y2="144" x1="144" />
            <wire x2="672" y1="144" y2="400" x1="672" />
            <wire x2="672" y1="400" y2="400" x1="656" />
        </branch>
        <branch name="XLXN_30">
            <wire x2="96" y1="96" y2="880" x1="96" />
            <wire x2="288" y1="880" y2="880" x1="96" />
            <wire x2="704" y1="96" y2="96" x1="96" />
            <wire x2="704" y1="96" y2="464" x1="704" />
            <wire x2="704" y1="464" y2="464" x1="656" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="272" y1="944" y2="944" x1="240" />
            <wire x2="288" y1="944" y2="944" x1="272" />
            <wire x2="240" y1="944" y2="1072" x1="240" />
            <wire x2="720" y1="1072" y2="1072" x1="240" />
            <wire x2="720" y1="528" y2="528" x1="656" />
            <wire x2="720" y1="528" y2="1072" x1="720" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="800" y1="752" y2="752" x1="672" />
            <wire x2="800" y1="720" y2="752" x1="800" />
            <wire x2="928" y1="720" y2="720" x1="800" />
        </branch>
        <branch name="XLXN_33(1:0)">
            <wire x2="800" y1="880" y2="880" x1="672" />
            <wire x2="800" y1="784" y2="880" x1="800" />
            <wire x2="928" y1="784" y2="784" x1="800" />
        </branch>
        <branch name="XLXN_34(1:0)">
            <wire x2="816" y1="1008" y2="1008" x1="672" />
            <wire x2="816" y1="848" y2="1008" x1="816" />
            <wire x2="928" y1="848" y2="848" x1="816" />
        </branch>
        <instance x="272" y="560" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1088" y="272" name="Clk_50MHz" orien="R180" />
        <branch name="PS2_Clk">
            <wire x2="272" y1="336" y2="336" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="336" name="PS2_Clk" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="272" y1="400" y2="400" x1="240" />
        </branch>
        <iomarker fontsize="28" x="240" y="400" name="PS2_Data" orien="R180" />
        <branch name="XLXN_35(11:0)">
            <wire x2="1440" y1="1776" y2="1776" x1="1024" />
        </branch>
        <instance x="1440" y="1744" name="XLXI_29" orien="R0">
        </instance>
        <branch name="XLXN_40">
            <wire x2="1424" y1="1232" y2="1232" x1="1376" />
            <wire x2="1424" y1="1232" y2="1584" x1="1424" />
            <wire x2="1440" y1="1584" y2="1584" x1="1424" />
        </branch>
        <instance x="640" y="1872" name="XLXI_28" orien="R0">
        </instance>
        <instance x="928" y="1136" name="XLXI_33" orien="R0">
        </instance>
        <branch name="XLXN_42(12:0)">
            <wire x2="896" y1="592" y2="1408" x1="896" />
            <wire x2="928" y1="1408" y2="1408" x1="896" />
            <wire x2="1888" y1="592" y2="592" x1="896" />
            <wire x2="1888" y1="592" y2="1776" x1="1888" />
            <wire x2="1888" y1="1776" y2="1776" x1="1824" />
        </branch>
        <branch name="XLXN_43(12:0)">
            <wire x2="1392" y1="1488" y2="1488" x1="1376" />
            <wire x2="1392" y1="1488" y2="1664" x1="1392" />
            <wire x2="1392" y1="1664" y2="1664" x1="1376" />
            <wire x2="1376" y1="1664" y2="1840" x1="1376" />
            <wire x2="1440" y1="1840" y2="1840" x1="1376" />
        </branch>
        <branch name="XLXN_44(5:0)">
            <wire x2="576" y1="1680" y2="1840" x1="576" />
            <wire x2="640" y1="1840" y2="1840" x1="576" />
            <wire x2="736" y1="1680" y2="1680" x1="576" />
            <wire x2="736" y1="560" y2="1680" x1="736" />
            <wire x2="1440" y1="560" y2="560" x1="736" />
            <wire x2="1440" y1="560" y2="1424" x1="1440" />
            <wire x2="1440" y1="1424" y2="1424" x1="1376" />
        </branch>
        <branch name="XLXN_45(5:0)">
            <wire x2="640" y1="1776" y2="1776" x1="592" />
            <wire x2="592" y1="1776" y2="1936" x1="592" />
            <wire x2="1840" y1="1936" y2="1936" x1="592" />
            <wire x2="1840" y1="1360" y2="1360" x1="1376" />
            <wire x2="1840" y1="1360" y2="1936" x1="1840" />
        </branch>
    </sheet>
</drawing>