<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.3.1">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="EELE_465">
<packages>
<package name="MC9S08QG8">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
<pad name="P$9" x="0" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$10" x="1.27" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$11" x="2.54" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$12" x="3.81" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$13" x="6.35" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$14" x="5.08" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$15" x="7.62" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$16" x="8.89" y="-1.27" drill="0.6" shape="square"/>
</package>
<package name="SN74AHC273N">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
<pad name="P$9" x="10.16" y="0" drill="0.6" shape="square"/>
<pad name="P$10" x="11.43" y="0" drill="0.6" shape="square"/>
<pad name="P$11" x="0" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$12" x="1.27" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$13" x="2.54" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$14" x="3.81" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$15" x="5.08" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$16" x="6.35" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$17" x="7.62" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$18" x="8.89" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$19" x="10.16" y="-1.27" drill="0.6" shape="square"/>
<pad name="P$20" x="11.43" y="-1.27" drill="0.6" shape="square"/>
</package>
<package name="27899PAR-ND">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
</package>
<package name="668-NC-S16204XRYHS">
<pad name="DB7" x="0" y="0" drill="0.6" shape="square"/>
<pad name="DB6" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="DB5" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="DB4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="DB3" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="DB2" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="DB1" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="DB0" x="8.89" y="0" drill="0.6" shape="square"/>
<pad name="E" x="10.16" y="0" drill="0.6" shape="square"/>
<pad name="R/W" x="11.43" y="0" drill="0.6" shape="square"/>
<pad name="RS" x="12.7" y="0" drill="0.6" shape="square"/>
<pad name="VEE" x="13.97" y="0" drill="0.6" shape="square"/>
<pad name="VDD" x="15.24" y="0" drill="0.6" shape="square"/>
<pad name="VSS" x="16.51" y="0" drill="0.6" shape="square"/>
<pad name="LEDA" x="17.78" y="0" drill="0.6" shape="square"/>
<pad name="LEDK" x="19.05" y="0" drill="0.6" shape="square"/>
</package>
<package name="MAX1044">
<pad name="P$1" x="0" y="0" drill="0.6" shape="square"/>
<pad name="P$2" x="1.27" y="0" drill="0.6" shape="square"/>
<pad name="P$3" x="2.54" y="0" drill="0.6" shape="square"/>
<pad name="P$4" x="3.81" y="0" drill="0.6" shape="square"/>
<pad name="P$5" x="5.08" y="0" drill="0.6" shape="square"/>
<pad name="P$6" x="6.35" y="0" drill="0.6" shape="square"/>
<pad name="P$7" x="7.62" y="0" drill="0.6" shape="square"/>
<pad name="P$8" x="8.89" y="0" drill="0.6" shape="square"/>
</package>
</packages>
<symbols>
<symbol name="MC9S08QG8">
<pin name="RESET_N" x="0" y="0" length="middle"/>
<pin name="BKGD" x="0" y="-5.08" length="middle"/>
<pin name="VDD" x="0" y="-10.16" length="middle"/>
<pin name="VSS" x="0" y="-15.24" length="middle"/>
<pin name="PTB7/SCL" x="0" y="-20.32" length="middle"/>
<pin name="PTB6/SDA" x="0" y="-25.4" length="middle"/>
<pin name="PTB5" x="0" y="-30.48" length="middle"/>
<pin name="PTB4" x="0" y="-35.56" length="middle"/>
<pin name="PTB3" x="33.02" y="-35.56" length="middle" rot="R180"/>
<pin name="PTB2" x="33.02" y="-30.48" length="middle" rot="R180"/>
<pin name="PTB1" x="33.02" y="-25.4" length="middle" rot="R180"/>
<pin name="PTB0" x="33.02" y="-20.32" length="middle" rot="R180"/>
<pin name="PTA3/SCL" x="33.02" y="-15.24" length="middle" rot="R180"/>
<pin name="PTA2/SDA" x="33.02" y="-10.16" length="middle" rot="R180"/>
<pin name="PTA1" x="33.02" y="-5.08" length="middle" rot="R180"/>
<pin name="PTA0" x="33.02" y="0" length="middle" rot="R180"/>
<wire x1="5.08" y1="2.54" x2="27.94" y2="2.54" width="0.254" layer="94"/>
<wire x1="27.94" y1="2.54" x2="27.94" y2="-38.1" width="0.254" layer="94"/>
<wire x1="27.94" y1="-38.1" x2="5.08" y2="-38.1" width="0.254" layer="94"/>
<wire x1="5.08" y1="-38.1" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;Name</text>
<text x="5.08" y="-43.18" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="SN74AHC273N">
<pin name="CLR_N" x="0" y="0" length="middle"/>
<pin name="1Q" x="0" y="-5.08" length="middle"/>
<pin name="1D" x="0" y="-10.16" length="middle"/>
<pin name="2D" x="0" y="-15.24" length="middle"/>
<pin name="2Q" x="0" y="-20.32" length="middle"/>
<pin name="3Q" x="0" y="-25.4" length="middle"/>
<pin name="3D" x="0" y="-30.48" length="middle"/>
<pin name="4D" x="0" y="-35.56" length="middle"/>
<pin name="4Q" x="0" y="-40.64" length="middle"/>
<pin name="GND" x="0" y="-45.72" length="middle"/>
<pin name="CLK" x="25.4" y="-45.72" length="middle" rot="R180"/>
<pin name="5Q" x="25.4" y="-40.64" length="middle" rot="R180"/>
<pin name="5D" x="25.4" y="-35.56" length="middle" rot="R180"/>
<pin name="6D" x="25.4" y="-30.48" length="middle" rot="R180"/>
<pin name="6Q" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="7Q" x="25.4" y="-20.32" length="middle" rot="R180"/>
<pin name="7D" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="8D" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="8Q" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="VCC" x="25.4" y="0" length="middle" rot="R180"/>
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="-48.26" width="0.254" layer="94"/>
<wire x1="20.32" y1="-48.26" x2="5.08" y2="-48.26" width="0.254" layer="94"/>
<wire x1="5.08" y1="-48.26" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;Name</text>
<text x="5.08" y="-53.34" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="27899PAR-ND">
<circle x="0" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="0" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="0" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="15.24" y="-7.62" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<circle x="7.62" y="-22.86" radius="2.54" width="0.254" layer="94"/>
<circle x="22.86" y="-15.24" radius="2.54" width="0.254" layer="94"/>
<text x="-2.54" y="2.54" size="1.778" layer="95">1</text>
<text x="5.08" y="2.54" size="1.778" layer="95">2</text>
<text x="12.7" y="2.54" size="1.778" layer="95">3</text>
<text x="-2.54" y="-5.08" size="1.778" layer="95">4</text>
<text x="5.08" y="-5.08" size="1.778" layer="95">5</text>
<text x="12.7" y="-5.08" size="1.778" layer="95">6</text>
<text x="-2.54" y="-12.7" size="1.778" layer="95">7</text>
<text x="5.08" y="-12.7" size="1.778" layer="95">8</text>
<text x="12.7" y="-12.7" size="1.778" layer="95">9</text>
<text x="-2.54" y="-20.32" size="1.778" layer="95">*</text>
<text x="5.08" y="-20.32" size="1.778" layer="95">0</text>
<text x="12.7" y="-20.32" size="1.778" layer="95">#</text>
<text x="20.32" y="2.54" size="1.778" layer="95">A</text>
<text x="20.32" y="-5.08" size="1.778" layer="95">B</text>
<text x="20.32" y="-12.7" size="1.778" layer="95">C</text>
<text x="20.32" y="-20.32" size="1.778" layer="95">D</text>
<wire x1="-5.08" y1="5.08" x2="27.94" y2="5.08" width="0.254" layer="94"/>
<wire x1="27.94" y1="5.08" x2="27.94" y2="-27.94" width="0.254" layer="94"/>
<wire x1="27.94" y1="-27.94" x2="-5.08" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-5.08" y1="-27.94" x2="-5.08" y2="5.08" width="0.254" layer="94"/>
<pin name="P$1" x="-10.16" y="0" visible="off" length="middle"/>
<pin name="P$2" x="-10.16" y="-7.62" visible="off" length="middle"/>
<pin name="P$3" x="-10.16" y="-15.24" visible="off" length="middle"/>
<pin name="P$4" x="-10.16" y="-22.86" visible="off" length="middle"/>
<pin name="P$5" x="22.86" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$6" x="15.24" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$7" x="7.62" y="-33.02" visible="off" length="middle" rot="R90"/>
<pin name="P$8" x="0" y="-33.02" visible="off" length="middle" rot="R90"/>
<text x="-5.08" y="7.62" size="1.778" layer="95">&gt;Name</text>
<text x="20.32" y="7.62" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="668-NC-S16204XRYHS">
<pin name="VSS" x="0" y="-66.04" length="middle"/>
<pin name="VDD" x="0" y="-60.96" length="middle"/>
<pin name="VEE" x="0" y="-55.88" length="middle"/>
<pin name="RS" x="0" y="-50.8" length="middle"/>
<pin name="R/W" x="0" y="-45.72" length="middle"/>
<pin name="E" x="0" y="-40.64" length="middle"/>
<pin name="DB0" x="0" y="-35.56" length="middle"/>
<pin name="DB1" x="0" y="-30.48" length="middle"/>
<pin name="DB2" x="0" y="-25.4" length="middle"/>
<pin name="DB3" x="0" y="-20.32" length="middle"/>
<pin name="DB4" x="0" y="-15.24" length="middle"/>
<pin name="DB5" x="0" y="-10.16" length="middle"/>
<pin name="DB6" x="0" y="-5.08" length="middle"/>
<pin name="DB7" x="0" y="0" length="middle"/>
<pin name="LEDA" x="0" y="-71.12" length="middle"/>
<pin name="LEDK" x="0" y="-76.2" length="middle"/>
<wire x1="5.08" y1="-78.74" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="12.7" y2="2.54" width="0.254" layer="94"/>
<wire x1="12.7" y1="2.54" x2="12.7" y2="-78.74" width="0.254" layer="94"/>
<wire x1="12.7" y1="-78.74" x2="5.08" y2="-78.74" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;Name</text>
<text x="5.08" y="-83.82" size="1.778" layer="95">&gt;Value</text>
</symbol>
<symbol name="MAX1044">
<pin name="N.C." x="0" y="0" length="middle"/>
<pin name="CAP+" x="0" y="-5.08" length="middle"/>
<pin name="GND" x="0" y="-10.16" length="middle"/>
<pin name="CAP-" x="0" y="-15.24" length="middle"/>
<pin name="V+" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="OSC" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="LV" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="VOUT" x="25.4" y="-15.24" length="middle" rot="R180"/>
<wire x1="5.08" y1="2.54" x2="20.32" y2="2.54" width="0.254" layer="94"/>
<wire x1="20.32" y1="2.54" x2="20.32" y2="-17.78" width="0.254" layer="94"/>
<wire x1="20.32" y1="-17.78" x2="5.08" y2="-17.78" width="0.254" layer="94"/>
<wire x1="5.08" y1="-17.78" x2="5.08" y2="2.54" width="0.254" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;Name</text>
<text x="5.08" y="-22.86" size="1.778" layer="95">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MC9S08QG8">
<gates>
<gate name="G$1" symbol="MC9S08QG8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MC9S08QG8">
<connects>
<connect gate="G$1" pin="BKGD" pad="P$1"/>
<connect gate="G$1" pin="PTA0" pad="P$2"/>
<connect gate="G$1" pin="PTA1" pad="P$3"/>
<connect gate="G$1" pin="PTA2/SDA" pad="P$4"/>
<connect gate="G$1" pin="PTA3/SCL" pad="P$5"/>
<connect gate="G$1" pin="PTB0" pad="P$6"/>
<connect gate="G$1" pin="PTB1" pad="P$7"/>
<connect gate="G$1" pin="PTB2" pad="P$8"/>
<connect gate="G$1" pin="PTB3" pad="P$9"/>
<connect gate="G$1" pin="PTB4" pad="P$10"/>
<connect gate="G$1" pin="PTB5" pad="P$11"/>
<connect gate="G$1" pin="PTB6/SDA" pad="P$12"/>
<connect gate="G$1" pin="PTB7/SCL" pad="P$13"/>
<connect gate="G$1" pin="RESET_N" pad="P$14"/>
<connect gate="G$1" pin="VDD" pad="P$15"/>
<connect gate="G$1" pin="VSS" pad="P$16"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SN74AHC273N">
<gates>
<gate name="G$1" symbol="SN74AHC273N" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SN74AHC273N">
<connects>
<connect gate="G$1" pin="1D" pad="P$1"/>
<connect gate="G$1" pin="1Q" pad="P$2"/>
<connect gate="G$1" pin="2D" pad="P$3"/>
<connect gate="G$1" pin="2Q" pad="P$4"/>
<connect gate="G$1" pin="3D" pad="P$5"/>
<connect gate="G$1" pin="3Q" pad="P$6"/>
<connect gate="G$1" pin="4D" pad="P$7"/>
<connect gate="G$1" pin="4Q" pad="P$8"/>
<connect gate="G$1" pin="5D" pad="P$9"/>
<connect gate="G$1" pin="5Q" pad="P$10"/>
<connect gate="G$1" pin="6D" pad="P$11"/>
<connect gate="G$1" pin="6Q" pad="P$12"/>
<connect gate="G$1" pin="7D" pad="P$13"/>
<connect gate="G$1" pin="7Q" pad="P$14"/>
<connect gate="G$1" pin="8D" pad="P$15"/>
<connect gate="G$1" pin="8Q" pad="P$16"/>
<connect gate="G$1" pin="CLK" pad="P$17"/>
<connect gate="G$1" pin="CLR_N" pad="P$18"/>
<connect gate="G$1" pin="GND" pad="P$19"/>
<connect gate="G$1" pin="VCC" pad="P$20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="27899PAR-ND">
<gates>
<gate name="G$1" symbol="27899PAR-ND" x="0" y="0"/>
</gates>
<devices>
<device name="" package="27899PAR-ND">
<connects>
<connect gate="G$1" pin="P$1" pad="P$1"/>
<connect gate="G$1" pin="P$2" pad="P$2"/>
<connect gate="G$1" pin="P$3" pad="P$3"/>
<connect gate="G$1" pin="P$4" pad="P$4"/>
<connect gate="G$1" pin="P$5" pad="P$5"/>
<connect gate="G$1" pin="P$6" pad="P$6"/>
<connect gate="G$1" pin="P$7" pad="P$7"/>
<connect gate="G$1" pin="P$8" pad="P$8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="668-NC-S16204XRYHS">
<gates>
<gate name="G$1" symbol="668-NC-S16204XRYHS" x="0" y="0"/>
</gates>
<devices>
<device name="" package="668-NC-S16204XRYHS">
<connects>
<connect gate="G$1" pin="DB0" pad="DB0"/>
<connect gate="G$1" pin="DB1" pad="DB1"/>
<connect gate="G$1" pin="DB2" pad="DB2"/>
<connect gate="G$1" pin="DB3" pad="DB3"/>
<connect gate="G$1" pin="DB4" pad="DB4"/>
<connect gate="G$1" pin="DB5" pad="DB5"/>
<connect gate="G$1" pin="DB6" pad="DB6"/>
<connect gate="G$1" pin="DB7" pad="DB7"/>
<connect gate="G$1" pin="E" pad="E"/>
<connect gate="G$1" pin="LEDA" pad="LEDA"/>
<connect gate="G$1" pin="LEDK" pad="LEDK"/>
<connect gate="G$1" pin="R/W" pad="R/W"/>
<connect gate="G$1" pin="RS" pad="RS"/>
<connect gate="G$1" pin="VDD" pad="VDD"/>
<connect gate="G$1" pin="VEE" pad="VEE"/>
<connect gate="G$1" pin="VSS" pad="VSS"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MAX1044">
<gates>
<gate name="G$1" symbol="MAX1044" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MAX1044">
<connects>
<connect gate="G$1" pin="CAP+" pad="P$1"/>
<connect gate="G$1" pin="CAP-" pad="P$2"/>
<connect gate="G$1" pin="GND" pad="P$3"/>
<connect gate="G$1" pin="LV" pad="P$4"/>
<connect gate="G$1" pin="N.C." pad="P$5"/>
<connect gate="G$1" pin="OSC" pad="P$6"/>
<connect gate="G$1" pin="V+" pad="P$7"/>
<connect gate="G$1" pin="VOUT" pad="P$8"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor-bourns" urn="urn:adsk.eagle:library:341">
<description>&lt;b&gt;Bourns Resistor Networks&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="2QSP16" urn="urn:adsk.eagle:footprint:24844/1" library_version="1">
<description>&lt;b&gt;BOURNS RESISTOR NETWORK&lt;/b&gt;</description>
<wire x1="2.693" y1="1.86" x2="2.693" y2="-1.86" width="0.2032" layer="21"/>
<wire x1="2.693" y1="-1.86" x2="-2.683" y2="-1.86" width="0.2032" layer="51"/>
<wire x1="-2.683" y1="-1.86" x2="-2.683" y2="1.86" width="0.2032" layer="21"/>
<wire x1="-2.683" y1="1.86" x2="2.693" y2="1.86" width="0.2032" layer="51"/>
<wire x1="-2.568" y1="-1.4" x2="2.618" y2="-1.4" width="0.2032" layer="21"/>
<smd name="1" x="-2.223" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="2" x="-1.588" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="3" x="-0.953" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="4" x="-0.318" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="5" x="0.318" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="6" x="0.953" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="7" x="1.588" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="8" x="2.223" y="-2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="9" x="2.223" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="10" x="1.588" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="11" x="0.953" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="12" x="0.318" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="13" x="-0.318" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="14" x="-0.953" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="15" x="-1.588" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<smd name="16" x="-2.223" y="2.6" dx="0.4" dy="1.5" layer="1"/>
<text x="-3.2575" y="-2.975" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="4.4275" y="-3.375" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.3725" y1="-3.1" x2="-2.0725" y2="-1.9" layer="51"/>
<rectangle x1="-1.7375" y1="-3.1" x2="-1.4375" y2="-1.9" layer="51"/>
<rectangle x1="-1.1025" y1="-3.1" x2="-0.8025" y2="-1.9" layer="51"/>
<rectangle x1="-0.4675" y1="-3.1" x2="-0.1675" y2="-1.9" layer="51"/>
<rectangle x1="0.1675" y1="-3.1" x2="0.4675" y2="-1.9" layer="51"/>
<rectangle x1="0.8025" y1="-3.1" x2="1.1025" y2="-1.9" layer="51"/>
<rectangle x1="1.4375" y1="-3.1" x2="1.7375" y2="-1.9" layer="51"/>
<rectangle x1="2.0725" y1="-3.1" x2="2.3725" y2="-1.9" layer="51"/>
<rectangle x1="2.0725" y1="1.9" x2="2.3725" y2="3.1" layer="51"/>
<rectangle x1="1.4375" y1="1.9" x2="1.7375" y2="3.1" layer="51"/>
<rectangle x1="0.8025" y1="1.9" x2="1.1025" y2="3.1" layer="51"/>
<rectangle x1="0.1675" y1="1.9" x2="0.4675" y2="3.1" layer="51"/>
<rectangle x1="-0.4675" y1="1.9" x2="-0.1675" y2="3.1" layer="51"/>
<rectangle x1="-1.1025" y1="1.9" x2="-0.8025" y2="3.1" layer="51"/>
<rectangle x1="-1.7375" y1="1.9" x2="-1.4375" y2="3.1" layer="51"/>
<rectangle x1="-2.3725" y1="1.9" x2="-2.0725" y2="3.1" layer="51"/>
</package>
</packages>
<packages3d>
<package3d name="2QSP16" urn="urn:adsk.eagle:package:24857/1" type="box" library_version="1">
<description>BOURNS RESISTOR NETWORK</description>
</package3d>
</packages3d>
<symbols>
<symbol name="RX08" urn="urn:adsk.eagle:symbol:24843/1" library_version="1">
<wire x1="-2.54" y1="8.382" x2="-2.54" y2="6.858" width="0.254" layer="94"/>
<wire x1="-2.54" y1="6.858" x2="2.54" y2="6.858" width="0.254" layer="94"/>
<wire x1="2.54" y1="6.858" x2="2.54" y2="8.382" width="0.254" layer="94"/>
<wire x1="2.54" y1="8.382" x2="-2.54" y2="8.382" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.842" x2="-2.54" y2="4.318" width="0.254" layer="94"/>
<wire x1="-2.54" y1="4.318" x2="2.54" y2="4.318" width="0.254" layer="94"/>
<wire x1="2.54" y1="4.318" x2="2.54" y2="5.842" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.842" x2="-2.54" y2="5.842" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.302" x2="-2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.778" x2="2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.302" x2="-2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.762" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.762" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.762" x2="-2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.778" x2="-2.54" y2="-3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-3.302" x2="2.54" y2="-3.302" width="0.254" layer="94"/>
<wire x1="2.54" y1="-3.302" x2="2.54" y2="-1.778" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.778" x2="-2.54" y2="-1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-4.318" x2="-2.54" y2="-5.842" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-5.842" x2="2.54" y2="-5.842" width="0.254" layer="94"/>
<wire x1="2.54" y1="-5.842" x2="2.54" y2="-4.318" width="0.254" layer="94"/>
<wire x1="2.54" y1="-4.318" x2="-2.54" y2="-4.318" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-6.858" x2="-2.54" y2="-8.382" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-8.382" x2="2.54" y2="-8.382" width="0.254" layer="94"/>
<wire x1="2.54" y1="-8.382" x2="2.54" y2="-6.858" width="0.254" layer="94"/>
<wire x1="2.54" y1="-6.858" x2="-2.54" y2="-6.858" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-9.398" x2="-2.54" y2="-10.922" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-10.922" x2="2.54" y2="-10.922" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.922" x2="2.54" y2="-9.398" width="0.254" layer="94"/>
<wire x1="2.54" y1="-9.398" x2="-2.54" y2="-9.398" width="0.254" layer="94"/>
<text x="-3.81" y="9.398" size="1.778" layer="95">&gt;NAME</text>
<text x="-4.572" y="-13.716" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="7.62" visible="pad" length="short" direction="pas"/>
<pin name="2" x="-5.08" y="5.08" visible="pad" length="short" direction="pas"/>
<pin name="3" x="-5.08" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="4" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="5" x="-5.08" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="6" x="-5.08" y="-5.08" visible="pad" length="short" direction="pas"/>
<pin name="7" x="-5.08" y="-7.62" visible="pad" length="short" direction="pas"/>
<pin name="8" x="-5.08" y="-10.16" visible="pad" length="short" direction="pas"/>
<pin name="9" x="5.08" y="-10.16" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="10" x="5.08" y="-7.62" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="11" x="5.08" y="-5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="12" x="5.08" y="-2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="13" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="14" x="5.08" y="2.54" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="15" x="5.08" y="5.08" visible="pad" length="short" direction="pas" rot="R180"/>
<pin name="16" x="5.08" y="7.62" visible="pad" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="2QSP16-8" urn="urn:adsk.eagle:component:24868/1" prefix="R" uservalue="yes" library_version="1">
<description>&lt;b&gt;BOURNS RESISTOR NETWORK&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="RX08" x="0" y="0"/>
</gates>
<devices>
<device name="" package="2QSP16">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24857/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="LB10" urn="urn:adsk.eagle:footprint:15638/1" library_version="2">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
10-LED bar graph, DIL, Siemens</description>
<wire x1="-12.7" y1="-4.445" x2="-12.7" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="5.08" x2="12.7" y2="5.08" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-5.08" x2="12.7" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-4.445" x2="-12.065" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-5.08" x2="12.7" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="2.54" x2="-10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.54" x2="-10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-2.54" x2="-12.446" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-12.446" y1="-2.54" x2="-12.446" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="2.54" x2="-7.874" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="2.54" x2="-7.874" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-2.54" x2="-9.906" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.54" x2="-9.906" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="2.54" x2="-5.334" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="2.54" x2="-5.334" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-2.54" x2="-7.366" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="-2.54" x2="-7.366" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.54" x2="-4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.54" x2="-2.794" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-2.54" x2="-2.794" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.54" x2="-4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="2.54" x2="-2.286" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-2.54" x2="-0.254" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-2.54" x2="-0.254" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="2.54" x2="-2.286" y2="2.54" width="0.1524" layer="21"/>
<wire x1="0.254" y1="2.54" x2="0.254" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="0.254" y1="-2.54" x2="2.286" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-2.54" x2="2.286" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.286" y1="2.54" x2="0.254" y2="2.54" width="0.1524" layer="21"/>
<wire x1="2.794" y1="2.54" x2="2.794" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.794" y1="-2.54" x2="4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.54" x2="4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.54" x2="2.794" y2="2.54" width="0.1524" layer="21"/>
<wire x1="5.334" y1="2.54" x2="5.334" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.334" y1="-2.54" x2="7.366" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-2.54" x2="7.366" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.366" y1="2.54" x2="5.334" y2="2.54" width="0.1524" layer="21"/>
<wire x1="7.874" y1="2.54" x2="7.874" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="7.874" y1="-2.54" x2="9.906" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-2.54" x2="9.906" y2="2.54" width="0.1524" layer="21"/>
<wire x1="9.906" y1="2.54" x2="7.874" y2="2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="2.54" x2="10.414" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.54" x2="12.446" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.446" y1="-2.54" x2="12.446" y2="2.54" width="0.1524" layer="21"/>
<wire x1="12.446" y1="2.54" x2="10.414" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-11.684" y1="-1.143" x2="-11.684" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-12.065" y1="-0.762" x2="-11.303" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-12.065" y1="-0.762" x2="-11.684" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="0.254" x2="-11.684" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="0.254" x2="-11.303" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-12.065" y1="0.254" x2="-11.684" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="0.254" x2="-11.303" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="0.635" x2="-10.922" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="0.889" x2="-11.176" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="0.889" x2="-11.0744" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-11.0744" y1="0.6858" x2="-11.176" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-11.43" y1="1.143" x2="-10.922" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="1.397" x2="-11.176" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-10.922" y1="1.397" x2="-11.0744" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-11.0744" y1="1.1938" x2="-11.176" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-1.143" x2="-9.144" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-9.525" y1="-0.762" x2="-8.763" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-9.525" y1="-0.762" x2="-9.144" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="0.254" x2="-9.144" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="0.254" x2="-8.763" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-9.525" y1="0.254" x2="-9.144" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="0.254" x2="-8.763" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="0.635" x2="-8.382" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="0.889" x2="-8.636" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="0.889" x2="-8.5344" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-8.5344" y1="0.6858" x2="-8.636" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-8.89" y1="1.143" x2="-8.382" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="1.397" x2="-8.636" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="1.397" x2="-8.5344" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-8.5344" y1="1.1938" x2="-8.636" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-1.143" x2="-6.604" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="-0.762" x2="-6.223" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="-0.762" x2="-6.604" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="0.254" x2="-6.604" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="0.254" x2="-6.223" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="0.254" x2="-6.604" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="0.254" x2="-6.223" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="0.635" x2="-5.842" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="0.889" x2="-6.096" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="0.889" x2="-5.9944" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="0.6858" x2="-6.096" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-6.35" y1="1.143" x2="-5.842" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="1.397" x2="-6.096" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="1.397" x2="-5.9944" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-5.9944" y1="1.1938" x2="-6.096" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-1.143" x2="-4.064" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-4.445" y1="-0.762" x2="-3.683" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.445" y1="-0.762" x2="-4.064" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.254" x2="-4.064" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.254" x2="-3.683" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-4.445" y1="0.254" x2="-4.064" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="0.254" x2="-3.683" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="0.635" x2="-3.302" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.889" x2="-3.556" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="0.889" x2="-3.4544" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-3.4544" y1="0.6858" x2="-3.556" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="1.143" x2="-3.302" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.397" x2="-3.556" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="1.397" x2="-3.4544" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-3.4544" y1="1.1938" x2="-3.556" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-1.143" x2="-1.524" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-0.762" x2="-1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="-0.762" x2="-1.524" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.254" x2="-1.524" y2="1.524" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.254" x2="-1.143" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-1.905" y1="0.254" x2="-1.524" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="0.254" x2="-1.143" y2="0.254" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="0.635" x2="-0.762" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.889" x2="-1.016" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="0.889" x2="-0.9144" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="-0.9144" y1="0.6858" x2="-1.016" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.27" y1="1.143" x2="-0.762" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.397" x2="-1.016" y2="1.397" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="1.397" x2="-0.9144" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="-0.9144" y1="1.1938" x2="-1.016" y2="1.397" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-1.143" x2="1.016" y2="0.254" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.762" x2="1.397" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-0.762" x2="1.016" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.254" x2="1.016" y2="1.524" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.254" x2="1.397" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="0.635" y1="0.254" x2="1.016" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.016" y1="0.254" x2="1.397" y2="0.254" width="0.1524" layer="51"/>
<wire x1="1.27" y1="0.635" x2="1.778" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0.889" x2="1.524" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0.889" x2="1.6256" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="0.6858" x2="1.524" y2="0.889" width="0.1524" layer="51"/>
<wire x1="1.27" y1="1.143" x2="1.778" y2="1.397" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.397" x2="1.524" y2="1.397" width="0.1524" layer="51"/>
<wire x1="1.778" y1="1.397" x2="1.6256" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="1.6256" y1="1.1938" x2="1.524" y2="1.397" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-1.143" x2="3.556" y2="0.254" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-0.762" x2="3.937" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="3.175" y1="-0.762" x2="3.556" y2="0.254" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.254" x2="3.556" y2="1.524" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.254" x2="3.937" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="3.175" y1="0.254" x2="3.556" y2="0.254" width="0.1524" layer="51"/>
<wire x1="3.556" y1="0.254" x2="3.937" y2="0.254" width="0.1524" layer="51"/>
<wire x1="3.81" y1="0.635" x2="4.318" y2="0.889" width="0.1524" layer="51"/>
<wire x1="4.318" y1="0.889" x2="4.064" y2="0.889" width="0.1524" layer="51"/>
<wire x1="4.318" y1="0.889" x2="4.1656" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="0.6858" x2="4.064" y2="0.889" width="0.1524" layer="51"/>
<wire x1="3.81" y1="1.143" x2="4.318" y2="1.397" width="0.1524" layer="51"/>
<wire x1="4.318" y1="1.397" x2="4.064" y2="1.397" width="0.1524" layer="51"/>
<wire x1="4.318" y1="1.397" x2="4.1656" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="4.1656" y1="1.1938" x2="4.064" y2="1.397" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-1.143" x2="6.096" y2="0.254" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.762" x2="6.477" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="5.715" y1="-0.762" x2="6.096" y2="0.254" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.254" x2="6.096" y2="1.524" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.254" x2="6.477" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="5.715" y1="0.254" x2="6.096" y2="0.254" width="0.1524" layer="51"/>
<wire x1="6.096" y1="0.254" x2="6.477" y2="0.254" width="0.1524" layer="51"/>
<wire x1="6.35" y1="0.635" x2="6.858" y2="0.889" width="0.1524" layer="51"/>
<wire x1="6.858" y1="0.889" x2="6.604" y2="0.889" width="0.1524" layer="51"/>
<wire x1="6.858" y1="0.889" x2="6.7056" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="6.7056" y1="0.6858" x2="6.604" y2="0.889" width="0.1524" layer="51"/>
<wire x1="6.35" y1="1.143" x2="6.858" y2="1.397" width="0.1524" layer="51"/>
<wire x1="6.858" y1="1.397" x2="6.604" y2="1.397" width="0.1524" layer="51"/>
<wire x1="6.858" y1="1.397" x2="6.7056" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="6.7056" y1="1.1938" x2="6.604" y2="1.397" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-1.143" x2="8.636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.762" x2="9.017" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.762" x2="8.636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="8.636" y1="0.254" x2="8.636" y2="1.524" width="0.1524" layer="51"/>
<wire x1="8.636" y1="0.254" x2="9.017" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.254" x2="8.636" y2="0.254" width="0.1524" layer="51"/>
<wire x1="8.636" y1="0.254" x2="9.017" y2="0.254" width="0.1524" layer="51"/>
<wire x1="8.89" y1="0.635" x2="9.398" y2="0.889" width="0.1524" layer="51"/>
<wire x1="9.398" y1="0.889" x2="9.144" y2="0.889" width="0.1524" layer="51"/>
<wire x1="9.398" y1="0.889" x2="9.2456" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="9.2456" y1="0.6858" x2="9.144" y2="0.889" width="0.1524" layer="51"/>
<wire x1="8.89" y1="1.143" x2="9.398" y2="1.397" width="0.1524" layer="51"/>
<wire x1="9.398" y1="1.397" x2="9.144" y2="1.397" width="0.1524" layer="51"/>
<wire x1="9.398" y1="1.397" x2="9.2456" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="9.2456" y1="1.1938" x2="9.144" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.176" y1="-1.143" x2="11.176" y2="0.254" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-0.762" x2="11.557" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="10.795" y1="-0.762" x2="11.176" y2="0.254" width="0.1524" layer="51"/>
<wire x1="11.176" y1="0.254" x2="11.176" y2="1.524" width="0.1524" layer="51"/>
<wire x1="11.176" y1="0.254" x2="11.557" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="10.795" y1="0.254" x2="11.176" y2="0.254" width="0.1524" layer="51"/>
<wire x1="11.176" y1="0.254" x2="11.557" y2="0.254" width="0.1524" layer="51"/>
<wire x1="11.43" y1="0.635" x2="11.938" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.938" y1="0.889" x2="11.684" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.938" y1="0.889" x2="11.7856" y2="0.6858" width="0.1524" layer="51"/>
<wire x1="11.7856" y1="0.6858" x2="11.684" y2="0.889" width="0.1524" layer="51"/>
<wire x1="11.43" y1="1.143" x2="11.938" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.938" y1="1.397" x2="11.684" y2="1.397" width="0.1524" layer="51"/>
<wire x1="11.938" y1="1.397" x2="11.7856" y2="1.1938" width="0.1524" layer="51"/>
<wire x1="11.7856" y1="1.1938" x2="11.684" y2="1.397" width="0.1524" layer="51"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-11.43" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-12.7" y="5.715" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="5.715" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="LB10" urn="urn:adsk.eagle:package:15791/1" type="box" library_version="2">
<description>LED BLOCK
10-LED bar graph, DIL, Siemens</description>
</package3d>
</packages3d>
<symbols>
<symbol name="LED-A" urn="urn:adsk.eagle:symbol:15637/1" library_version="2">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.318" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.318" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="pad" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="LB10" urn="urn:adsk.eagle:component:15899/1" prefix="DZ" library_version="2">
<description>&lt;B&gt;LED BLOCK&lt;/B&gt;&lt;p&gt;
10-LED bar graph, DIL, Siemens</description>
<gates>
<gate name="-1" symbol="LED-A" x="0" y="0" addlevel="always"/>
<gate name="-2" symbol="LED-A" x="15.24" y="0" addlevel="always"/>
<gate name="-3" symbol="LED-A" x="30.48" y="0" addlevel="always"/>
<gate name="-4" symbol="LED-A" x="45.72" y="0" addlevel="always"/>
<gate name="-5" symbol="LED-A" x="60.96" y="0" addlevel="always"/>
<gate name="-6" symbol="LED-A" x="0" y="-17.78" addlevel="always"/>
<gate name="-7" symbol="LED-A" x="15.24" y="-17.78" addlevel="always"/>
<gate name="-8" symbol="LED-A" x="30.48" y="-17.78" addlevel="always"/>
<gate name="-9" symbol="LED-A" x="45.72" y="-17.78" addlevel="always"/>
<gate name="-10" symbol="LED-A" x="60.96" y="-17.78" addlevel="always"/>
</gates>
<devices>
<device name="" package="LB10">
<connects>
<connect gate="-1" pin="A" pad="1"/>
<connect gate="-1" pin="C" pad="20"/>
<connect gate="-10" pin="A" pad="10"/>
<connect gate="-10" pin="C" pad="11"/>
<connect gate="-2" pin="A" pad="2"/>
<connect gate="-2" pin="C" pad="19"/>
<connect gate="-3" pin="A" pad="3"/>
<connect gate="-3" pin="C" pad="18"/>
<connect gate="-4" pin="A" pad="4"/>
<connect gate="-4" pin="C" pad="17"/>
<connect gate="-5" pin="A" pad="5"/>
<connect gate="-5" pin="C" pad="16"/>
<connect gate="-6" pin="A" pad="6"/>
<connect gate="-6" pin="C" pad="15"/>
<connect gate="-7" pin="A" pad="7"/>
<connect gate="-7" pin="C" pad="14"/>
<connect gate="-8" pin="A" pad="8"/>
<connect gate="-8" pin="C" pad="13"/>
<connect gate="-9" pin="A" pad="9"/>
<connect gate="-9" pin="C" pad="12"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15791/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="ngspice-simulation" urn="urn:adsk.eagle:library:527439">
<description>SPICE compatible library parts</description>
<packages>
</packages>
<symbols>
<symbol name="0" urn="urn:adsk.eagle:symbol:527455/1" library_version="16">
<description>Simulation ground symbol (spice node 0)</description>
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-2.54" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<pin name="0" x="0" y="0" visible="off" length="point" direction="sup"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:527478/1" prefix="X_" library_version="16">
<description>Simulation ground symbol (spice node 0)</description>
<gates>
<gate name="G$1" symbol="0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="SPICEGROUND" value=""/>
<attribute name="_EXTERNAL_" value=""/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="resistor-sil" urn="urn:adsk.eagle:library:347">
<description>&lt;b&gt;Resistors in Single Inline Packages&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SIL8" urn="urn:adsk.eagle:footprint:25241/1" library_version="1">
<description>&lt;b&gt;Single In Line&lt;/b&gt;</description>
<wire x1="-9.652" y1="-1.016" x2="9.652" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="9.652" y1="1.016" x2="-9.652" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-9.652" y1="0.762" x2="-8.128" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.762" x2="-8.128" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.762" x2="-9.652" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="-9.652" y1="-0.762" x2="-9.652" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-8.001" y1="0.889" x2="-8.001" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="-0.889" x2="-9.779" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.508" x2="-9.652" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="9.652" y1="-1.016" x2="10.16" y2="-0.508" width="0.1524" layer="21" curve="90"/>
<wire x1="9.652" y1="1.016" x2="10.16" y2="0.508" width="0.1524" layer="21" curve="-90"/>
<wire x1="-10.16" y1="-0.508" x2="-9.652" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="10.16" y1="0.508" x2="10.16" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.508" x2="-10.16" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="-0.889" x2="-9.779" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-9.779" y1="0.889" x2="-8.001" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="1.778" y1="0" x2="1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0.381" x2="1.143" y2="0.381" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0.381" x2="1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="1.143" y1="0" x2="1.143" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-0.381" x2="-1.143" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-0.381" x2="-1.143" y2="0" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="0" x2="-1.143" y2="0.381" width="0.1524" layer="51"/>
<pad name="1" x="-8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.16" y="1.27" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="1.27" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-11.176" y="-0.508" size="0.9906" layer="21" ratio="12">1</text>
</package>
</packages>
<packages3d>
<package3d name="SIL8" urn="urn:adsk.eagle:package:25280/1" type="box" library_version="1">
<description>Single In Line</description>
</package3d>
</packages3d>
<symbols>
<symbol name="RPV" urn="urn:adsk.eagle:symbol:25248/1" library_version="1">
<wire x1="-2.54" y1="-0.762" x2="2.54" y2="-0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.762" x2="-2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0.762" x2="-2.54" y2="-0.762" width="0.254" layer="94"/>
<text x="-5.08" y="-2.794" size="1.778" layer="95">&gt;PART</text>
<text x="2.54" y="-2.794" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="E4RP" urn="urn:adsk.eagle:component:25291/1" prefix="RN" uservalue="yes" library_version="1">
<description>&lt;b&gt;SIL RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="RPV" x="0" y="15.24" addlevel="always" swaplevel="1"/>
<gate name="B" symbol="RPV" x="0" y="7.62" addlevel="always" swaplevel="1"/>
<gate name="C" symbol="RPV" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="D" symbol="RPV" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="SIL8">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="B" pin="1" pad="3"/>
<connect gate="B" pin="2" pad="4"/>
<connect gate="C" pin="1" pad="5"/>
<connect gate="C" pin="2" pad="6"/>
<connect gate="D" pin="1" pad="7"/>
<connect gate="D" pin="2" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:25280/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="capacitor-wima" urn="urn:adsk.eagle:library:116">
<description>&lt;b&gt;WIMA Capacitors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="C10B4" urn="urn:adsk.eagle:footprint:5353/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 4 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.032" x2="6.096" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.604" y1="1.524" x2="6.604" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.032" x2="-6.096" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-1.524" x2="-6.604" y2="1.524" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.032" x2="6.604" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.032" x2="6.604" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-1.524" x2="-6.096" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="1.524" x2="-6.096" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-3.429" y="2.413" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.651" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C10B5" urn="urn:adsk.eagle:footprint:5354/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 5 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="2.54" x2="6.096" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.032" x2="6.604" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-2.54" x2="-6.096" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.032" x2="-6.604" y2="2.032" width="0.1524" layer="21"/>
<wire x1="6.096" y1="2.54" x2="6.604" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-2.54" x2="6.604" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.032" x2="-6.096" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.032" x2="-6.096" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-5.08" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-1.905" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C10B6" urn="urn:adsk.eagle:footprint:5355/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 13.4 x 6 mm, grid 10.16 mm</description>
<wire x1="-3.175" y1="1.27" x2="-3.175" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.286" y1="1.27" x2="-2.286" y2="0" width="0.4064" layer="21"/>
<wire x1="3.81" y1="0" x2="-2.286" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="0" x2="-2.286" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-3.81" y1="0" x2="-3.175" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="0" x2="-3.175" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-6.096" y1="3.048" x2="6.096" y2="3.048" width="0.1524" layer="21"/>
<wire x1="6.604" y1="2.54" x2="6.604" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-3.048" x2="-6.096" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="-2.54" x2="-6.604" y2="2.54" width="0.1524" layer="21"/>
<wire x1="6.096" y1="3.048" x2="6.604" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.096" y1="-3.048" x2="6.604" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="-2.54" x2="-6.096" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.604" y1="2.54" x2="-6.096" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-5.08" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.524" y="-2.032" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B5" urn="urn:adsk.eagle:footprint:5356/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 5 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.032" x2="9.017" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-2.54" x2="-8.509" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.032" x2="-9.017" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="2.54" x2="8.509" y2="2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="2.54" x2="9.017" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-2.54" x2="9.017" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.032" x2="-8.509" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.032" x2="-8.509" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="2.794" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B6" urn="urn:adsk.eagle:footprint:5357/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 6 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="2.54" x2="9.017" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.048" x2="-8.509" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-2.54" x2="-9.017" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.048" x2="8.509" y2="3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.048" x2="9.017" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.048" x2="9.017" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-2.54" x2="-8.509" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="2.54" x2="-8.509" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="3.302" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.032" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B7" urn="urn:adsk.eagle:footprint:5358/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 7 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.048" x2="9.017" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-3.556" x2="-8.509" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.048" x2="-9.017" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="3.556" x2="8.509" y2="3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="3.556" x2="9.017" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-3.556" x2="9.017" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.048" x2="-8.509" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.048" x2="-8.509" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="3.81" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.286" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B8" urn="urn:adsk.eagle:footprint:5359/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 8 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.556" x2="9.017" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.064" x2="-8.509" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.556" x2="-9.017" y2="3.556" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.064" x2="8.509" y2="4.064" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.064" x2="9.017" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.064" x2="9.017" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.556" x2="-8.509" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.556" x2="-8.509" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="4.318" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C15B9" urn="urn:adsk.eagle:footprint:5360/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 18 x 9 mm, grid 15 mm</description>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="0" width="0.4064" layer="21"/>
<wire x1="-5.08" y1="0" x2="-5.08" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="1.27" x2="-4.191" y2="0" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="-4.191" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-4.191" y1="0" x2="6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0" x2="-6.096" y2="0" width="0.1524" layer="21"/>
<wire x1="9.017" y1="3.937" x2="9.017" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="8.509" y1="-4.445" x2="-8.509" y2="-4.445" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="-3.937" x2="-9.017" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-8.509" y1="4.445" x2="8.509" y2="4.445" width="0.1524" layer="21"/>
<wire x1="8.509" y1="4.445" x2="9.017" y2="3.937" width="0.1524" layer="21" curve="-90"/>
<wire x1="8.509" y1="-4.445" x2="9.017" y2="-3.937" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="-3.937" x2="-8.509" y2="-4.445" width="0.1524" layer="21" curve="90"/>
<wire x1="-9.017" y1="3.937" x2="-8.509" y2="4.445" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<pad name="2" x="7.493" y="0" drill="1.016" diameter="2.159" shape="octagon"/>
<text x="-7.493" y="4.699" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.429" y="-2.54" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-2" urn="urn:adsk.eagle:footprint:5361/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 2.5 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.27" x2="2.159" y2="1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.27" x2="-2.159" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.27" x2="2.413" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.016" x2="-2.159" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.27" x2="2.413" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.016" x2="-2.159" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-4" urn="urn:adsk.eagle:footprint:5362/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 4 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.905" x2="2.159" y2="1.905" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.905" x2="-2.159" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.651" x2="2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.651" x2="-2.413" y2="-1.651" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.905" x2="2.413" y2="1.651" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.651" x2="-2.159" y2="1.905" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.905" x2="2.413" y2="-1.651" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.651" x2="-2.159" y2="-1.905" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="2.159" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-3.429" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-5" urn="urn:adsk.eagle:footprint:5363/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 5 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="2.286" x2="2.159" y2="2.286" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.286" x2="-2.159" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.032" x2="2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.032" x2="-2.413" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.286" x2="2.413" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.032" x2="-2.159" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.286" x2="2.413" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.032" x2="-2.159" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.778" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.778" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-6" urn="urn:adsk.eagle:footprint:5364/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 6 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="2.794" x2="2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-2.794" x2="-2.159" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="2.413" y1="2.54" x2="2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="2.54" x2="-2.413" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="2.159" y1="2.794" x2="2.413" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="2.54" x2="-2.159" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-2.794" x2="2.413" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-2.54" x2="-2.159" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="2.667" y="0.762" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.905" y="-2.413" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B10" urn="urn:adsk.eagle:footprint:5365/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 10 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="5.334" x2="12.827" y2="5.334" width="0.1524" layer="21"/>
<wire x1="13.335" y1="4.826" x2="13.335" y2="-4.826" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.334" x2="-12.827" y2="-5.334" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-4.826" x2="-13.335" y2="4.826" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.334" x2="13.335" y2="4.826" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.334" x2="13.335" y2="-4.826" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-4.826" x2="-12.827" y2="-5.334" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="4.826" x2="-12.827" y2="5.334" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="5.588" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B11" urn="urn:adsk.eagle:footprint:5366/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 11 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="5.588" x2="12.827" y2="5.588" width="0.1524" layer="21"/>
<wire x1="13.335" y1="5.08" x2="13.335" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-5.588" x2="-12.827" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-5.08" x2="-13.335" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="5.588" x2="13.335" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-5.588" x2="13.335" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-5.08" x2="-12.827" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="5.08" x2="-12.827" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="5.842" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B6" urn="urn:adsk.eagle:footprint:5367/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 6 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="3.048" x2="12.827" y2="3.048" width="0.1524" layer="21"/>
<wire x1="13.335" y1="2.54" x2="13.335" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.048" x2="-12.827" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-2.54" x2="-13.335" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.048" x2="13.335" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.048" x2="13.335" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-2.54" x2="-12.827" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="2.54" x2="-12.827" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="3.302" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B7" urn="urn:adsk.eagle:footprint:5368/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 7 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="3.556" x2="12.827" y2="3.556" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.048" x2="13.335" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-3.556" x2="-12.827" y2="-3.556" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.048" x2="-13.335" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="3.556" x2="13.335" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-3.556" x2="13.335" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.048" x2="-12.827" y2="-3.556" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.048" x2="-12.827" y2="3.556" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="3.81" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C22.5B8" urn="urn:adsk.eagle:footprint:5369/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 27 x 8 mm, grid 22.5 mm</description>
<wire x1="-12.827" y1="4.318" x2="12.827" y2="4.318" width="0.1524" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.335" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="12.827" y1="-4.318" x2="-12.827" y2="-4.318" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-3.81" x2="-13.335" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="12.827" y1="4.318" x2="13.335" y2="3.81" width="0.1524" layer="21" curve="-90"/>
<wire x1="12.827" y1="-4.318" x2="13.335" y2="-3.81" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="-3.81" x2="-12.827" y2="-4.318" width="0.1524" layer="21" curve="90"/>
<wire x1="-13.335" y1="3.81" x2="-12.827" y2="4.318" width="0.1524" layer="21" curve="-90"/>
<wire x1="-9.652" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="9.652" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<pad name="2" x="11.303" y="0" drill="1.016" diameter="2.54" shape="octagon"/>
<text x="-11.303" y="4.572" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B11" urn="urn:adsk.eagle:footprint:5370/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 11 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="5.588" x2="15.24" y2="5.588" width="0.1524" layer="21"/>
<wire x1="15.748" y1="5.08" x2="15.748" y2="-5.08" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-5.588" x2="-15.24" y2="-5.588" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-5.08" x2="-15.748" y2="5.08" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="5.588" x2="15.748" y2="5.08" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-5.588" x2="15.748" y2="-5.08" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-5.08" x2="-15.24" y2="-5.588" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="5.08" x2="-15.24" y2="5.588" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="5.842" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B13" urn="urn:adsk.eagle:footprint:5371/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 13 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="6.604" x2="15.24" y2="6.604" width="0.1524" layer="21"/>
<wire x1="15.748" y1="6.096" x2="15.748" y2="-6.096" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-6.604" x2="-15.24" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-6.096" x2="-15.748" y2="6.096" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="6.604" x2="15.748" y2="6.096" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-6.604" x2="15.748" y2="-6.096" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-6.096" x2="-15.24" y2="-6.604" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="6.096" x2="-15.24" y2="6.604" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="6.858" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B15" urn="urn:adsk.eagle:footprint:5372/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 15 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="7.62" x2="15.24" y2="7.62" width="0.1524" layer="21"/>
<wire x1="15.748" y1="7.112" x2="15.748" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-7.62" x2="-15.24" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-7.112" x2="-15.748" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="7.62" x2="15.748" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-7.62" x2="15.748" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-7.112" x2="-15.24" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="7.112" x2="-15.24" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="7.874" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B17" urn="urn:adsk.eagle:footprint:5373/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 17 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="8.509" x2="15.24" y2="8.509" width="0.1524" layer="21"/>
<wire x1="15.748" y1="8.001" x2="15.748" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-8.509" x2="-15.24" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-8.001" x2="-15.748" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="8.509" x2="15.748" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-8.509" x2="15.748" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-8.001" x2="-15.24" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="8.001" x2="-15.24" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.716" y="8.763" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B20" urn="urn:adsk.eagle:footprint:5374/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 20 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="10.16" x2="15.24" y2="10.16" width="0.1524" layer="21"/>
<wire x1="15.748" y1="9.652" x2="15.748" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-10.16" x2="-15.24" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-9.652" x2="-15.748" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="10.16" x2="15.748" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-10.16" x2="15.748" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-9.652" x2="-15.24" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="9.652" x2="-15.24" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.589" y="10.414" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-4.318" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C27.5B9" urn="urn:adsk.eagle:footprint:5375/1" library_version="1">
<description>&lt;B&gt;MKS4&lt;/B&gt;, 31.6 x 9 mm, grid 27.5 mm</description>
<wire x1="-15.24" y1="4.572" x2="15.24" y2="4.572" width="0.1524" layer="21"/>
<wire x1="15.748" y1="4.064" x2="15.748" y2="-4.064" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-4.572" x2="-15.24" y2="-4.572" width="0.1524" layer="21"/>
<wire x1="-15.748" y1="-4.064" x2="-15.748" y2="4.064" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="15.24" y1="4.572" x2="15.748" y2="4.064" width="0.1524" layer="21" curve="-90"/>
<wire x1="15.24" y1="-4.572" x2="15.748" y2="-4.064" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="-4.064" x2="-15.24" y2="-4.572" width="0.1524" layer="21" curve="90"/>
<wire x1="-15.748" y1="4.064" x2="-15.24" y2="4.572" width="0.1524" layer="21" curve="-90"/>
<wire x1="-11.557" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="11.557" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<pad name="2" x="13.716" y="0" drill="1.1938" diameter="3.1496" shape="octagon"/>
<text x="-13.589" y="4.826" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B15" urn="urn:adsk.eagle:footprint:5376/1" library_version="1">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 15 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="7.62" x2="20.32" y2="7.62" width="0.1524" layer="21"/>
<wire x1="20.828" y1="7.112" x2="20.828" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-7.62" x2="-20.32" y2="-7.62" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-7.112" x2="-20.828" y2="7.112" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="7.62" x2="20.828" y2="7.112" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-7.62" x2="20.828" y2="-7.112" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-7.112" x2="-20.32" y2="-7.62" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="7.112" x2="-20.32" y2="7.62" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="7.874" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B19" urn="urn:adsk.eagle:footprint:5377/1" library_version="1">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 19 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="8.509" x2="20.32" y2="8.509" width="0.1524" layer="21"/>
<wire x1="20.828" y1="8.001" x2="20.828" y2="-8.001" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-8.509" x2="-20.32" y2="-8.509" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-8.001" x2="-20.828" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="8.509" x2="20.828" y2="8.001" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-8.509" x2="20.828" y2="-8.001" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-8.001" x2="-20.32" y2="-8.509" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="8.001" x2="-20.32" y2="8.509" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="8.89" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C37.5B20" urn="urn:adsk.eagle:footprint:5378/1" library_version="1">
<description>&lt;B&gt;MKP4&lt;/B&gt;, 42 x 20 mm, grid 37.5 mm</description>
<wire x1="-20.32" y1="10.16" x2="20.32" y2="10.16" width="0.1524" layer="21"/>
<wire x1="20.828" y1="9.652" x2="20.828" y2="-9.652" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-10.16" x2="-20.32" y2="-10.16" width="0.1524" layer="21"/>
<wire x1="-20.828" y1="-9.652" x2="-20.828" y2="9.652" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="1.905" x2="-6.731" y2="0" width="0.4064" layer="21"/>
<wire x1="-6.731" y1="0" x2="-6.731" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="1.905" x2="-7.62" y2="0" width="0.4064" layer="21"/>
<wire x1="-7.62" y1="0" x2="-7.62" y2="-1.905" width="0.4064" layer="21"/>
<wire x1="20.32" y1="10.16" x2="20.828" y2="9.652" width="0.1524" layer="21" curve="-90"/>
<wire x1="20.32" y1="-10.16" x2="20.828" y2="-9.652" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="-9.652" x2="-20.32" y2="-10.16" width="0.1524" layer="21" curve="90"/>
<wire x1="-20.828" y1="9.652" x2="-20.32" y2="10.16" width="0.1524" layer="21" curve="-90"/>
<wire x1="-16.002" y1="0" x2="-7.62" y2="0" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="0" x2="16.002" y2="0" width="0.1524" layer="21"/>
<pad name="1" x="-18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<pad name="2" x="18.796" y="0" drill="1.3208" diameter="3.1496" shape="octagon"/>
<text x="-18.796" y="10.414" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-2.54" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B2.5" urn="urn:adsk.eagle:footprint:5379/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 2.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.016" x2="-3.683" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.27" x2="3.429" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.016" x2="3.683" y2="1.016" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="-3.429" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.27" x2="3.683" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.27" x2="3.683" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.016" x2="-3.429" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.016" x2="-3.429" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.032" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.032" y="-2.794" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B3" urn="urn:adsk.eagle:footprint:5380/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 3 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.27" x2="-3.683" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.524" x2="3.429" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.27" x2="3.683" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="-3.429" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.524" x2="3.683" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.524" x2="3.683" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.27" x2="-3.429" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.27" x2="-3.429" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B3.5" urn="urn:adsk.eagle:footprint:5381/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 4 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="1.524" x2="-3.683" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-1.778" x2="3.429" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-1.524" x2="3.683" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="-3.429" y2="1.778" width="0.1524" layer="21"/>
<wire x1="3.429" y1="1.778" x2="3.683" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-1.778" x2="3.683" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-1.524" x2="-3.429" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="1.524" x2="-3.429" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.032" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.302" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B4.5" urn="urn:adsk.eagle:footprint:5382/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 4.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.032" x2="-3.683" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.286" x2="3.429" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.032" x2="3.683" y2="2.032" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="-3.429" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.286" x2="3.683" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.286" x2="3.683" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.032" x2="-3.429" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.032" x2="-3.429" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.54" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B5" urn="urn:adsk.eagle:footprint:5383/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.286" x2="-3.683" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.54" x2="3.429" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.286" x2="3.683" y2="2.286" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="-3.429" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.54" x2="3.683" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.54" x2="3.683" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.286" x2="-3.429" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.286" x2="-3.429" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B5.5" urn="urn:adsk.eagle:footprint:5384/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 5.5 mm, grid 5.08 mm</description>
<wire x1="-0.3048" y1="0.635" x2="-0.3048" y2="0" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-0.3048" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="-0.3048" y1="0" x2="-1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.3302" y1="0.635" x2="0.3302" y2="0" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="0.3302" y2="-0.635" width="0.3048" layer="21"/>
<wire x1="0.3302" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="2.54" x2="-3.683" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-2.794" x2="3.429" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-2.54" x2="3.683" y2="2.54" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="-3.429" y2="2.794" width="0.1524" layer="21"/>
<wire x1="3.429" y1="2.794" x2="3.683" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-2.794" x2="3.683" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-2.54" x2="-3.429" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="2.54" x2="-3.429" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.54" y="-2.286" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C5B7.2" urn="urn:adsk.eagle:footprint:5385/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 7.5 x 7.2 mm, grid 5.08 mm</description>
<wire x1="-1.524" y1="0" x2="-0.4572" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="0.762" width="0.4064" layer="21"/>
<wire x1="-0.4572" y1="0" x2="-0.4572" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0.762" x2="0.4318" y2="0" width="0.4064" layer="21"/>
<wire x1="0.4318" y1="0" x2="1.524" y2="0" width="0.1524" layer="21"/>
<wire x1="0.4318" y1="0" x2="0.4318" y2="-0.762" width="0.4064" layer="21"/>
<wire x1="-3.683" y1="3.429" x2="-3.683" y2="-3.429" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="-3.683" x2="3.429" y2="-3.683" width="0.1524" layer="21"/>
<wire x1="3.683" y1="-3.429" x2="3.683" y2="3.429" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="-3.429" y2="3.683" width="0.1524" layer="21"/>
<wire x1="3.429" y1="3.683" x2="3.683" y2="3.429" width="0.1524" layer="21" curve="-90"/>
<wire x1="3.429" y1="-3.683" x2="3.683" y2="-3.429" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="-3.429" x2="-3.429" y2="-3.683" width="0.1524" layer="21" curve="90"/>
<wire x1="-3.683" y1="3.429" x2="-3.429" y2="3.683" width="0.1524" layer="21" curve="-90"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="4.064" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-2.921" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B3" urn="urn:adsk.eagle:footprint:5386/1" library_version="1">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 3 mm, grid 7.62 mm</description>
<wire x1="4.826" y1="1.524" x2="-4.826" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.27" x2="-5.08" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-1.524" x2="4.826" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.826" y1="1.524" x2="5.08" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-1.524" x2="5.08" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.27" x2="-4.826" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.27" x2="-4.826" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="0.508" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0" x2="-0.508" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="0.889" x2="-0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="-0.508" y1="0" x2="-0.508" y2="-0.889" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0.889" x2="0.508" y2="0" width="0.4064" layer="21"/>
<wire x1="0.508" y1="0" x2="0.508" y2="-0.889" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B4" urn="urn:adsk.eagle:footprint:5387/1" library_version="1">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 4 mm, grid 7.62 mm</description>
<wire x1="4.826" y1="2.032" x2="-4.826" y2="2.032" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.778" x2="-5.08" y2="-1.778" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-2.032" x2="4.826" y2="-2.032" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.778" x2="5.08" y2="1.778" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.032" x2="5.08" y2="1.778" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.826" y1="-2.032" x2="5.08" y2="-1.778" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="-1.778" x2="-4.826" y2="-2.032" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.778" x2="-4.826" y2="2.032" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="2.286" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.556" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B5" urn="urn:adsk.eagle:footprint:5388/1" library_version="1">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 5 mm, grid 7.62 mm</description>
<wire x1="4.953" y1="2.54" x2="-4.953" y2="2.54" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.286" x2="-5.207" y2="-2.286" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-2.54" x2="4.953" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.286" x2="5.207" y2="2.286" width="0.1524" layer="21"/>
<wire x1="4.953" y1="2.54" x2="5.207" y2="2.286" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-2.54" x2="5.207" y2="-2.286" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.286" x2="-4.953" y2="-2.54" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.286" x2="-4.953" y2="2.54" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.81" y="2.794" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-4.064" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C7.5B6" urn="urn:adsk.eagle:footprint:5389/1" library_version="1">
<description>&lt;B&gt;MKS3&lt;/B&gt;, 10 x 6 mm, grid 7.62 mm</description>
<wire x1="4.953" y1="3.048" x2="-4.953" y2="3.048" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="2.794" x2="-5.207" y2="-2.794" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="-3.048" x2="4.953" y2="-3.048" width="0.1524" layer="21"/>
<wire x1="5.207" y1="-2.794" x2="5.207" y2="2.794" width="0.1524" layer="21"/>
<wire x1="4.953" y1="3.048" x2="5.207" y2="2.794" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.953" y1="-3.048" x2="5.207" y2="-2.794" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="-2.794" x2="-4.953" y2="-3.048" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.207" y1="2.794" x2="-4.953" y2="3.048" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="0" x2="2.667" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="1.27" x2="-2.159" y2="0" width="0.4064" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.159" y2="-1.27" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="0" width="0.4064" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-1.27" width="0.4064" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.9144" diameter="1.905" shape="octagon"/>
<text x="-3.683" y="3.302" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-0.889" y="-2.667" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="C2.5-3" urn="urn:adsk.eagle:footprint:5390/1" library_version="1">
<description>&lt;B&gt;MKS2&lt;/B&gt;, 5 x 3 mm, grid 2.54 mm</description>
<wire x1="-2.159" y1="1.524" x2="2.159" y2="1.524" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-1.524" x2="-2.159" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.27" x2="2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.27" x2="-2.413" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.159" y1="1.524" x2="2.413" y2="1.27" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.413" y1="1.27" x2="-2.159" y2="1.524" width="0.1524" layer="21" curve="-90"/>
<wire x1="2.159" y1="-1.524" x2="2.413" y2="-1.27" width="0.1524" layer="21" curve="90"/>
<wire x1="-2.413" y1="-1.27" x2="-2.159" y2="-1.524" width="0.1524" layer="21" curve="90"/>
<wire x1="1.27" y1="0" x2="0.381" y2="0" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0" x2="0.254" y2="0" width="0.1524" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="0.762" width="0.254" layer="21"/>
<wire x1="0.254" y1="0" x2="0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0.762" x2="-0.254" y2="0" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.254" y2="-0.762" width="0.254" layer="21"/>
<wire x1="-0.254" y1="0" x2="-0.381" y2="0" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="0" x2="-1.27" y2="0" width="0.1524" layer="51"/>
<pad name="1" x="-1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="1.27" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-1.651" y="1.778" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.651" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="C10B4" urn="urn:adsk.eagle:package:5400/1" type="box" library_version="1">
<description>MKS4, 13.4 x 4 mm, grid 10.16 mm</description>
</package3d>
<package3d name="C10B5" urn="urn:adsk.eagle:package:5399/1" type="box" library_version="1">
<description>MKS4, 13.4 x 5 mm, grid 10.16 mm</description>
</package3d>
<package3d name="C10B6" urn="urn:adsk.eagle:package:5401/1" type="box" library_version="1">
<description>MKS4, 13.4 x 6 mm, grid 10.16 mm</description>
</package3d>
<package3d name="C15B5" urn="urn:adsk.eagle:package:5402/1" type="box" library_version="1">
<description>MKS4, 18 x 5 mm, grid 15 mm</description>
</package3d>
<package3d name="C15B6" urn="urn:adsk.eagle:package:5403/1" type="box" library_version="1">
<description>MKS4, 18 x 6 mm, grid 15 mm</description>
</package3d>
<package3d name="C15B7" urn="urn:adsk.eagle:package:5404/1" type="box" library_version="1">
<description>MKS4, 18 x 7 mm, grid 15 mm</description>
</package3d>
<package3d name="C15B8" urn="urn:adsk.eagle:package:5409/1" type="box" library_version="1">
<description>MKS4, 18 x 8 mm, grid 15 mm</description>
</package3d>
<package3d name="C15B9" urn="urn:adsk.eagle:package:5405/1" type="box" library_version="1">
<description>MKS4, 18 x 9 mm, grid 15 mm</description>
</package3d>
<package3d name="C2.5-2" urn="urn:adsk.eagle:package:5415/1" type="box" library_version="1">
<description>MKS2, 5 x 2.5 mm, grid 2.54 mm</description>
</package3d>
<package3d name="C2.5-4" urn="urn:adsk.eagle:package:5408/1" type="box" library_version="1">
<description>MKS2, 5 x 4 mm, grid 2.54 mm</description>
</package3d>
<package3d name="C2.5-5" urn="urn:adsk.eagle:package:5407/1" type="box" library_version="1">
<description>MKS2, 5 x 5 mm, grid 2.54 mm</description>
</package3d>
<package3d name="C2.5-6" urn="urn:adsk.eagle:package:5406/1" type="box" library_version="1">
<description>MKS2, 5 x 6 mm, grid 2.54 mm</description>
</package3d>
<package3d name="C22.5B10" urn="urn:adsk.eagle:package:5411/1" type="box" library_version="1">
<description>MKS4, 27 x 10 mm, grid 22.5 mm</description>
</package3d>
<package3d name="C22.5B11" urn="urn:adsk.eagle:package:5412/1" type="box" library_version="1">
<description>MKS4, 27 x 11 mm, grid 22.5 mm</description>
</package3d>
<package3d name="C22.5B6" urn="urn:adsk.eagle:package:5410/1" type="box" library_version="1">
<description>MKS4, 27 x 6 mm, grid 22.5 mm</description>
</package3d>
<package3d name="C22.5B7" urn="urn:adsk.eagle:package:5414/1" type="box" library_version="1">
<description>MKS4, 27 x 7 mm, grid 22.5 mm</description>
</package3d>
<package3d name="C22.5B8" urn="urn:adsk.eagle:package:5413/1" type="box" library_version="1">
<description>MKS4, 27 x 8 mm, grid 22.5 mm</description>
</package3d>
<package3d name="C27.5B11" urn="urn:adsk.eagle:package:5416/1" type="box" library_version="1">
<description>MKS4, 31.6 x 11 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C27.5B13" urn="urn:adsk.eagle:package:5420/1" type="box" library_version="1">
<description>MKS4, 31.6 x 13 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C27.5B15" urn="urn:adsk.eagle:package:5417/1" type="box" library_version="1">
<description>MKS4, 31.6 x 15 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C27.5B17" urn="urn:adsk.eagle:package:5418/1" type="box" library_version="1">
<description>MKS4, 31.6 x 17 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C27.5B20" urn="urn:adsk.eagle:package:5421/1" type="box" library_version="1">
<description>MKS4, 31.6 x 20 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C27.5B9" urn="urn:adsk.eagle:package:5419/1" type="box" library_version="1">
<description>MKS4, 31.6 x 9 mm, grid 27.5 mm</description>
</package3d>
<package3d name="C37.5B15" urn="urn:adsk.eagle:package:5425/1" type="box" library_version="1">
<description>MKP4, 42 x 15 mm, grid 37.5 mm</description>
</package3d>
<package3d name="C37.5B19" urn="urn:adsk.eagle:package:5422/1" type="box" library_version="1">
<description>MKP4, 42 x 19 mm, grid 37.5 mm</description>
</package3d>
<package3d name="C37.5B20" urn="urn:adsk.eagle:package:5423/1" type="box" library_version="1">
<description>MKP4, 42 x 20 mm, grid 37.5 mm</description>
</package3d>
<package3d name="C5B2.5" urn="urn:adsk.eagle:package:5426/1" type="box" library_version="1">
<description>MKS2, 7.5 x 2.5 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B3" urn="urn:adsk.eagle:package:5433/1" type="box" library_version="1">
<description>MKS2, 7.5 x 3 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B3.5" urn="urn:adsk.eagle:package:5427/1" type="box" library_version="1">
<description>MKS2, 7.5 x 4 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B4.5" urn="urn:adsk.eagle:package:5424/1" type="box" library_version="1">
<description>MKS2, 7.5 x 4.5 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B5" urn="urn:adsk.eagle:package:5428/1" type="box" library_version="1">
<description>MKS2, 7.5 x 5 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B5.5" urn="urn:adsk.eagle:package:5429/1" type="box" library_version="1">
<description>MKS2, 7.5 x 5.5 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C5B7.2" urn="urn:adsk.eagle:package:5430/1" type="box" library_version="1">
<description>MKS2, 7.5 x 7.2 mm, grid 5.08 mm</description>
</package3d>
<package3d name="C7.5B3" urn="urn:adsk.eagle:package:5434/1" type="box" library_version="1">
<description>MKS3, 10 x 3 mm, grid 7.62 mm</description>
</package3d>
<package3d name="C7.5B4" urn="urn:adsk.eagle:package:5431/1" type="box" library_version="1">
<description>MKS3, 10 x 4 mm, grid 7.62 mm</description>
</package3d>
<package3d name="C7.5B5" urn="urn:adsk.eagle:package:5432/1" type="box" library_version="1">
<description>MKS3, 10 x 5 mm, grid 7.62 mm</description>
</package3d>
<package3d name="C7.5B6" urn="urn:adsk.eagle:package:5435/1" type="box" library_version="1">
<description>MKS3, 10 x 6 mm, grid 7.62 mm</description>
</package3d>
<package3d name="C2.5-3" urn="urn:adsk.eagle:package:5436/1" type="box" library_version="1">
<description>MKS2, 5 x 3 mm, grid 2.54 mm</description>
</package3d>
</packages3d>
<symbols>
<symbol name="C" urn="urn:adsk.eagle:symbol:5352/1" library_version="1">
<wire x1="0" y1="-2.54" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="-0.508" width="0.1524" layer="94"/>
<text x="1.524" y="0.381" size="1.778" layer="95">&gt;NAME</text>
<text x="1.524" y="-4.699" size="1.778" layer="96">&gt;VALUE</text>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<pin name="1" x="0" y="2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" urn="urn:adsk.eagle:component:5444/1" prefix="C" uservalue="yes" library_version="1">
<description>&lt;B&gt;CAPACITOR&lt;/B&gt;&lt;p&gt;
naming: grid - package width</description>
<gates>
<gate name="G$1" symbol="C" x="0" y="0"/>
</gates>
<devices>
<device name="10/4" package="C10B4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5400/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10/5" package="C10B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5399/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10/6" package="C10B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5401/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15/5" package="C15B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5402/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15/6" package="C15B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5403/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15/7" package="C15B7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5404/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15/8" package="C15B8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5409/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15/9" package="C15B9">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5405/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.5/2" package="C2.5-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5415/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.5/4" package="C2.5-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5408/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.5/5" package="C2.5-5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5407/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.5/6" package="C2.5-6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5406/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22/10" package="C22.5B10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5411/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22/11" package="C22.5B11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5412/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22/6" package="C22.5B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5410/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22/7" package="C22.5B7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5414/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="22/8" package="C22.5B8">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5413/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/11" package="C27.5B11">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5416/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/13" package="C27.5B13">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5420/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/15" package="C27.5B15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5417/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/17" package="C27.5B17">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5418/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/20" package="C27.5B20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5421/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="27/9" package="C27.5B9">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5419/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="37/15" package="C37.5B15">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5425/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="37/19" package="C37.5B19">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5422/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="37/20" package="C37.5B20">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5423/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/2.5" package="C5B2.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5426/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/3" package="C5B3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5433/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/3.5" package="C5B3.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5427/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/4.5" package="C5B4.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5424/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/5" package="C5B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5428/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/5.5" package="C5B5.5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5429/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5/7.2" package="C5B7.2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5430/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7.5/3" package="C7.5B3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5434/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7.5/4" package="C7.5B4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5431/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7.5/5" package="C7.5B5">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5432/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7.5/6" package="C7.5B6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5435/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2,5-3" package="C2.5-3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5436/1"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="EELE_465" deviceset="MC9S08QG8" device=""/>
<part name="U$2" library="EELE_465" deviceset="MC9S08QG8" device=""/>
<part name="U$3" library="EELE_465" deviceset="SN74AHC273N" device=""/>
<part name="R1" library="resistor-bourns" library_urn="urn:adsk.eagle:library:341" deviceset="2QSP16-8" device="" package3d_urn="urn:adsk.eagle:package:24857/1"/>
<part name="DZ1" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="LB10" device="" package3d_urn="urn:adsk.eagle:package:15791/1"/>
<part name="X_1" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="U$4" library="EELE_465" deviceset="27899PAR-ND" device=""/>
<part name="RN1" library="resistor-sil" library_urn="urn:adsk.eagle:library:347" deviceset="E4RP" device="" package3d_urn="urn:adsk.eagle:package:25280/1"/>
<part name="X_2" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="X_3" library="ngspice-simulation" library_urn="urn:adsk.eagle:library:527439" deviceset="GND" device=""/>
<part name="U$5" library="EELE_465" deviceset="MC9S08QG8" device=""/>
<part name="U$6" library="EELE_465" deviceset="668-NC-S16204XRYHS" device=""/>
<part name="U$7" library="EELE_465" deviceset="MAX1044" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="C1" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2,5-3" package3d_urn="urn:adsk.eagle:package:5436/1"/>
<part name="C2" library="capacitor-wima" library_urn="urn:adsk.eagle:library:116" deviceset="C" device="2,5-3" package3d_urn="urn:adsk.eagle:package:5436/1"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="266.7" y="99.06" size="1.778" layer="91">3.3 V</text>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-5.08" y="73.66"/>
<instance part="U$2" gate="G$1" x="86.36" y="73.66"/>
<instance part="U$3" gate="G$1" x="15.24" y="12.7"/>
<instance part="R1" gate="A" x="68.58" y="-7.62"/>
<instance part="DZ1" gate="-1" x="101.6" y="-25.4" rot="R90"/>
<instance part="DZ1" gate="-2" x="101.6" y="-15.24" rot="R90"/>
<instance part="DZ1" gate="-3" x="101.6" y="-5.08" rot="R90"/>
<instance part="DZ1" gate="-4" x="101.6" y="5.08" rot="R90"/>
<instance part="DZ1" gate="-5" x="101.6" y="15.24" rot="R90"/>
<instance part="DZ1" gate="-8" x="101.6" y="-55.88" rot="R90"/>
<instance part="DZ1" gate="-9" x="101.6" y="-45.72" rot="R90"/>
<instance part="DZ1" gate="-10" x="101.6" y="-35.56" rot="R90"/>
<instance part="X_1" gate="G$1" x="116.84" y="-63.5"/>
<instance part="U$4" gate="G$1" x="157.48" y="55.88"/>
<instance part="RN1" gate="A" x="157.48" y="7.62" rot="R90"/>
<instance part="RN1" gate="B" x="165.1" y="7.62" rot="R90"/>
<instance part="RN1" gate="C" x="172.72" y="7.62" rot="R90"/>
<instance part="RN1" gate="D" x="180.34" y="7.62" rot="R90"/>
<instance part="X_2" gate="G$1" x="170.18" y="-7.62"/>
<instance part="X_3" gate="G$1" x="-40.64" y="53.34"/>
<instance part="U$5" gate="G$1" x="86.36" y="152.4"/>
<instance part="U$6" gate="G$1" x="165.1" y="167.64"/>
<instance part="U$7" gate="G$1" x="205.74" y="114.3"/>
<instance part="GND1" gate="1" x="218.44" y="78.74"/>
<instance part="C1" gate="G$1" x="254" y="88.9"/>
<instance part="C2" gate="G$1" x="241.3" y="99.06" rot="R90"/>
</instances>
<busses>
<bus name="B$1">
<segment>
<wire x1="35.56" y1="53.34" x2="35.56" y2="22.86" width="0.762" layer="92"/>
<wire x1="35.56" y1="22.86" x2="2.54" y2="22.86" width="0.762" layer="92"/>
<wire x1="2.54" y1="22.86" x2="-17.78" y2="22.86" width="0.762" layer="92"/>
<wire x1="-17.78" y1="22.86" x2="-17.78" y2="53.34" width="0.762" layer="92"/>
<wire x1="2.54" y1="22.86" x2="2.54" y2="-27.94" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$2">
<segment>
<wire x1="78.74" y1="43.18" x2="78.74" y2="27.94" width="0.762" layer="92"/>
<wire x1="78.74" y1="27.94" x2="124.46" y2="27.94" width="0.762" layer="92"/>
<wire x1="124.46" y1="27.94" x2="124.46" y2="45.72" width="0.762" layer="92"/>
<wire x1="124.46" y1="45.72" x2="134.62" y2="45.72" width="0.762" layer="92"/>
<wire x1="134.62" y1="45.72" x2="134.62" y2="55.88" width="0.762" layer="92"/>
<wire x1="134.62" y1="45.72" x2="134.62" y2="33.02" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="B$3">
<segment>
<wire x1="81.28" y1="132.08" x2="81.28" y2="106.68" width="0.762" layer="92"/>
<wire x1="81.28" y1="106.68" x2="101.6" y2="106.68" width="0.762" layer="92"/>
<wire x1="101.6" y1="106.68" x2="127" y2="106.68" width="0.762" layer="92"/>
<wire x1="127" y1="106.68" x2="127" y2="132.08" width="0.762" layer="92"/>
<wire x1="101.6" y1="106.68" x2="101.6" y2="96.52" width="0.762" layer="92"/>
<wire x1="101.6" y1="96.52" x2="147.32" y2="96.52" width="0.762" layer="92"/>
<wire x1="147.32" y1="96.52" x2="147.32" y2="167.64" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB7/SCL"/>
<wire x1="-5.08" y1="53.34" x2="-17.78" y2="53.34" width="0.1524" layer="91"/>
<junction x="-17.78" y="53.34"/>
<junction x="-5.08" y="53.34"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB6/SDA"/>
<wire x1="-5.08" y1="48.26" x2="-17.78" y2="48.26" width="0.1524" layer="91"/>
<junction x="-17.78" y="48.26"/>
<junction x="-5.08" y="48.26"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB5"/>
<wire x1="-5.08" y1="43.18" x2="-17.78" y2="43.18" width="0.1524" layer="91"/>
<junction x="-17.78" y="43.18"/>
<junction x="-5.08" y="43.18"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB4"/>
<wire x1="-5.08" y1="38.1" x2="-17.78" y2="38.1" width="0.1524" layer="91"/>
<junction x="-17.78" y="38.1"/>
<junction x="-5.08" y="38.1"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB3"/>
<wire x1="27.94" y1="38.1" x2="35.56" y2="38.1" width="0.1524" layer="91"/>
<junction x="35.56" y="38.1"/>
<junction x="27.94" y="38.1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB2"/>
<wire x1="27.94" y1="43.18" x2="35.56" y2="43.18" width="0.1524" layer="91"/>
<junction x="35.56" y="43.18"/>
<junction x="27.94" y="43.18"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB1"/>
<wire x1="27.94" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<junction x="35.56" y="48.26"/>
<junction x="27.94" y="48.26"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="PTB0"/>
<wire x1="27.94" y1="53.34" x2="35.56" y2="53.34" width="0.1524" layer="91"/>
<junction x="35.56" y="53.34"/>
<junction x="27.94" y="53.34"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="1Q"/>
<wire x1="15.24" y1="7.62" x2="2.54" y2="7.62" width="0.1524" layer="91"/>
<junction x="2.54" y="7.62"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="1D"/>
<wire x1="15.24" y1="2.54" x2="2.54" y2="2.54" width="0.1524" layer="91"/>
<junction x="2.54" y="2.54"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="2D"/>
<wire x1="15.24" y1="-2.54" x2="2.54" y2="-2.54" width="0.1524" layer="91"/>
<junction x="2.54" y="-2.54"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="2Q"/>
<wire x1="15.24" y1="-7.62" x2="2.54" y2="-7.62" width="0.1524" layer="91"/>
<junction x="2.54" y="-7.62"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="3Q"/>
<wire x1="15.24" y1="-12.7" x2="2.54" y2="-12.7" width="0.1524" layer="91"/>
<junction x="2.54" y="-12.7"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="3D"/>
<wire x1="15.24" y1="-17.78" x2="2.54" y2="-17.78" width="0.1524" layer="91"/>
<junction x="2.54" y="-17.78"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="4D"/>
<wire x1="15.24" y1="-22.86" x2="2.54" y2="-22.86" width="0.1524" layer="91"/>
<junction x="2.54" y="-22.86"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="4Q"/>
<wire x1="15.24" y1="-27.94" x2="2.54" y2="-27.94" width="0.1524" layer="91"/>
<junction x="2.54" y="-27.94"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="8Q"/>
<wire x1="40.64" y1="7.62" x2="63.5" y2="7.62" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="1"/>
<wire x1="63.5" y1="7.62" x2="63.5" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="8D"/>
<wire x1="40.64" y1="2.54" x2="60.96" y2="2.54" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="2"/>
<wire x1="60.96" y1="2.54" x2="60.96" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="60.96" y1="-2.54" x2="63.5" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="7D"/>
<wire x1="40.64" y1="-2.54" x2="58.42" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-2.54" x2="58.42" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="3"/>
<wire x1="58.42" y1="-5.08" x2="63.5" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="7Q"/>
<pinref part="R1" gate="A" pin="4"/>
<wire x1="40.64" y1="-7.62" x2="63.5" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="6Q"/>
<wire x1="40.64" y1="-12.7" x2="43.18" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="43.18" y1="-12.7" x2="43.18" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="5"/>
<wire x1="43.18" y1="-10.16" x2="63.5" y2="-10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="6D"/>
<wire x1="40.64" y1="-17.78" x2="45.72" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="45.72" y1="-17.78" x2="45.72" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="6"/>
<wire x1="45.72" y1="-12.7" x2="63.5" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="5D"/>
<wire x1="40.64" y1="-22.86" x2="48.26" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="48.26" y1="-22.86" x2="48.26" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="7"/>
<wire x1="48.26" y1="-15.24" x2="63.5" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="U$3" gate="G$1" pin="5Q"/>
<wire x1="40.64" y1="-27.94" x2="50.8" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="50.8" y1="-27.94" x2="50.8" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="8"/>
<wire x1="50.8" y1="-17.78" x2="63.5" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="R1" gate="A" pin="9"/>
<pinref part="DZ1" gate="-8" pin="A"/>
<wire x1="73.66" y1="-17.78" x2="73.66" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="73.66" y1="-55.88" x2="99.06" y2="-55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="R1" gate="A" pin="10"/>
<wire x1="73.66" y1="-15.24" x2="76.2" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="-15.24" x2="76.2" y2="-45.72" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-9" pin="A"/>
<wire x1="76.2" y1="-45.72" x2="99.06" y2="-45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<pinref part="R1" gate="A" pin="11"/>
<wire x1="73.66" y1="-12.7" x2="81.28" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="81.28" y1="-12.7" x2="81.28" y2="-35.56" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-10" pin="A"/>
<wire x1="81.28" y1="-35.56" x2="99.06" y2="-35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="R1" gate="A" pin="12"/>
<wire x1="73.66" y1="-10.16" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="83.82" y1="-10.16" x2="83.82" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-1" pin="A"/>
<wire x1="83.82" y1="-25.4" x2="99.06" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="R1" gate="A" pin="13"/>
<wire x1="73.66" y1="-7.62" x2="86.36" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="86.36" y1="-7.62" x2="86.36" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-2" pin="A"/>
<wire x1="86.36" y1="-15.24" x2="99.06" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="R1" gate="A" pin="14"/>
<pinref part="DZ1" gate="-3" pin="A"/>
<wire x1="73.66" y1="-5.08" x2="99.06" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R1" gate="A" pin="15"/>
<wire x1="73.66" y1="-2.54" x2="96.52" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="96.52" y1="-2.54" x2="96.52" y2="5.08" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-4" pin="A"/>
<wire x1="96.52" y1="5.08" x2="99.06" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R1" gate="A" pin="16"/>
<wire x1="73.66" y1="0" x2="93.98" y2="0" width="0.1524" layer="91"/>
<wire x1="93.98" y1="0" x2="93.98" y2="15.24" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-5" pin="A"/>
<wire x1="93.98" y1="15.24" x2="99.06" y2="15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="0" class="0">
<segment>
<pinref part="DZ1" gate="-5" pin="C"/>
<wire x1="106.68" y1="15.24" x2="116.84" y2="15.24" width="0.1524" layer="91"/>
<pinref part="X_1" gate="G$1" pin="0"/>
<wire x1="116.84" y1="15.24" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<pinref part="DZ1" gate="-4" pin="C"/>
<wire x1="116.84" y1="5.08" x2="116.84" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-5.08" x2="116.84" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-15.24" x2="116.84" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-25.4" x2="116.84" y2="-35.56" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-35.56" x2="116.84" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-45.72" x2="116.84" y2="-55.88" width="0.1524" layer="91"/>
<wire x1="116.84" y1="-55.88" x2="116.84" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="106.68" y1="5.08" x2="116.84" y2="5.08" width="0.1524" layer="91"/>
<junction x="116.84" y="5.08"/>
<pinref part="DZ1" gate="-3" pin="C"/>
<wire x1="106.68" y1="-5.08" x2="116.84" y2="-5.08" width="0.1524" layer="91"/>
<junction x="116.84" y="-5.08"/>
<pinref part="DZ1" gate="-2" pin="C"/>
<wire x1="106.68" y1="-15.24" x2="116.84" y2="-15.24" width="0.1524" layer="91"/>
<junction x="116.84" y="-15.24"/>
<pinref part="DZ1" gate="-1" pin="C"/>
<wire x1="106.68" y1="-25.4" x2="116.84" y2="-25.4" width="0.1524" layer="91"/>
<junction x="116.84" y="-25.4"/>
<pinref part="DZ1" gate="-10" pin="C"/>
<wire x1="106.68" y1="-35.56" x2="116.84" y2="-35.56" width="0.1524" layer="91"/>
<junction x="116.84" y="-35.56"/>
<pinref part="DZ1" gate="-9" pin="C"/>
<wire x1="106.68" y1="-45.72" x2="116.84" y2="-45.72" width="0.1524" layer="91"/>
<junction x="116.84" y="-45.72"/>
<pinref part="DZ1" gate="-8" pin="C"/>
<wire x1="106.68" y1="-55.88" x2="116.84" y2="-55.88" width="0.1524" layer="91"/>
<junction x="116.84" y="-55.88"/>
</segment>
<segment>
<pinref part="RN1" gate="A" pin="1"/>
<wire x1="157.48" y1="2.54" x2="157.48" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="157.48" y1="-5.08" x2="165.1" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="RN1" gate="B" pin="1"/>
<wire x1="165.1" y1="-5.08" x2="165.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="165.1" y1="-5.08" x2="170.18" y2="-5.08" width="0.1524" layer="91"/>
<junction x="165.1" y="-5.08"/>
<pinref part="RN1" gate="C" pin="1"/>
<wire x1="170.18" y1="-5.08" x2="172.72" y2="-5.08" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-5.08" x2="172.72" y2="2.54" width="0.1524" layer="91"/>
<wire x1="172.72" y1="-5.08" x2="180.34" y2="-5.08" width="0.1524" layer="91"/>
<junction x="172.72" y="-5.08"/>
<pinref part="RN1" gate="D" pin="1"/>
<wire x1="180.34" y1="-5.08" x2="180.34" y2="2.54" width="0.1524" layer="91"/>
<pinref part="X_2" gate="G$1" pin="0"/>
<wire x1="170.18" y1="-5.08" x2="170.18" y2="-7.62" width="0.1524" layer="91"/>
<junction x="170.18" y="-5.08"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VSS"/>
<wire x1="86.36" y1="58.42" x2="86.36" y2="60.96" width="0.1524" layer="91"/>
<wire x1="86.36" y1="60.96" x2="60.96" y2="60.96" width="0.1524" layer="91"/>
<wire x1="60.96" y1="60.96" x2="60.96" y2="106.68" width="0.1524" layer="91"/>
<wire x1="60.96" y1="106.68" x2="-40.64" y2="106.68" width="0.1524" layer="91"/>
<pinref part="X_3" gate="G$1" pin="0"/>
<wire x1="-40.64" y1="106.68" x2="-40.64" y2="91.44" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="VSS"/>
<wire x1="-40.64" y1="91.44" x2="-40.64" y2="58.42" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="58.42" x2="-40.64" y2="53.34" width="0.1524" layer="91"/>
<wire x1="-5.08" y1="58.42" x2="-40.64" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="VSS"/>
<wire x1="86.36" y1="137.16" x2="-40.64" y2="137.16" width="0.1524" layer="91"/>
<wire x1="-40.64" y1="137.16" x2="-40.64" y2="106.68" width="0.1524" layer="91"/>
<junction x="-40.64" y="106.68"/>
<pinref part="U$6" gate="G$1" pin="VSS"/>
<wire x1="165.1" y1="101.6" x2="160.02" y2="101.6" width="0.1524" layer="91"/>
<wire x1="160.02" y1="101.6" x2="160.02" y2="91.44" width="0.1524" layer="91"/>
<wire x1="160.02" y1="91.44" x2="-40.64" y2="91.44" width="0.1524" layer="91"/>
<junction x="-40.64" y="91.44"/>
<pinref part="U$6" gate="G$1" pin="R/W"/>
<wire x1="165.1" y1="121.92" x2="160.02" y2="121.92" width="0.1524" layer="91"/>
<wire x1="160.02" y1="121.92" x2="160.02" y2="101.6" width="0.1524" layer="91"/>
<junction x="160.02" y="101.6"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB7/SCL"/>
<wire x1="76.2" y1="53.34" x2="58.42" y2="53.34" width="0.1524" layer="91"/>
<wire x1="58.42" y1="53.34" x2="58.42" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA3/SCL"/>
<wire x1="58.42" y1="58.42" x2="27.94" y2="58.42" width="0.1524" layer="91"/>
<junction x="27.94" y="58.42"/>
<junction x="86.36" y="53.34"/>
<wire x1="86.36" y1="53.34" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U$5" gate="G$1" pin="PTA3/SCL"/>
<wire x1="78.74" y1="53.34" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<wire x1="119.38" y1="137.16" x2="124.46" y2="137.16" width="0.1524" layer="91"/>
<wire x1="124.46" y1="137.16" x2="124.46" y2="83.82" width="0.1524" layer="91"/>
<wire x1="124.46" y1="83.82" x2="78.74" y2="83.82" width="0.1524" layer="91"/>
<wire x1="78.74" y1="83.82" x2="78.74" y2="53.34" width="0.1524" layer="91"/>
<junction x="78.74" y="53.34"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB6/SDA"/>
<wire x1="86.36" y1="48.26" x2="81.28" y2="48.26" width="0.1524" layer="91"/>
<wire x1="81.28" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<wire x1="55.88" y1="48.26" x2="55.88" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$1" gate="G$1" pin="PTA2/SDA"/>
<wire x1="55.88" y1="63.5" x2="27.94" y2="63.5" width="0.1524" layer="91"/>
<junction x="27.94" y="63.5"/>
<junction x="86.36" y="48.26"/>
<pinref part="U$5" gate="G$1" pin="PTA2/SDA"/>
<wire x1="119.38" y1="142.24" x2="121.92" y2="142.24" width="0.1524" layer="91"/>
<wire x1="121.92" y1="142.24" x2="121.92" y2="81.28" width="0.1524" layer="91"/>
<wire x1="121.92" y1="81.28" x2="81.28" y2="81.28" width="0.1524" layer="91"/>
<wire x1="81.28" y1="81.28" x2="81.28" y2="48.26" width="0.1524" layer="91"/>
<junction x="81.28" y="48.26"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB5"/>
<wire x1="86.36" y1="43.18" x2="78.74" y2="43.18" width="0.1524" layer="91"/>
<junction x="78.74" y="43.18"/>
<junction x="86.36" y="43.18"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB4"/>
<wire x1="86.36" y1="38.1" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
<junction x="78.74" y="38.1"/>
<junction x="86.36" y="38.1"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB2"/>
<wire x1="119.38" y1="43.18" x2="124.46" y2="43.18" width="0.1524" layer="91"/>
<junction x="119.38" y="43.18"/>
<junction x="124.46" y="43.18"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTB3"/>
<wire x1="119.38" y1="38.1" x2="124.46" y2="38.1" width="0.1524" layer="91"/>
<junction x="119.38" y="38.1"/>
<junction x="124.46" y="38.1"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$4"/>
<wire x1="147.32" y1="33.02" x2="134.62" y2="33.02" width="0.1524" layer="91"/>
<junction x="134.62" y="33.02"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$3"/>
<wire x1="147.32" y1="40.64" x2="134.62" y2="40.64" width="0.1524" layer="91"/>
<junction x="134.62" y="40.64"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$2"/>
<wire x1="147.32" y1="48.26" x2="134.62" y2="48.26" width="0.1524" layer="91"/>
<junction x="134.62" y="48.26"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$1"/>
<wire x1="147.32" y1="55.88" x2="134.62" y2="55.88" width="0.1524" layer="91"/>
<junction x="134.62" y="55.88"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$8"/>
<pinref part="RN1" gate="A" pin="2"/>
<wire x1="157.48" y1="22.86" x2="157.48" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$7"/>
<pinref part="RN1" gate="B" pin="2"/>
<wire x1="165.1" y1="22.86" x2="165.1" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$6"/>
<pinref part="RN1" gate="C" pin="2"/>
<wire x1="172.72" y1="22.86" x2="172.72" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="U$4" gate="G$1" pin="P$5"/>
<pinref part="RN1" gate="D" pin="2"/>
<wire x1="180.34" y1="22.86" x2="180.34" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTA0"/>
<wire x1="119.38" y1="73.66" x2="180.34" y2="73.66" width="0.1524" layer="91"/>
<wire x1="180.34" y1="73.66" x2="180.34" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTA1"/>
<wire x1="119.38" y1="68.58" x2="172.72" y2="68.58" width="0.1524" layer="91"/>
<wire x1="172.72" y1="68.58" x2="172.72" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTA2/SDA"/>
<wire x1="119.38" y1="63.5" x2="165.1" y2="63.5" width="0.1524" layer="91"/>
<wire x1="165.1" y1="63.5" x2="165.1" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="PTA3/SCL"/>
<wire x1="119.38" y1="58.42" x2="149.86" y2="58.42" width="0.1524" layer="91"/>
<wire x1="149.86" y1="58.42" x2="149.86" y2="60.96" width="0.1524" layer="91"/>
<wire x1="149.86" y1="60.96" x2="157.48" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="U$1" gate="G$1" pin="VDD"/>
<wire x1="-25.4" y1="83.82" x2="-25.4" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="63.5" x2="-5.08" y2="63.5" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="83.82" x2="71.12" y2="83.82" width="0.1524" layer="91"/>
<junction x="-25.4" y="83.82"/>
<wire x1="71.12" y1="83.82" x2="71.12" y2="63.5" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="VDD"/>
<wire x1="71.12" y1="63.5" x2="86.36" y2="63.5" width="0.1524" layer="91"/>
<label x="-25.4" y="93.98" size="1.778" layer="95"/>
<pinref part="U$5" gate="G$1" pin="VDD"/>
<wire x1="86.36" y1="142.24" x2="-25.4" y2="142.24" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="142.24" x2="-25.4" y2="88.9" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="VDD"/>
<wire x1="-25.4" y1="86.36" x2="-25.4" y2="83.82" width="0.1524" layer="91"/>
<wire x1="165.1" y1="106.68" x2="149.86" y2="106.68" width="0.1524" layer="91"/>
<wire x1="149.86" y1="106.68" x2="149.86" y2="86.36" width="0.1524" layer="91"/>
<wire x1="149.86" y1="86.36" x2="-25.4" y2="86.36" width="0.1524" layer="91"/>
<wire x1="-25.4" y1="86.36" x2="-25.4" y2="88.9" width="0.1524" layer="91"/>
<junction x="-25.4" y="86.36"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB7/SCL"/>
<wire x1="86.36" y1="132.08" x2="81.28" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB6/SDA"/>
<wire x1="86.36" y1="127" x2="81.28" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB5"/>
<wire x1="86.36" y1="121.92" x2="81.28" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB4"/>
<wire x1="86.36" y1="116.84" x2="81.28" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$57" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB3"/>
<wire x1="119.38" y1="116.84" x2="127" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$58" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB2"/>
<wire x1="119.38" y1="121.92" x2="127" y2="121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$59" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB1"/>
<wire x1="119.38" y1="127" x2="127" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$60" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTB0"/>
<wire x1="119.38" y1="132.08" x2="127" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="B$3" class="0">
<segment>
<pinref part="U$6" gate="G$1" pin="DB7"/>
<wire x1="165.1" y1="167.64" x2="147.32" y2="167.64" width="0.1524" layer="91"/>
<junction x="147.32" y="167.64"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB6"/>
<wire x1="165.1" y1="162.56" x2="147.32" y2="162.56" width="0.1524" layer="91"/>
<junction x="147.32" y="162.56"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB5"/>
<wire x1="165.1" y1="157.48" x2="147.32" y2="157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB4"/>
<wire x1="165.1" y1="152.4" x2="147.32" y2="152.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB3"/>
<wire x1="165.1" y1="147.32" x2="147.32" y2="147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB2"/>
<wire x1="165.1" y1="142.24" x2="147.32" y2="142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB1"/>
<wire x1="165.1" y1="137.16" x2="147.32" y2="137.16" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$6" gate="G$1" pin="DB0"/>
<wire x1="165.1" y1="132.08" x2="147.32" y2="132.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$61" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTA0"/>
<wire x1="119.38" y1="152.4" x2="144.78" y2="152.4" width="0.1524" layer="91"/>
<wire x1="144.78" y1="152.4" x2="144.78" y2="127" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="E"/>
<wire x1="144.78" y1="127" x2="165.1" y2="127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$62" class="0">
<segment>
<pinref part="U$5" gate="G$1" pin="PTA1"/>
<wire x1="119.38" y1="147.32" x2="142.24" y2="147.32" width="0.1524" layer="91"/>
<wire x1="142.24" y1="147.32" x2="142.24" y2="116.84" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="RS"/>
<wire x1="142.24" y1="116.84" x2="165.1" y2="116.84" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$63" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="N.C."/>
<wire x1="205.74" y1="114.3" x2="198.12" y2="114.3" width="0.1524" layer="91"/>
<wire x1="198.12" y1="114.3" x2="198.12" y2="78.74" width="0.1524" layer="91"/>
<wire x1="198.12" y1="78.74" x2="154.94" y2="78.74" width="0.1524" layer="91"/>
<wire x1="154.94" y1="78.74" x2="154.94" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$6" gate="G$1" pin="VEE"/>
<wire x1="154.94" y1="111.76" x2="165.1" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="GND"/>
<wire x1="205.74" y1="104.14" x2="200.66" y2="104.14" width="0.1524" layer="91"/>
<wire x1="200.66" y1="104.14" x2="200.66" y2="81.28" width="0.1524" layer="91"/>
<wire x1="200.66" y1="81.28" x2="218.44" y2="81.28" width="0.1524" layer="91"/>
<wire x1="218.44" y1="81.28" x2="233.68" y2="81.28" width="0.1524" layer="91"/>
<wire x1="233.68" y1="81.28" x2="233.68" y2="109.22" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="OSC"/>
<wire x1="233.68" y1="109.22" x2="231.14" y2="109.22" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<junction x="218.44" y="81.28"/>
</segment>
</net>
<net name="N$66" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="CAP-"/>
<wire x1="205.74" y1="99.06" x2="203.2" y2="99.06" width="0.1524" layer="91"/>
<wire x1="203.2" y1="99.06" x2="203.2" y2="83.82" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="203.2" y1="83.82" x2="254" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$67" class="0">
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="254" y1="91.44" x2="254" y2="104.14" width="0.1524" layer="91"/>
<pinref part="U$7" gate="G$1" pin="LV"/>
<wire x1="254" y1="104.14" x2="231.14" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="U$7" gate="G$1" pin="VOUT"/>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="231.14" y1="99.06" x2="238.76" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="246.38" y1="99.06" x2="266.7" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
