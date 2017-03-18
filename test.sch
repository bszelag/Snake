<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="XLXN_20(5:0)" />
        <signal name="Clr" />
        <signal name="XLXN_19(5:0)" />
        <signal name="XLXN_21(2:0)" />
        <signal name="XLXN_22(13:0)" />
        <signal name="XLXN_23(13:0)" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27(1:0)" />
        <signal name="XLXN_28(1:0)" />
        <signal name="XLXN_29(5:0)" />
        <signal name="XLXN_30(5:0)" />
        <signal name="XLXN_31(9:0)" />
        <signal name="XLXN_32(9:0)" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="Clk_50MHz" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Input" name="Clr" />
        <blockdef name="PS2_Kbd">
            <timestamp>2017-3-4T16:47:4</timestamp>
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
            <timestamp>2017-3-16T23:30:50</timestamp>
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
        <blockdef name="timer">
            <timestamp>2017-3-16T23:30:57</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VGA_640x480">
            <timestamp>2017-3-17T11:18:24</timestamp>
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
        <blockdef name="engine">
            <timestamp>2017-3-17T11:57:20</timestamp>
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
        <block symbolname="PS2_Kbd" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50MHz" name="E0" />
            <blockpin signalname="XLXN_8" name="F0" />
            <blockpin signalname="XLXN_9" name="DO_Rdy" />
            <blockpin signalname="XLXN_6(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="kbdDecoder" name="XLXI_2">
            <blockpin signalname="Clk_50MHz" name="E0" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_8" name="F0" />
            <blockpin signalname="XLXN_9" name="DI_Rdy" />
            <blockpin signalname="XLXN_6(7:0)" name="DI(7:0)" />
            <blockpin signalname="XLXN_26" name="DO_Rdy" />
            <blockpin signalname="XLXN_27(1:0)" name="DO(1:0)" />
            <blockpin signalname="XLXN_28(1:0)" name="D_Type(1:0)" />
        </block>
        <block symbolname="timer" name="XLXI_3">
            <blockpin signalname="XLXN_24" name="Start" />
            <blockpin signalname="Clk_50MHz" name="Clk" />
            <blockpin signalname="XLXN_25" name="Clk16Hz_Out" />
            <blockpin signalname="XLXN_19(5:0)" name="Sec(5:0)" />
            <blockpin signalname="XLXN_20(5:0)" name="Min(5:0)" />
        </block>
        <block symbolname="VGA_640x480" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="CLK" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_21(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_22(13:0)" name="PointsA(13:0)" />
            <blockpin signalname="XLXN_23(13:0)" name="PointsB(13:0)" />
            <blockpin signalname="XLXN_19(5:0)" name="Sec(5:0)" />
            <blockpin signalname="XLXN_20(5:0)" name="Min(5:0)" />
            <blockpin signalname="VGA_R" name="R" />
            <blockpin signalname="VGA_G" name="G" />
            <blockpin signalname="VGA_B" name="B" />
            <blockpin signalname="VGA_HS" name="HS" />
            <blockpin signalname="VGA_VS" name="VS" />
            <blockpin signalname="XLXN_29(5:0)" name="X(5:0)" />
            <blockpin signalname="XLXN_30(5:0)" name="Y(5:0)" />
            <blockpin signalname="XLXN_31(9:0)" name="pixelX(9:0)" />
            <blockpin signalname="XLXN_32(9:0)" name="pixelY(9:0)" />
        </block>
        <block symbolname="engine" name="XLXI_5">
            <blockpin signalname="XLXN_25" name="Clk" />
            <blockpin signalname="XLXN_26" name="DI_Rdy" />
            <blockpin signalname="XLXN_27(1:0)" name="DI(1:0)" />
            <blockpin signalname="XLXN_28(1:0)" name="D_Type(1:0)" />
            <blockpin signalname="XLXN_29(5:0)" name="X(5:0)" />
            <blockpin signalname="XLXN_30(5:0)" name="Y(5:0)" />
            <blockpin signalname="XLXN_31(9:0)" name="pixelX(9:0)" />
            <blockpin signalname="XLXN_32(9:0)" name="pixelY(9:0)" />
            <blockpin signalname="XLXN_24" name="Start" />
            <blockpin signalname="XLXN_21(2:0)" name="RGB(2:0)" />
            <blockpin signalname="XLXN_22(13:0)" name="outPointsA(13:0)" />
            <blockpin signalname="XLXN_23(13:0)" name="outPointsB(13:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1008" y="944" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1472" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <branch name="PS2_Data">
            <wire x2="448" y1="736" y2="736" x1="304" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="848" y1="672" y2="672" x1="832" />
            <wire x2="848" y1="672" y2="912" x1="848" />
            <wire x2="1008" y1="912" y2="912" x1="848" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="992" y1="800" y2="800" x1="832" />
            <wire x2="1008" y1="784" y2="784" x1="992" />
            <wire x2="992" y1="784" y2="800" x1="992" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="992" y1="864" y2="864" x1="832" />
            <wire x2="1008" y1="848" y2="848" x1="992" />
            <wire x2="992" y1="848" y2="864" x1="992" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2512" y1="448" y2="448" x1="2480" />
        </branch>
        <branch name="VGA_G">
            <wire x2="2512" y1="512" y2="512" x1="2480" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2512" y1="576" y2="576" x1="2480" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2512" y1="640" y2="640" x1="2480" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2512" y1="704" y2="704" x1="2480" />
        </branch>
        <branch name="XLXN_20(5:0)">
            <wire x2="2064" y1="1248" y2="1248" x1="1856" />
            <wire x2="2064" y1="1088" y2="1248" x1="2064" />
            <wire x2="2096" y1="1088" y2="1088" x1="2064" />
        </branch>
        <branch name="Clr">
            <wire x2="2080" y1="576" y2="640" x1="2080" />
            <wire x2="2096" y1="640" y2="640" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2512" y="448" name="VGA_R" orien="R0" />
        <iomarker fontsize="28" x="2512" y="512" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2512" y="576" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2512" y="640" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2512" y="704" name="VGA_VS" orien="R0" />
        <instance x="2096" y="864" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_19(5:0)">
            <wire x2="2032" y1="1184" y2="1184" x1="1856" />
            <wire x2="2032" y1="1024" y2="1184" x1="2032" />
            <wire x2="2096" y1="1024" y2="1024" x1="2032" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="400" y1="816" y2="816" x1="320" />
            <wire x2="400" y1="816" y2="864" x1="400" />
            <wire x2="400" y1="864" y2="1248" x1="400" />
            <wire x2="1472" y1="1248" y2="1248" x1="400" />
            <wire x2="448" y1="864" y2="864" x1="400" />
            <wire x2="880" y1="128" y2="128" x1="400" />
            <wire x2="2064" y1="128" y2="128" x1="880" />
            <wire x2="2064" y1="128" y2="448" x1="2064" />
            <wire x2="2096" y1="448" y2="448" x1="2064" />
            <wire x2="880" y1="128" y2="720" x1="880" />
            <wire x2="1008" y1="720" y2="720" x1="880" />
            <wire x2="400" y1="128" y2="800" x1="400" />
            <wire x2="400" y1="800" y2="816" x1="400" />
            <wire x2="448" y1="800" y2="800" x1="400" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="448" y1="672" y2="672" x1="288" />
        </branch>
        <instance x="448" y="896" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Clk_50MHz">
            <wire x2="896" y1="736" y2="736" x1="832" />
            <wire x2="1008" y1="656" y2="656" x1="896" />
            <wire x2="896" y1="656" y2="736" x1="896" />
        </branch>
        <iomarker fontsize="28" x="320" y="816" name="Clk_50MHz" orien="R180" />
        <iomarker fontsize="28" x="304" y="736" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="288" y="672" name="PS2_Clk" orien="R180" />
        <instance x="1456" y="976" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_21(2:0)">
            <wire x2="1936" y1="640" y2="640" x1="1904" />
            <wire x2="1936" y1="640" y2="832" x1="1936" />
            <wire x2="2096" y1="832" y2="832" x1="1936" />
        </branch>
        <branch name="XLXN_22(13:0)">
            <wire x2="1920" y1="784" y2="784" x1="1904" />
            <wire x2="1920" y1="784" y2="896" x1="1920" />
            <wire x2="2096" y1="896" y2="896" x1="1920" />
        </branch>
        <branch name="XLXN_23(13:0)">
            <wire x2="1904" y1="928" y2="960" x1="1904" />
            <wire x2="2096" y1="960" y2="960" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="2080" y="576" name="Clr" orien="R270" />
        <branch name="XLXN_24">
            <wire x2="1408" y1="1024" y2="1120" x1="1408" />
            <wire x2="1472" y1="1120" y2="1120" x1="1408" />
            <wire x2="1952" y1="1024" y2="1024" x1="1408" />
            <wire x2="1952" y1="496" y2="496" x1="1904" />
            <wire x2="1952" y1="496" y2="1024" x1="1952" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="1440" y1="400" y2="496" x1="1440" />
            <wire x2="1456" y1="496" y2="496" x1="1440" />
            <wire x2="1968" y1="400" y2="400" x1="1440" />
            <wire x2="1968" y1="400" y2="1120" x1="1968" />
            <wire x2="1968" y1="1120" y2="1120" x1="1856" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="1424" y1="656" y2="656" x1="1392" />
            <wire x2="1456" y1="560" y2="560" x1="1424" />
            <wire x2="1424" y1="560" y2="656" x1="1424" />
        </branch>
        <branch name="XLXN_27(1:0)">
            <wire x2="1440" y1="784" y2="784" x1="1392" />
            <wire x2="1440" y1="624" y2="784" x1="1440" />
            <wire x2="1456" y1="624" y2="624" x1="1440" />
        </branch>
        <branch name="XLXN_28(1:0)">
            <wire x2="1424" y1="912" y2="912" x1="1392" />
            <wire x2="1424" y1="688" y2="912" x1="1424" />
            <wire x2="1456" y1="688" y2="688" x1="1424" />
        </branch>
        <branch name="XLXN_29(5:0)">
            <wire x2="1392" y1="320" y2="752" x1="1392" />
            <wire x2="1456" y1="752" y2="752" x1="1392" />
            <wire x2="2496" y1="320" y2="320" x1="1392" />
            <wire x2="2496" y1="320" y2="768" x1="2496" />
            <wire x2="2496" y1="768" y2="768" x1="2480" />
        </branch>
        <branch name="XLXN_30(5:0)">
            <wire x2="1456" y1="816" y2="816" x1="1408" />
            <wire x2="1408" y1="816" y2="1392" x1="1408" />
            <wire x2="2944" y1="1392" y2="1392" x1="1408" />
            <wire x2="2944" y1="832" y2="832" x1="2480" />
            <wire x2="2944" y1="832" y2="1392" x1="2944" />
        </branch>
        <branch name="XLXN_31(9:0)">
            <wire x2="1456" y1="880" y2="880" x1="1440" />
            <wire x2="1440" y1="880" y2="1328" x1="1440" />
            <wire x2="2880" y1="1328" y2="1328" x1="1440" />
            <wire x2="2880" y1="896" y2="896" x1="2480" />
            <wire x2="2880" y1="896" y2="1328" x1="2880" />
        </branch>
        <branch name="XLXN_32(9:0)">
            <wire x2="1456" y1="944" y2="944" x1="1424" />
            <wire x2="1424" y1="944" y2="1360" x1="1424" />
            <wire x2="2848" y1="1360" y2="1360" x1="1424" />
            <wire x2="2848" y1="960" y2="960" x1="2480" />
            <wire x2="2848" y1="960" y2="1360" x1="2848" />
        </branch>
    </sheet>
</drawing>