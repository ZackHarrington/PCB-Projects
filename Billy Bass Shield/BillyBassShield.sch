<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="frames" urn="urn:adsk.eagle:library:229">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="FRAME_A_L" urn="urn:adsk.eagle:symbol:13882/1" library_version="1">
<frame x1="0" y1="0" x2="279.4" y2="215.9" columns="6" rows="5" layer="94" border-bottom="no"/>
</symbol>
<symbol name="DOCFIELD" urn="urn:adsk.eagle:symbol:13864/1" library_version="1">
<wire x1="0" y1="0" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="87.63" y2="15.24" width="0.1016" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="71.12" y2="5.08" width="0.1016" layer="94"/>
<wire x1="0" y1="5.08" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="101.6" y1="15.24" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="71.12" y2="0" width="0.1016" layer="94"/>
<wire x1="71.12" y1="5.08" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="71.12" y1="0" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="87.63" y2="5.08" width="0.1016" layer="94"/>
<wire x1="87.63" y1="15.24" x2="0" y2="15.24" width="0.1016" layer="94"/>
<wire x1="87.63" y1="5.08" x2="101.6" y2="5.08" width="0.1016" layer="94"/>
<wire x1="101.6" y1="5.08" x2="101.6" y2="0" width="0.1016" layer="94"/>
<wire x1="0" y1="15.24" x2="0" y2="22.86" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="35.56" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="101.6" y2="22.86" width="0.1016" layer="94"/>
<wire x1="0" y1="22.86" x2="0" y2="35.56" width="0.1016" layer="94"/>
<wire x1="101.6" y1="22.86" x2="101.6" y2="15.24" width="0.1016" layer="94"/>
<text x="1.27" y="1.27" size="2.54" layer="94">Date:</text>
<text x="12.7" y="1.27" size="2.54" layer="94">&gt;LAST_DATE_TIME</text>
<text x="72.39" y="1.27" size="2.54" layer="94">Sheet:</text>
<text x="86.36" y="1.27" size="2.54" layer="94">&gt;SHEET</text>
<text x="88.9" y="11.43" size="2.54" layer="94">REV:</text>
<text x="1.27" y="19.05" size="2.54" layer="94">TITLE:</text>
<text x="1.27" y="11.43" size="2.54" layer="94">Document Number:</text>
<text x="17.78" y="19.05" size="2.54" layer="94">&gt;DRAWING_NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FRAME_A_L" urn="urn:adsk.eagle:component:13939/1" prefix="FRAME" uservalue="yes" library_version="1">
<description>&lt;b&gt;FRAME&lt;/b&gt; A Size , 8 1/2 x 11 INCH, Landscape&lt;p&gt;</description>
<gates>
<gate name="G$1" symbol="FRAME_A_L" x="0" y="0" addlevel="always"/>
<gate name="G$2" symbol="DOCFIELD" x="172.72" y="0" addlevel="always"/>
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
<library name="Harrington-ICs">
<packages>
<package name="QFN28">
<smd name="4" x="-2.4" y="0" dx="0.95" dy="0.3" layer="1"/>
<smd name="3" x="-2.4" y="0.5" dx="0.95" dy="0.3" layer="1"/>
<smd name="2" x="-2.4" y="1" dx="0.95" dy="0.3" layer="1"/>
<smd name="1" x="-2.4" y="1.5" dx="0.95" dy="0.3" layer="1"/>
<smd name="5" x="-2.4" y="-0.5" dx="0.95" dy="0.3" layer="1"/>
<smd name="6" x="-2.4" y="-1" dx="0.95" dy="0.3" layer="1"/>
<smd name="7" x="-2.4" y="-1.5" dx="0.95" dy="0.3" layer="1"/>
<smd name="11" x="0" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="10" x="-0.5" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="9" x="-1" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="8" x="-1.5" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="12" x="0.5" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="13" x="1" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="14" x="1.5" y="-2.4" dx="0.95" dy="0.3" layer="1" rot="R90"/>
<smd name="18" x="2.4" y="0" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="17" x="2.4" y="-0.5" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="16" x="2.4" y="-1" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="15" x="2.4" y="-1.5" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="19" x="2.4" y="0.5" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="20" x="2.4" y="1" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="21" x="2.4" y="1.5" dx="0.95" dy="0.3" layer="1" rot="R180"/>
<smd name="25" x="0" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="24" x="0.5" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="23" x="1" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="22" x="1.5" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="26" x="-0.5" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="27" x="-1" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="28" x="-1.5" y="2.4" dx="0.95" dy="0.3" layer="1" rot="R270"/>
<smd name="PAD" x="0" y="0" dx="3.35" dy="3.35" layer="1"/>
<wire x1="-2.5" y1="2.5" x2="-2.5" y2="-2.5" width="0.3" layer="21"/>
<wire x1="-2.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.3" layer="21"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="2.5" width="0.3" layer="21"/>
<wire x1="2.5" y1="2.5" x2="-2.5" y2="2.5" width="0.3" layer="21"/>
<wire x1="-2.5" y1="2.5" x2="-2.5" y2="-2.5" width="0.15" layer="51"/>
<wire x1="-2.5" y1="-2.5" x2="2.5" y2="-2.5" width="0.15" layer="51"/>
<wire x1="2.5" y1="-2.5" x2="2.5" y2="2.5" width="0.15" layer="51"/>
<wire x1="2.5" y1="2.5" x2="-2.5" y2="2.5" width="0.15" layer="51"/>
<circle x="-3.5" y="1.65" radius="0.1" width="0.5" layer="21"/>
<wire x1="-3" y1="3" x2="-3" y2="-3" width="0.1" layer="39"/>
<wire x1="-3" y1="-3" x2="3" y2="-3" width="0.1" layer="39"/>
<wire x1="3" y1="-3" x2="3" y2="3" width="0.1" layer="39"/>
<wire x1="3" y1="3" x2="-3" y2="3" width="0.1" layer="39"/>
<rectangle x1="-1.625" y1="2" x2="-1.375" y2="2.55" layer="51"/>
<rectangle x1="-1.125" y1="2" x2="-0.875" y2="2.55" layer="51"/>
<rectangle x1="-0.625" y1="2" x2="-0.375" y2="2.55" layer="51"/>
<rectangle x1="-0.125" y1="2" x2="0.125" y2="2.55" layer="51"/>
<rectangle x1="0.375" y1="2" x2="0.625" y2="2.55" layer="51"/>
<rectangle x1="0.875" y1="2" x2="1.125" y2="2.55" layer="51"/>
<rectangle x1="1.375" y1="2" x2="1.625" y2="2.55" layer="51"/>
<rectangle x1="-2.4" y1="-1.775" x2="-2.15" y2="-1.225" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="-1.275" x2="-2.15" y2="-0.725" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="-0.775" x2="-2.15" y2="-0.225" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="-0.275" x2="-2.15" y2="0.275" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="0.225" x2="-2.15" y2="0.775" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="0.725" x2="-2.15" y2="1.275" layer="51" rot="R90"/>
<rectangle x1="-2.4" y1="1.225" x2="-2.15" y2="1.775" layer="51" rot="R90"/>
<rectangle x1="1.375" y1="-2.55" x2="1.625" y2="-2" layer="51" rot="R180"/>
<rectangle x1="0.875" y1="-2.55" x2="1.125" y2="-2" layer="51" rot="R180"/>
<rectangle x1="0.375" y1="-2.55" x2="0.625" y2="-2" layer="51" rot="R180"/>
<rectangle x1="-0.125" y1="-2.55" x2="0.125" y2="-2" layer="51" rot="R180"/>
<rectangle x1="-0.625" y1="-2.55" x2="-0.375" y2="-2" layer="51" rot="R180"/>
<rectangle x1="-1.125" y1="-2.55" x2="-0.875" y2="-2" layer="51" rot="R180"/>
<rectangle x1="-1.625" y1="-2.55" x2="-1.375" y2="-2" layer="51" rot="R180"/>
<rectangle x1="2.15" y1="1.225" x2="2.4" y2="1.775" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="0.725" x2="2.4" y2="1.275" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="0.225" x2="2.4" y2="0.775" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="-0.275" x2="2.4" y2="0.275" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="-0.775" x2="2.4" y2="-0.225" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="-1.275" x2="2.4" y2="-0.725" layer="51" rot="R270"/>
<rectangle x1="2.15" y1="-1.775" x2="2.4" y2="-1.225" layer="51" rot="R270"/>
<text x="0" y="3.75" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
</package>
<package name="ESP32-WROVER-E/IE">
<smd name="1" x="-8.75" y="11.43" dx="1.5" dy="0.9" layer="1"/>
<smd name="2" x="-8.75" y="10.16" dx="1.5" dy="0.9" layer="1"/>
<smd name="3" x="-8.75" y="8.89" dx="1.5" dy="0.9" layer="1"/>
<smd name="4" x="-8.75" y="7.62" dx="1.5" dy="0.9" layer="1"/>
<smd name="5" x="-8.75" y="6.35" dx="1.5" dy="0.9" layer="1"/>
<smd name="6" x="-8.75" y="5.08" dx="1.5" dy="0.9" layer="1"/>
<smd name="7" x="-8.75" y="3.81" dx="1.5" dy="0.9" layer="1"/>
<smd name="8" x="-8.75" y="2.54" dx="1.5" dy="0.9" layer="1"/>
<smd name="9" x="-8.75" y="1.27" dx="1.5" dy="0.9" layer="1"/>
<smd name="10" x="-8.75" y="0" dx="1.5" dy="0.9" layer="1"/>
<smd name="11" x="-8.75" y="-1.27" dx="1.5" dy="0.9" layer="1"/>
<smd name="12" x="-8.75" y="-2.54" dx="1.5" dy="0.9" layer="1"/>
<smd name="13" x="-8.75" y="-3.81" dx="1.5" dy="0.9" layer="1"/>
<smd name="14" x="-8.75" y="-5.08" dx="1.5" dy="0.9" layer="1"/>
<smd name="15" x="-8.75" y="-6.35" dx="1.5" dy="0.9" layer="1"/>
<smd name="16" x="-8.75" y="-7.62" dx="1.5" dy="0.9" layer="1"/>
<smd name="17" x="-8.75" y="-8.89" dx="1.5" dy="0.9" layer="1"/>
<smd name="18" x="-8.75" y="-10.16" dx="1.5" dy="0.9" layer="1"/>
<smd name="19" x="-8.75" y="-11.43" dx="1.5" dy="0.9" layer="1"/>
<smd name="20" x="8.75" y="-11.43" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="21" x="8.75" y="-10.16" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="22" x="8.75" y="-8.89" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="23" x="8.75" y="-7.62" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="24" x="8.75" y="-6.35" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="25" x="8.75" y="-5.08" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="26" x="8.75" y="-3.81" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="27" x="8.75" y="-2.54" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="28" x="8.75" y="-1.27" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="29" x="8.75" y="0" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="30" x="8.75" y="1.27" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="31" x="8.75" y="2.54" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="32" x="8.75" y="3.81" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="33" x="8.75" y="5.08" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="34" x="8.75" y="6.35" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="35" x="8.75" y="7.62" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="36" x="8.75" y="8.89" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="37" x="8.75" y="10.16" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="38" x="8.75" y="11.43" dx="1.5" dy="0.9" layer="1" rot="R180"/>
<smd name="PAD@5" x="-1.5" y="3.63" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@2" x="-1.5" y="5.03" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@1" x="-2.9" y="5.03" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@4" x="-2.9" y="3.63" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@7" x="-2.9" y="2.23" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@8" x="-1.5" y="2.23" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@9" x="-0.1" y="2.23" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@6" x="-0.1" y="3.63" dx="0.9" dy="0.9" layer="1"/>
<smd name="PAD@3" x="-0.1" y="5.03" dx="0.9" dy="0.9" layer="1"/>
<wire x1="-9" y1="18.87" x2="-9" y2="12.65" width="0.1" layer="51"/>
<wire x1="-9" y1="12.65" x2="-9" y2="-12.53" width="0.1" layer="51"/>
<wire x1="9" y1="18.87" x2="9" y2="12.65" width="0.1" layer="51"/>
<wire x1="9" y1="12.65" x2="9" y2="-12.53" width="0.1" layer="51"/>
<wire x1="9" y1="-12.53" x2="-9" y2="-12.53" width="0.1" layer="51"/>
<wire x1="9" y1="18.87" x2="-9" y2="18.87" width="0.1" layer="51"/>
<wire x1="9" y1="12.65" x2="-9" y2="12.65" width="0.1" layer="51"/>
<circle x="-10.25" y="11.88" radius="0.1" width="0.5" layer="21"/>
<wire x1="-9" y1="18.87" x2="-9" y2="12.65" width="0.15" layer="21"/>
<wire x1="-9" y1="12.65" x2="-9" y2="-12.53" width="0.15" layer="21"/>
<wire x1="9" y1="18.87" x2="9" y2="12.65" width="0.15" layer="21"/>
<wire x1="9" y1="12.65" x2="9" y2="-12.53" width="0.15" layer="21"/>
<wire x1="9" y1="-12.53" x2="-9" y2="-12.53" width="0.15" layer="21"/>
<wire x1="9" y1="18.87" x2="-9" y2="18.87" width="0.15" layer="21"/>
<wire x1="9" y1="12.65" x2="-9" y2="12.65" width="0.15" layer="21"/>
<rectangle x1="-9" y1="10.98" x2="-8.15" y2="11.88" layer="51"/>
<rectangle x1="-9" y1="12.65" x2="9" y2="18.87" layer="39"/>
<rectangle x1="-9" y1="12.65" x2="9" y2="18.87" layer="40"/>
<rectangle x1="-9" y1="12.65" x2="9" y2="18.87" layer="41"/>
<rectangle x1="-9" y1="12.65" x2="9" y2="18.87" layer="42"/>
<rectangle x1="-9" y1="12.65" x2="9" y2="18.87" layer="43"/>
<text x="0" y="20" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<rectangle x1="-9" y1="9.71" x2="-8.15" y2="10.61" layer="51"/>
<rectangle x1="-9" y1="8.44" x2="-8.15" y2="9.34" layer="51"/>
<rectangle x1="-9" y1="7.17" x2="-8.15" y2="8.07" layer="51"/>
<rectangle x1="-9" y1="5.9" x2="-8.15" y2="6.8" layer="51"/>
<rectangle x1="-9" y1="4.63" x2="-8.15" y2="5.53" layer="51"/>
<rectangle x1="-9" y1="3.36" x2="-8.15" y2="4.26" layer="51"/>
<rectangle x1="-9" y1="2.09" x2="-8.15" y2="2.99" layer="51"/>
<rectangle x1="-9" y1="0.82" x2="-8.15" y2="1.72" layer="51"/>
<rectangle x1="-9" y1="-0.45" x2="-8.15" y2="0.45" layer="51"/>
<rectangle x1="-9" y1="-1.72" x2="-8.15" y2="-0.82" layer="51"/>
<rectangle x1="-9" y1="-2.99" x2="-8.15" y2="-2.09" layer="51"/>
<rectangle x1="-9" y1="-4.26" x2="-8.15" y2="-3.36" layer="51"/>
<rectangle x1="-9" y1="-5.53" x2="-8.15" y2="-4.63" layer="51"/>
<rectangle x1="-9" y1="-6.8" x2="-8.15" y2="-5.9" layer="51"/>
<rectangle x1="-9" y1="-8.07" x2="-8.15" y2="-7.17" layer="51"/>
<rectangle x1="-9" y1="-9.34" x2="-8.15" y2="-8.44" layer="51"/>
<rectangle x1="-9" y1="-10.61" x2="-8.15" y2="-9.71" layer="51"/>
<rectangle x1="-9" y1="-11.88" x2="-8.15" y2="-10.98" layer="51"/>
<rectangle x1="8.15" y1="-11.88" x2="9" y2="-10.98" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-10.61" x2="9" y2="-9.71" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-9.34" x2="9" y2="-8.44" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-8.07" x2="9" y2="-7.17" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-6.8" x2="9" y2="-5.9" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-5.53" x2="9" y2="-4.63" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-4.26" x2="9" y2="-3.36" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-2.99" x2="9" y2="-2.09" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-1.72" x2="9" y2="-0.82" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="-0.45" x2="9" y2="0.45" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="0.82" x2="9" y2="1.72" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="2.09" x2="9" y2="2.99" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="3.36" x2="9" y2="4.26" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="4.63" x2="9" y2="5.53" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="5.9" x2="9" y2="6.8" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="7.17" x2="9" y2="8.07" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="8.44" x2="9" y2="9.34" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="9.71" x2="9" y2="10.61" layer="51" rot="R180"/>
<rectangle x1="8.15" y1="10.98" x2="9" y2="11.88" layer="51" rot="R180"/>
<wire x1="-9.75" y1="19.25" x2="-9.75" y2="-12.75" width="0.1" layer="39"/>
<wire x1="-9.75" y1="-12.75" x2="9.75" y2="-12.75" width="0.1" layer="39"/>
<wire x1="9.75" y1="-12.75" x2="9.75" y2="19.25" width="0.1" layer="39"/>
<wire x1="9.75" y1="19.25" x2="-9.75" y2="19.25" width="0.1" layer="39"/>
</package>
<package name="KTT">
<smd name="3" x="0" y="0" dx="1" dy="3.4" layer="1"/>
<smd name="2" x="-1.7" y="0" dx="1" dy="3.4" layer="1"/>
<smd name="1" x="-3.4" y="0" dx="1" dy="3.4" layer="1"/>
<smd name="4" x="1.7" y="0" dx="1" dy="3.4" layer="1"/>
<smd name="5" x="3.4" y="0" dx="1" dy="3.4" layer="1"/>
<smd name="PAD" x="0" y="10.6" dx="10.7" dy="8.6" layer="1"/>
<rectangle x1="-0.4" y1="-1.15" x2="0.4" y2="1.15" layer="51"/>
<rectangle x1="-2.1" y1="-1.15" x2="-1.3" y2="1.15" layer="51"/>
<rectangle x1="-3.8" y1="-1.15" x2="-3" y2="1.15" layer="51"/>
<rectangle x1="1.3" y1="-1.15" x2="2.1" y2="1.15" layer="51"/>
<rectangle x1="3" y1="-1.15" x2="3.8" y2="1.15" layer="51"/>
<rectangle x1="-3.11" y1="8.14" x2="3.11" y2="15" layer="51"/>
<rectangle x1="-5.1" y1="13.6" x2="-3.11" y2="14.55" layer="51"/>
<rectangle x1="3.11" y1="13.6" x2="5.1" y2="14.55" layer="51"/>
<polygon width="0.1" layer="51">
<vertex x="-5.05" y="14.55"/>
<vertex x="-3.11" y="14.55"/>
<vertex x="-3.1" y="14.95"/>
</polygon>
<polygon width="0.1" layer="51">
<vertex x="3.1" y="14.55"/>
<vertex x="5.05" y="14.55"/>
<vertex x="3.1" y="14.95"/>
</polygon>
<wire x1="-5.05" y1="13.6" x2="-5.05" y2="4.7" width="0.1" layer="51"/>
<wire x1="-5.05" y1="4.7" x2="5.05" y2="4.7" width="0.1" layer="51"/>
<wire x1="5.05" y1="4.7" x2="5.05" y2="13.6" width="0.1" layer="51"/>
<wire x1="-5.05" y1="6.1" x2="-5.05" y2="4.7" width="0.15" layer="21"/>
<wire x1="-5.05" y1="4.7" x2="5.05" y2="4.7" width="0.15" layer="21"/>
<wire x1="5.05" y1="4.7" x2="5.05" y2="6.1" width="0.15" layer="21"/>
<text x="-0.25" y="16" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="-5.75" y1="15.25" x2="-5.75" y2="4.25" width="0.15" layer="39"/>
<wire x1="-5.75" y1="4.25" x2="-4.25" y2="4.25" width="0.15" layer="39"/>
<wire x1="-4.25" y1="4.25" x2="-4.25" y2="-2" width="0.15" layer="39"/>
<wire x1="-4.25" y1="-2" x2="4.25" y2="-2" width="0.15" layer="39"/>
<wire x1="4.25" y1="-2" x2="4.25" y2="4.25" width="0.15" layer="39"/>
<wire x1="4.25" y1="4.25" x2="5.75" y2="4.25" width="0.15" layer="39"/>
<wire x1="5.75" y1="4.25" x2="5.75" y2="15.25" width="0.15" layer="39"/>
<wire x1="5.75" y1="15.25" x2="-5.75" y2="15.25" width="0.15" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="CP2102N-QFN28">
<wire x1="-15.24" y1="27.94" x2="15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="-27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="-27.94" x2="-15.24" y2="-27.94" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-27.94" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<pin name="VDD" x="17.78" y="25.4" length="short" rot="R180"/>
<pin name="GND" x="17.78" y="-22.86" length="short" rot="R180"/>
<pin name="DCD" x="17.78" y="-12.7" length="short" rot="R180"/>
<pin name="RI/CLK" x="17.78" y="-15.24" length="short" rot="R180"/>
<pin name="D+" x="-17.78" y="12.7" length="short"/>
<pin name="D-" x="-17.78" y="10.16" length="short"/>
<pin name="VREGIN" x="-17.78" y="25.4" length="short"/>
<pin name="VBUS" x="-17.78" y="22.86" length="short"/>
<pin name="RSTB" x="-17.78" y="17.78" length="short"/>
<pin name="SUSPENDB" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="SUSPEND" x="17.78" y="17.78" length="short" rot="R180"/>
<pin name="CHREN" x="-17.78" y="5.08" length="short"/>
<pin name="CHR1" x="-17.78" y="0" length="short"/>
<pin name="CHR0" x="-17.78" y="2.54" length="short"/>
<pin name="GPIO.3/WAKEUP" x="-17.78" y="-12.7" length="short"/>
<pin name="DTR" x="17.78" y="-5.08" length="short" rot="R180"/>
<pin name="DSR" x="17.78" y="-2.54" length="short" rot="R180"/>
<pin name="TXD" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="RXD" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="RTS" x="17.78" y="0" length="short" rot="R180"/>
<pin name="CTS" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="GPIO.4" x="-17.78" y="-15.24" length="short"/>
<pin name="GPIO.5" x="-17.78" y="-17.78" length="short"/>
<pin name="GPIO.6" x="-17.78" y="-20.32" length="short"/>
<pin name="GPIO.0/TXT" x="-17.78" y="-5.08" length="short"/>
<pin name="GPIO.1/RXT" x="-17.78" y="-7.62" length="short"/>
<pin name="GPIO.2/RS485" x="-17.78" y="-10.16" length="short"/>
<pin name="PAD_GND" x="17.78" y="-25.4" length="short" rot="R180"/>
<text x="0" y="30.48" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-30.48" size="1.778" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="ESP32-WROVER-E/IE">
<wire x1="-12.7" y1="25.4" x2="-12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="-12.7" y2="25.4" width="0.254" layer="94"/>
<pin name="3V3" x="15.24" y="22.86" length="short" rot="R180"/>
<pin name="GND" x="15.24" y="-20.32" length="short" rot="R180"/>
<pin name="PAD_GND" x="15.24" y="-22.86" length="short" rot="R180"/>
<pin name="EN" x="-15.24" y="20.32" length="short"/>
<pin name="SENSOR_VP" x="-15.24" y="15.24" length="short"/>
<pin name="SENSOR_VN" x="-15.24" y="12.7" length="short"/>
<pin name="IO0" x="-15.24" y="7.62" length="short"/>
<pin name="IO2" x="-15.24" y="5.08" length="short"/>
<pin name="IO4" x="-15.24" y="2.54" length="short"/>
<pin name="IO5" x="-15.24" y="0" length="short"/>
<pin name="IO12" x="-15.24" y="-2.54" length="short"/>
<pin name="IO13" x="-15.24" y="-5.08" length="short"/>
<pin name="IO14" x="-15.24" y="-7.62" length="short"/>
<pin name="IO15" x="-15.24" y="-10.16" length="short"/>
<pin name="IO18" x="-15.24" y="-12.7" length="short"/>
<pin name="IO19" x="-15.24" y="-15.24" length="short"/>
<pin name="IO21" x="15.24" y="-15.24" length="short" rot="R180"/>
<pin name="IO22" x="15.24" y="-12.7" length="short" rot="R180"/>
<pin name="IO23" x="15.24" y="-10.16" length="short" rot="R180"/>
<pin name="IO25" x="15.24" y="-7.62" length="short" rot="R180"/>
<pin name="IO26" x="15.24" y="-5.08" length="short" rot="R180"/>
<pin name="IO27" x="15.24" y="-2.54" length="short" rot="R180"/>
<pin name="IO32" x="15.24" y="0" length="short" rot="R180"/>
<pin name="IO33" x="15.24" y="2.54" length="short" rot="R180"/>
<pin name="IO34" x="15.24" y="5.08" length="short" rot="R180"/>
<pin name="IO35" x="15.24" y="7.62" length="short" rot="R180"/>
<pin name="RXD" x="15.24" y="15.24" length="short" rot="R180"/>
<pin name="TXD" x="15.24" y="12.7" length="short" rot="R180"/>
<text x="0" y="27.94" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-27.94" size="1.778" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="REG104">
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<pin name="ENABLE" x="12.7" y="-5.08" length="short" direction="in" rot="R180"/>
<pin name="GND" x="-12.7" y="-5.08" length="short"/>
<pin name="VOUT" x="12.7" y="5.08" length="short" direction="pwr" rot="R180"/>
<pin name="VIN" x="-12.7" y="5.08" length="short" direction="pwr"/>
<pin name="NR/ADJUST" x="12.7" y="0" length="short" rot="R180"/>
<text x="0" y="10.16" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-10.16" size="1.778" layer="96" align="center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CP2102N-QFN28" prefix="U">
<description>CP2102N QFN28
Silicon Labs
- CP2102N 28 pin variant with TXT and RXT</description>
<gates>
<gate name="G$1" symbol="CP2102N-QFN28" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFN28">
<connects>
<connect gate="G$1" pin="CHR0" pad="15"/>
<connect gate="G$1" pin="CHR1" pad="14"/>
<connect gate="G$1" pin="CHREN" pad="13"/>
<connect gate="G$1" pin="CTS" pad="23"/>
<connect gate="G$1" pin="D+" pad="4"/>
<connect gate="G$1" pin="D-" pad="5"/>
<connect gate="G$1" pin="DCD" pad="1"/>
<connect gate="G$1" pin="DSR" pad="27"/>
<connect gate="G$1" pin="DTR" pad="28"/>
<connect gate="G$1" pin="GND" pad="3"/>
<connect gate="G$1" pin="GPIO.0/TXT" pad="19"/>
<connect gate="G$1" pin="GPIO.1/RXT" pad="18"/>
<connect gate="G$1" pin="GPIO.2/RS485" pad="17"/>
<connect gate="G$1" pin="GPIO.3/WAKEUP" pad="16"/>
<connect gate="G$1" pin="GPIO.4" pad="22"/>
<connect gate="G$1" pin="GPIO.5" pad="21"/>
<connect gate="G$1" pin="GPIO.6" pad="20"/>
<connect gate="G$1" pin="PAD_GND" pad="PAD"/>
<connect gate="G$1" pin="RI/CLK" pad="2"/>
<connect gate="G$1" pin="RSTB" pad="9"/>
<connect gate="G$1" pin="RTS" pad="24"/>
<connect gate="G$1" pin="RXD" pad="25"/>
<connect gate="G$1" pin="SUSPEND" pad="12"/>
<connect gate="G$1" pin="SUSPENDB" pad="11"/>
<connect gate="G$1" pin="TXD" pad="26"/>
<connect gate="G$1" pin="VBUS" pad="8"/>
<connect gate="G$1" pin="VDD" pad="6"/>
<connect gate="G$1" pin="VREGIN" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ESP32-WROVER-E/IE" prefix="U">
<description>ESP32-WROVER-E/IE
Espressif
- ESP32 with 8MB PSRAM</description>
<gates>
<gate name="G$1" symbol="ESP32-WROVER-E/IE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="ESP32-WROVER-E/IE">
<connects>
<connect gate="G$1" pin="3V3" pad="2"/>
<connect gate="G$1" pin="EN" pad="3"/>
<connect gate="G$1" pin="GND" pad="1 15 38"/>
<connect gate="G$1" pin="IO0" pad="25"/>
<connect gate="G$1" pin="IO12" pad="14"/>
<connect gate="G$1" pin="IO13" pad="16"/>
<connect gate="G$1" pin="IO14" pad="13"/>
<connect gate="G$1" pin="IO15" pad="23"/>
<connect gate="G$1" pin="IO18" pad="30"/>
<connect gate="G$1" pin="IO19" pad="31"/>
<connect gate="G$1" pin="IO2" pad="24"/>
<connect gate="G$1" pin="IO21" pad="33"/>
<connect gate="G$1" pin="IO22" pad="36"/>
<connect gate="G$1" pin="IO23" pad="37"/>
<connect gate="G$1" pin="IO25" pad="10"/>
<connect gate="G$1" pin="IO26" pad="11"/>
<connect gate="G$1" pin="IO27" pad="12"/>
<connect gate="G$1" pin="IO32" pad="8"/>
<connect gate="G$1" pin="IO33" pad="9"/>
<connect gate="G$1" pin="IO34" pad="6"/>
<connect gate="G$1" pin="IO35" pad="7"/>
<connect gate="G$1" pin="IO4" pad="26"/>
<connect gate="G$1" pin="IO5" pad="29"/>
<connect gate="G$1" pin="PAD_GND" pad="PAD@1 PAD@2 PAD@3 PAD@4 PAD@5 PAD@6 PAD@7 PAD@8 PAD@9"/>
<connect gate="G$1" pin="RXD" pad="34"/>
<connect gate="G$1" pin="SENSOR_VN" pad="5"/>
<connect gate="G$1" pin="SENSOR_VP" pad="4"/>
<connect gate="G$1" pin="TXD" pad="35"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="REG104" prefix="U">
<description>REG104 Linear Regulator
Texas Instruments (Burr-Brown Products)
- Max Power Dissipation:
	- DDPAK: 3.7W
	- SOT-223: 2W</description>
<gates>
<gate name="G$1" symbol="REG104" x="0" y="0"/>
</gates>
<devices>
<device name="5.0V" package="KTT">
<connects>
<connect gate="G$1" pin="ENABLE" pad="4"/>
<connect gate="G$1" pin="GND" pad="3 PAD"/>
<connect gate="G$1" pin="NR/ADJUST" pad="2"/>
<connect gate="G$1" pin="VIN" pad="5"/>
<connect gate="G$1" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.3V" package="KTT">
<connects>
<connect gate="G$1" pin="ENABLE" pad="4"/>
<connect gate="G$1" pin="GND" pad="3 PAD"/>
<connect gate="G$1" pin="NR/ADJUST" pad="2"/>
<connect gate="G$1" pin="VIN" pad="5"/>
<connect gate="G$1" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Symbols">
<packages>
</packages>
<symbols>
<symbol name="12.0V">
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0.762" y2="1.27" width="0.254" layer="94"/>
<text x="0" y="3.175" size="1.27" layer="96" align="bottom-center">&gt;VALUE</text>
<pin name="12.0V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="PGND">
<wire x1="0" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.54" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<text x="0" y="-3.81" size="1.016" layer="96" align="bottom-center">P</text>
<pin name="PGND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="3.3V">
<wire x1="0" y1="2.54" x2="-0.762" y2="1.27" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="0.762" y2="1.27" width="0.254" layer="94"/>
<text x="0" y="3.175" size="1.27" layer="96" align="bottom-center">&gt;VALUE</text>
<pin name="3.3V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="CHASSIS">
<wire x1="0" y1="-2.54" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="-2.54" y2="-3.81" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-0.635" y2="-3.81" width="0.254" layer="94"/>
<wire x1="1.905" y1="-2.54" x2="1.27" y2="-3.81" width="0.254" layer="94"/>
<pin name="CHASSIS" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="NO-CONNECT">
<wire x1="0.635" y1="0.635" x2="0" y2="0" width="0.127" layer="94"/>
<wire x1="-0.635" y1="0.635" x2="0" y2="0" width="0.127" layer="94"/>
<wire x1="-0.635" y1="-0.635" x2="0" y2="0" width="0.127" layer="94"/>
<wire x1="0" y1="0" x2="0.635" y2="-0.635" width="0.127" layer="94"/>
</symbol>
<symbol name="DGND-0">
<wire x1="1.905" y1="-2.54" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<text x="0" y="-3.81" size="1.016" layer="96" align="bottom-center">D</text>
<pin name="DGND-0" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
<text x="1.016" y="-2.032" size="1.27" layer="94" align="bottom-center">0</text>
</symbol>
<symbol name="DGND-1">
<wire x1="1.905" y1="-2.54" x2="0" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="-1.905" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-2.54" x2="1.905" y2="-2.54" width="0.254" layer="94"/>
<text x="0" y="-3.81" size="1.016" layer="96" align="bottom-center">D</text>
<pin name="DGND-1" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
<text x="1.016" y="-2.032" size="1.27" layer="94" align="bottom-center">1</text>
</symbol>
<symbol name="CONNECT-IN">
<wire x1="4.826" y1="-1.016" x2="1.016" y2="-1.016" width="0.254" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.016" y1="1.016" x2="4.826" y2="1.016" width="0.254" layer="94"/>
<wire x1="4.826" y1="1.016" x2="4.826" y2="-1.016" width="0.254" layer="94"/>
<text x="2.794" y="0" size="1.016" layer="94" rot="R180" align="center">IN</text>
</symbol>
<symbol name="CONNECT-OUT">
<wire x1="0" y1="1.016" x2="3.81" y2="1.016" width="0.254" layer="94"/>
<wire x1="3.81" y1="1.016" x2="4.826" y2="0" width="0.254" layer="94"/>
<wire x1="4.826" y1="0" x2="3.81" y2="-1.016" width="0.254" layer="94"/>
<wire x1="3.81" y1="-1.016" x2="0" y2="-1.016" width="0.254" layer="94"/>
<wire x1="0" y1="-1.016" x2="0" y2="1.016" width="0.254" layer="94"/>
<text x="2.032" y="0" size="1.016" layer="94" align="center">OUT</text>
</symbol>
<symbol name="CONNECT-I/O">
<wire x1="1.016" y1="-1.016" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<text x="2.286" y="0" size="1.016" layer="94" rot="R180" align="center">I/O</text>
<wire x1="4.572" y1="0" x2="3.556" y2="1.016" width="0.254" layer="94"/>
<wire x1="3.556" y1="1.016" x2="1.016" y2="1.016" width="0.254" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="3.556" y2="-1.016" width="0.254" layer="94"/>
<wire x1="3.556" y1="-1.016" x2="4.572" y2="0" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="12.0V">
<description>12.0V
Connection</description>
<gates>
<gate name="G$1" symbol="12.0V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PGND">
<description>Power Ground
- High current flow</description>
<gates>
<gate name="G$1" symbol="PGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="3.3V">
<description>3.3V 
Connection</description>
<gates>
<gate name="G$1" symbol="3.3V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CHASSIS">
<description>Chassis Ground
- Metal shielding and sheaths</description>
<gates>
<gate name="G$1" symbol="CHASSIS" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NO-CONNECT">
<description>No Connect</description>
<gates>
<gate name="G$1" symbol="NO-CONNECT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DGND-0">
<description>Digital Ground Channel 0
- Digital circuitry with voltage and current spikes</description>
<gates>
<gate name="G$1" symbol="DGND-0" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DGND-1">
<description>Digital Ground Channel 1
- Digital circuitry with voltage and current spikes</description>
<gates>
<gate name="G$1" symbol="DGND-1" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONNECT-IN">
<description>Intersheet Connection In</description>
<gates>
<gate name="G$1" symbol="CONNECT-IN" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONNECT-OUT">
<description>Intersheet Connection Out</description>
<gates>
<gate name="G$1" symbol="CONNECT-OUT" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONNECT-I/O">
<description>Intersheet Connection In/Out</description>
<gates>
<gate name="G$1" symbol="CONNECT-I/O" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name="">
<attribute name="_EXTERNAL_" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Connectors">
<packages>
<package name="47589-0001">
<smd name="SHIELD@4" x="-1.15" y="0" dx="1.8" dy="1.9" layer="1"/>
<smd name="SHIELD@5" x="1.15" y="0" dx="1.8" dy="1.9" layer="1"/>
<smd name="3" x="0" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="4" x="0.65" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="5" x="1.3" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="2" x="-0.65" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<smd name="1" x="-1.3" y="2.675" dx="0.4" dy="1.35" layer="1"/>
<wire x1="-2.55" y1="3.1" x2="-1.9" y2="3.1" width="0" layer="46" curve="-180"/>
<wire x1="-2.55" y1="2.9" x2="-1.9" y2="2.9" width="0" layer="46" curve="180"/>
<wire x1="-2.55" y1="2.9" x2="-2.55" y2="3.1" width="0" layer="46"/>
<wire x1="-1.9" y1="2.9" x2="-1.9" y2="3.1" width="0" layer="46"/>
<wire x1="-4.475" y1="0.35" x2="-3.875" y2="0.35" width="0" layer="46" curve="-180"/>
<wire x1="-4.475" y1="-0.35" x2="-3.875" y2="-0.35" width="0" layer="46" curve="180"/>
<wire x1="-4.475" y1="-0.35" x2="-4.475" y2="0.35" width="0" layer="46"/>
<wire x1="-3.875" y1="-0.35" x2="-3.875" y2="0.35" width="0" layer="46"/>
<wire x1="-4.35" y1="-1.45" x2="-3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-1.45" x2="3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="3.5" y1="-1.45" x2="4.35" y2="-1.45" width="0.1" layer="51"/>
<text x="4.75" y="-1.5" size="0.5" layer="51" font="vector" ratio="15" align="top-left">PCB EDGE</text>
<wire x1="-3.5" y1="-2.15" x2="3.5" y2="-2.15" width="0.1" layer="51"/>
<wire x1="-3" y1="3.35" x2="-3.5" y2="3.35" width="0.15" layer="21"/>
<wire x1="-3.5" y1="3.35" x2="-3.5" y2="1.25" width="0.15" layer="21"/>
<wire x1="3" y1="3.35" x2="3.5" y2="3.35" width="0.15" layer="21"/>
<wire x1="3.5" y1="3.35" x2="3.5" y2="1.25" width="0.15" layer="21"/>
<pad name="SHIELD@3" x="-4.175" y="0" drill="0.2" diameter="0.4"/>
<pad name="SHIELD@1" x="-2.225" y="3" drill="0.2" diameter="0.4"/>
<rectangle x1="-0.125" y1="2.75" x2="0.125" y2="3.25" layer="51"/>
<rectangle x1="-0.775" y1="2.75" x2="-0.525" y2="3.25" layer="51"/>
<rectangle x1="-1.425" y1="2.75" x2="-1.175" y2="3.25" layer="51"/>
<rectangle x1="0.525" y1="2.75" x2="0.775" y2="3.25" layer="51"/>
<rectangle x1="1.175" y1="2.75" x2="1.425" y2="3.25" layer="51"/>
<wire x1="-3.5" y1="3.35" x2="-3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="-3.5" y1="-2.15" x2="-3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="3.5" y1="3.35" x2="3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="3.5" y1="-2.15" x2="3.5" y2="-1.45" width="0.1" layer="51"/>
<wire x1="-3.5" y1="3.35" x2="3.5" y2="3.35" width="0.1" layer="51"/>
<text x="0" y="4.75" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="-5" y1="-1.25" x2="5" y2="-1.25" width="0.15" layer="39"/>
<wire x1="5" y1="-1.25" x2="5" y2="1.25" width="0.15" layer="39"/>
<wire x1="5" y1="1.25" x2="3.75" y2="1.25" width="0.15" layer="39"/>
<wire x1="3.75" y1="1.25" x2="3.75" y2="4" width="0.15" layer="39"/>
<wire x1="3.75" y1="4" x2="-3.75" y2="4" width="0.15" layer="39"/>
<wire x1="-3.75" y1="4" x2="-3.75" y2="1.25" width="0.15" layer="39"/>
<wire x1="-3.75" y1="1.25" x2="-5" y2="1.25" width="0.15" layer="39"/>
<wire x1="-5" y1="1.25" x2="-5" y2="-1.25" width="0.15" layer="39"/>
<rectangle x1="-4.175" y1="-0.95" x2="-2.6" y2="0.95" layer="1"/>
<polygon width="0.2" layer="29">
<vertex x="-4.675" y="0.45"/>
<vertex x="-4.675" y="-0.45" curve="90"/>
<vertex x="-4.175" y="-0.95" curve="90"/>
<vertex x="-3.675" y="-0.45"/>
<vertex x="-3.675" y="0.45" curve="90"/>
<vertex x="-4.175" y="0.95" curve="90"/>
</polygon>
<rectangle x1="-4.275" y1="-1.05" x2="-2.5" y2="1.05" layer="29"/>
<wire x1="-2.75" y1="3.1" x2="-1.7" y2="3.1" width="0.2" layer="29" curve="-180"/>
<wire x1="-1.7" y1="2.9" x2="-2.75" y2="2.9" width="0.2" layer="29" curve="-180"/>
<wire x1="-2.75" y1="3.1" x2="-2.75" y2="2.9" width="0.2" layer="29"/>
<wire x1="-1.7" y1="3.1" x2="-1.7" y2="2.9" width="0.2" layer="29"/>
<polygon width="0.2" layer="29">
<vertex x="-2.75" y="3.1"/>
<vertex x="-2.75" y="2.9" curve="180"/>
<vertex x="-1.7" y="2.9"/>
<vertex x="-1.7" y="3.1" curve="180"/>
</polygon>
<wire x1="1.9" y1="3.1" x2="2.55" y2="3.1" width="0" layer="46" curve="-180"/>
<wire x1="1.9" y1="2.9" x2="2.55" y2="2.9" width="0" layer="46" curve="180"/>
<wire x1="1.9" y1="2.9" x2="1.9" y2="3.1" width="0" layer="46"/>
<wire x1="2.55" y1="2.9" x2="2.55" y2="3.1" width="0" layer="46"/>
<pad name="SHIELD@2" x="2.225" y="3" drill="0.2" diameter="0.4"/>
<wire x1="1.7" y1="3.1" x2="2.75" y2="3.1" width="0.2" layer="29" curve="-180"/>
<wire x1="2.75" y1="2.9" x2="1.7" y2="2.9" width="0.2" layer="29" curve="-180"/>
<wire x1="1.7" y1="3.1" x2="1.7" y2="2.9" width="0.2" layer="29"/>
<wire x1="2.75" y1="3.1" x2="2.75" y2="2.9" width="0.2" layer="29"/>
<polygon width="0.2" layer="29">
<vertex x="1.7" y="3.1"/>
<vertex x="1.7" y="2.9" curve="180"/>
<vertex x="2.75" y="2.9"/>
<vertex x="2.75" y="3.1" curve="180"/>
</polygon>
<wire x1="4.475" y1="-0.35" x2="3.875" y2="-0.35" width="0" layer="46" curve="-180"/>
<wire x1="4.475" y1="0.35" x2="3.875" y2="0.35" width="0" layer="46" curve="180"/>
<wire x1="4.475" y1="0.35" x2="4.475" y2="-0.35" width="0" layer="46"/>
<wire x1="3.875" y1="0.35" x2="3.875" y2="-0.35" width="0" layer="46"/>
<pad name="SHIELD@6" x="4.175" y="0" drill="0.2" diameter="0.4" rot="R180"/>
<rectangle x1="2.6" y1="-0.95" x2="4.175" y2="0.95" layer="1" rot="R180"/>
<polygon width="0.2" layer="1">
<vertex x="4.175" y="0.85" curve="-90"/>
<vertex x="4.575" y="0.45"/>
<vertex x="4.575" y="-0.45" curve="-90"/>
<vertex x="4.175" y="-0.85" curve="-90"/>
<vertex x="3.775" y="-0.45"/>
<vertex x="3.775" y="0.45" curve="-90"/>
</polygon>
<polygon width="0.2" layer="29">
<vertex x="4.675" y="-0.45"/>
<vertex x="4.675" y="0.45" curve="90"/>
<vertex x="4.175" y="0.95" curve="90"/>
<vertex x="3.675" y="0.45"/>
<vertex x="3.675" y="-0.45" curve="90"/>
<vertex x="4.175" y="-0.95" curve="90"/>
</polygon>
<rectangle x1="2.5" y1="-1.05" x2="4.275" y2="1.05" layer="29" rot="R180"/>
<polygon width="0.2" layer="1">
<vertex x="-1.8" y="2.9" curve="-180"/>
<vertex x="-2.65" y="2.9"/>
<vertex x="-2.65" y="3.1" curve="-180"/>
<vertex x="-1.8" y="3.1"/>
</polygon>
<polygon width="0.2" layer="1">
<vertex x="1.8" y="3.1"/>
<vertex x="1.8" y="2.9" curve="180"/>
<vertex x="2.65" y="2.9"/>
<vertex x="2.65" y="3.1" curve="180"/>
</polygon>
<polygon width="0.2" layer="16">
<vertex x="1.8" y="2.9" curve="180"/>
<vertex x="2.65" y="2.9"/>
<vertex x="2.65" y="3.1" curve="180"/>
<vertex x="1.8" y="3.1"/>
</polygon>
<polygon width="0.2" layer="16">
<vertex x="-1.8" y="3.1"/>
<vertex x="-1.8" y="2.9" curve="-180"/>
<vertex x="-2.65" y="2.9"/>
<vertex x="-2.65" y="3.1" curve="-180"/>
</polygon>
<polygon width="0.2" layer="30">
<vertex x="4.675" y="0.45"/>
<vertex x="4.675" y="-0.45" curve="-90"/>
<vertex x="4.175" y="-0.95" curve="-90"/>
<vertex x="3.675" y="-0.45"/>
<vertex x="3.675" y="0.45" curve="-90"/>
<vertex x="4.175" y="0.95" curve="-90"/>
</polygon>
<wire x1="2.75" y1="3.1" x2="1.7" y2="3.1" width="0.2" layer="30" curve="180"/>
<wire x1="1.7" y1="2.9" x2="2.75" y2="2.9" width="0.2" layer="30" curve="180"/>
<wire x1="2.75" y1="3.1" x2="2.75" y2="2.9" width="0.2" layer="30"/>
<wire x1="1.7" y1="3.1" x2="1.7" y2="2.9" width="0.2" layer="30"/>
<polygon width="0.2" layer="30">
<vertex x="2.75" y="3.1"/>
<vertex x="2.75" y="2.9" curve="-180"/>
<vertex x="1.7" y="2.9"/>
<vertex x="1.7" y="3.1" curve="-180"/>
</polygon>
<wire x1="-1.7" y1="3.1" x2="-2.75" y2="3.1" width="0.2" layer="30" curve="180"/>
<wire x1="-2.75" y1="2.9" x2="-1.7" y2="2.9" width="0.2" layer="30" curve="180"/>
<wire x1="-1.7" y1="3.1" x2="-1.7" y2="2.9" width="0.2" layer="30"/>
<wire x1="-2.75" y1="3.1" x2="-2.75" y2="2.9" width="0.2" layer="30"/>
<polygon width="0.2" layer="30">
<vertex x="-1.7" y="3.1"/>
<vertex x="-1.7" y="2.9" curve="-180"/>
<vertex x="-2.75" y="2.9"/>
<vertex x="-2.75" y="3.1" curve="-180"/>
</polygon>
<polygon width="0.2" layer="30">
<vertex x="-4.675" y="-0.45"/>
<vertex x="-4.675" y="0.45" curve="-90"/>
<vertex x="-4.175" y="0.95" curve="-90"/>
<vertex x="-3.675" y="0.45"/>
<vertex x="-3.675" y="-0.45" curve="-90"/>
<vertex x="-4.175" y="-0.95" curve="-90"/>
</polygon>
<polygon width="0.2" layer="1">
<vertex x="-4.575" y="0.45"/>
<vertex x="-4.575" y="-0.45" curve="90"/>
<vertex x="-4.175" y="-0.85" curve="90"/>
<vertex x="-3.775" y="-0.45"/>
<vertex x="-3.775" y="0.45" curve="90"/>
<vertex x="-4.175" y="0.85" curve="90"/>
</polygon>
<polygon width="0.2" layer="16">
<vertex x="-4.175" y="-0.85" curve="-90"/>
<vertex x="-4.575" y="-0.45"/>
<vertex x="-4.575" y="0.45" curve="-90"/>
<vertex x="-4.175" y="0.85" curve="-90"/>
<vertex x="-3.775" y="0.45"/>
<vertex x="-3.775" y="-0.45" curve="-90"/>
</polygon>
<polygon width="0.2" layer="16">
<vertex x="3.775" y="0.45"/>
<vertex x="3.775" y="-0.45" curve="90"/>
<vertex x="4.175" y="-0.85" curve="90"/>
<vertex x="4.575" y="-0.45"/>
<vertex x="4.575" y="0.45" curve="90"/>
<vertex x="4.175" y="0.85" curve="90"/>
</polygon>
</package>
<package name="MPT-0.5/2-2.54">
<hole x="-2.54" y="1.27" drill="1.1"/>
<hole x="-2.54" y="-1.27" drill="1.1"/>
<pad name="1" x="0" y="1.27" drill="1.1"/>
<pad name="2" x="0" y="-1.27" drill="1.1"/>
<wire x1="3.1" y1="2.77" x2="3.1" y2="-2.77" width="0.1" layer="51"/>
<wire x1="3.1" y1="-2.77" x2="-3.1" y2="-2.77" width="0.1" layer="51"/>
<wire x1="-3.1" y1="-2.77" x2="-3.1" y2="2.77" width="0.1" layer="51"/>
<wire x1="-3.1" y1="2.77" x2="3.1" y2="2.77" width="0.1" layer="51"/>
<wire x1="3.1" y1="2.77" x2="-3.1" y2="2.77" width="0.15" layer="21"/>
<wire x1="-3.1" y1="2.77" x2="-3.1" y2="2" width="0.15" layer="21"/>
<wire x1="-3.1" y1="-2" x2="-3.1" y2="-2.77" width="0.15" layer="21"/>
<wire x1="-3.1" y1="-2.77" x2="3.1" y2="-2.77" width="0.15" layer="21"/>
<wire x1="3.1" y1="-2.77" x2="3.1" y2="2.77" width="0.15" layer="21"/>
<wire x1="-3.1" y1="0.5" x2="-3.1" y2="-0.5" width="0.15" layer="21"/>
<text x="0" y="3.5" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="-3.5" y1="3" x2="-3.5" y2="-3" width="0.15" layer="39"/>
<wire x1="-3.5" y1="-3" x2="3.25" y2="-3" width="0.15" layer="39"/>
<wire x1="3.25" y1="-3" x2="3.25" y2="3" width="0.15" layer="39"/>
<wire x1="3.25" y1="3" x2="-3.5" y2="3" width="0.15" layer="39"/>
</package>
<package name="MEM2061">
<smd name="CD@1" x="-4.95" y="7.325" dx="1.8" dy="1.4" layer="1"/>
<smd name="CD@2" x="0.75" y="7.325" dx="1.8" dy="1.4" layer="1"/>
<smd name="8" x="-5.76" y="-3.225" dx="0.8" dy="2" layer="1"/>
<smd name="7" x="-4.66" y="-3.225" dx="0.8" dy="2" layer="1"/>
<smd name="6" x="-3.56" y="-3.425" dx="0.8" dy="2" layer="1"/>
<smd name="5" x="-2.46" y="-3.225" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-1.36" y="-3.425" dx="0.8" dy="2" layer="1"/>
<smd name="3" x="-0.26" y="-3.225" dx="0.8" dy="2" layer="1"/>
<smd name="2" x="0.84" y="-2.825" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="1.94" y="-3.225" dx="0.8" dy="2" layer="1"/>
<smd name="SHIELD@1" x="-6.55" y="-5.825" dx="1.4" dy="1.9" layer="1"/>
<smd name="SHIELD@2" x="6.6" y="-6.825" dx="1.4" dy="1.9" layer="1"/>
<rectangle x1="-7" y1="3.095" x2="3.37" y2="5.175" layer="39"/>
<wire x1="-7" y1="7.725" x2="7" y2="7.725" width="0.1" layer="51"/>
<wire x1="7" y1="7.725" x2="7" y2="-7.725" width="0.1" layer="51"/>
<wire x1="-7" y1="7.725" x2="-7" y2="-6.725" width="0.1" layer="51"/>
<wire x1="-7" y1="-6.725" x2="-7" y2="-7.725" width="0.1" layer="51"/>
<wire x1="-7" y1="-6.725" x2="-5.85" y2="-6.725" width="0.1" layer="51"/>
<wire x1="7" y1="-7.725" x2="2.54" y2="-7.725" width="0.1" layer="51"/>
<wire x1="2.54" y1="-7.725" x2="2.54" y2="-2.225" width="0.1" layer="51"/>
<wire x1="2.54" y1="-2.225" x2="-5.85" y2="-2.225" width="0.1" layer="51"/>
<rectangle x1="-7" y1="-6.725" x2="-6.05" y2="-5.425" layer="51"/>
<rectangle x1="6.05" y1="-7.725" x2="7" y2="-6.425" layer="51"/>
<rectangle x1="-5.55" y1="6.775" x2="-4.35" y2="7.725" layer="51"/>
<rectangle x1="0.15" y1="6.775" x2="1.35" y2="7.725" layer="51"/>
<rectangle x1="-5.96" y1="-3.375" x2="-5.56" y2="-2.525" layer="51"/>
<wire x1="-5.85" y1="-2.225" x2="-5.85" y2="-6.725" width="0.1" layer="51"/>
<rectangle x1="-4.86" y1="-3.375" x2="-4.46" y2="-2.525" layer="51"/>
<rectangle x1="-3.76" y1="-3.575" x2="-3.36" y2="-2.525" layer="51"/>
<rectangle x1="-2.66" y1="-3.375" x2="-2.26" y2="-2.525" layer="51"/>
<rectangle x1="-1.56" y1="-3.575" x2="-1.16" y2="-2.525" layer="51"/>
<rectangle x1="-0.46" y1="-3.375" x2="-0.06" y2="-2.525" layer="51"/>
<rectangle x1="0.64" y1="-2.975" x2="1.04" y2="-2.525" layer="51"/>
<rectangle x1="1.74" y1="-3.375" x2="2.14" y2="-2.525" layer="51"/>
<wire x1="-7" y1="7.725" x2="7" y2="7.725" width="0.15" layer="21"/>
<wire x1="7" y1="7.725" x2="7" y2="-5.675" width="0.15" layer="21"/>
<wire x1="5.7" y1="-7.725" x2="2.54" y2="-7.725" width="0.15" layer="21"/>
<wire x1="2.54" y1="-7.725" x2="2.54" y2="-2.225" width="0.15" layer="21"/>
<wire x1="-7" y1="-7.725" x2="-7" y2="-6.975" width="0.15" layer="21"/>
<wire x1="-7" y1="-4.675" x2="-7" y2="7.725" width="0.15" layer="21"/>
<wire x1="-5.85" y1="-4.475" x2="-5.85" y2="-4.675" width="0.15" layer="21"/>
<text x="0" y="9" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="-7.5" y1="8.25" x2="-7.5" y2="-8" width="0.15" layer="39"/>
<wire x1="-7.5" y1="-8" x2="7.75" y2="-8" width="0.15" layer="39"/>
<wire x1="7.75" y1="-8" x2="7.75" y2="8.25" width="0.15" layer="39"/>
<wire x1="7.75" y1="8.25" x2="-7.5" y2="8.25" width="0.15" layer="39"/>
</package>
<package name="B2B-XH-A">
<pad name="1" x="-1.25" y="0" drill="1"/>
<pad name="2" x="1.25" y="0" drill="1"/>
<wire x1="-3.75" y1="-2.35" x2="-3.75" y2="3.4" width="0.1" layer="51"/>
<wire x1="-3.75" y1="3.4" x2="3.75" y2="3.4" width="0.1" layer="51"/>
<wire x1="3.75" y1="3.4" x2="3.75" y2="-2.35" width="0.1" layer="51"/>
<wire x1="3.75" y1="-2.35" x2="-3.75" y2="-2.35" width="0.1" layer="51"/>
<wire x1="-3.75" y1="3.4" x2="-3.75" y2="-2.35" width="0.15" layer="21"/>
<wire x1="-3.75" y1="-2.35" x2="3.75" y2="-2.35" width="0.15" layer="21"/>
<wire x1="3.75" y1="-2.35" x2="3.75" y2="3.4" width="0.15" layer="21"/>
<wire x1="3.75" y1="3.4" x2="-3.75" y2="3.4" width="0.15" layer="21"/>
<text x="0" y="4.25" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="4" y1="3.75" x2="-4" y2="3.75" width="0.15" layer="39"/>
<wire x1="-4" y1="3.75" x2="-4" y2="-2.75" width="0.15" layer="39"/>
<wire x1="-4" y1="-2.75" x2="4" y2="-2.75" width="0.15" layer="39"/>
<wire x1="4" y1="-2.75" x2="4" y2="3.75" width="0.15" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="MICRO-USB-AB">
<wire x1="-7.62" y1="10.16" x2="-7.62" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-10.16" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="-10.16" x2="5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="5.08" y1="10.16" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<pin name="VCC" x="7.62" y="7.62" length="short" direction="pwr" rot="R180"/>
<pin name="D-" x="7.62" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="D+" x="7.62" y="5.08" length="short" direction="in" rot="R180"/>
<pin name="ID" x="7.62" y="0" length="short" direction="nc" rot="R180"/>
<pin name="GND" x="7.62" y="-2.54" length="short" direction="pwr" rot="R180"/>
<pin name="SHIELD" x="7.62" y="-7.62" length="short" direction="pwr" rot="R180"/>
<text x="0" y="12.7" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-12.7" size="1.778" layer="95" align="center">&gt;VALUE</text>
</symbol>
<symbol name="MPT-2-SCREW">
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.81" x2="-2.54" y2="3.81" width="0.254" layer="94"/>
<pin name="1" x="5.08" y="2.54" visible="pad" length="short" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" rot="R180"/>
<circle x="0" y="0" radius="0.762" width="0.254" layer="94"/>
<circle x="0" y="2.54" radius="0.762" width="0.254" layer="94"/>
<wire x1="-0.508" y1="-0.508" x2="0.508" y2="0.508" width="0.254" layer="94"/>
<wire x1="-0.508" y1="2.032" x2="0.508" y2="3.048" width="0.254" layer="94"/>
<text x="0" y="5.08" size="1.27" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="MICRO-SD">
<wire x1="-7.62" y1="17.78" x2="-7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-17.78" x2="7.62" y2="-17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="-17.78" x2="7.62" y2="17.78" width="0.254" layer="94"/>
<wire x1="7.62" y1="17.78" x2="-7.62" y2="17.78" width="0.254" layer="94"/>
<pin name="VDD" x="10.16" y="15.24" length="short" direction="pwr" rot="R180"/>
<pin name="VSS/GND" x="10.16" y="-12.7" length="short" direction="pwr" rot="R180"/>
<pin name="SHIELD" x="10.16" y="-15.24" length="short" direction="pwr" rot="R180"/>
<pin name="MISO/DAT0" x="10.16" y="5.08" length="short" rot="R180"/>
<pin name="DAT1" x="10.16" y="2.54" length="short" rot="R180"/>
<pin name="DAT2" x="10.16" y="0" length="short" rot="R180"/>
<pin name="CD/DAT3" x="10.16" y="-2.54" length="short" rot="R180"/>
<pin name="CLK" x="10.16" y="-7.62" length="short" direction="in" function="clk" rot="R180"/>
<pin name="MOSI/CMD" x="10.16" y="10.16" length="short" direction="in" rot="R180"/>
<text x="0" y="20.32" size="1.778" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-20.32" size="1.778" layer="96" align="center">&gt;VALUE</text>
</symbol>
<symbol name="1X02">
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="3.81" width="0.254" layer="94"/>
<wire x1="2.54" y1="3.81" x2="-2.54" y2="3.81" width="0.254" layer="94"/>
<pin name="1" x="5.08" y="2.54" visible="pad" length="short" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" rot="R180"/>
<text x="0" y="5.08" size="1.27" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="96" align="center">&gt;VALUE</text>
<wire x1="2.54" y1="2.54" x2="1.27" y2="2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0.254" y2="2.54" width="0.508" layer="94"/>
<wire x1="1.27" y1="0" x2="0.254" y2="0" width="0.508" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MICRO-USB-AB" prefix="J">
<description>Micro USB AB
Molex</description>
<gates>
<gate name="G$1" symbol="MICRO-USB-AB" x="0" y="0"/>
</gates>
<devices>
<device name="" package="47589-0001">
<connects>
<connect gate="G$1" pin="D+" pad="3"/>
<connect gate="G$1" pin="D-" pad="2"/>
<connect gate="G$1" pin="GND" pad="5"/>
<connect gate="G$1" pin="ID" pad="4"/>
<connect gate="G$1" pin="SHIELD" pad="SHIELD@1 SHIELD@2 SHIELD@3 SHIELD@4 SHIELD@5 SHIELD@6"/>
<connect gate="G$1" pin="VCC" pad="1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MPT-2-SCREW" prefix="J">
<description>2-pin MPT Screw Connector
Phoenix Contact
- Max Voltage: 160V
- Max Current: 6A</description>
<gates>
<gate name="G$1" symbol="MPT-2-SCREW" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MPT-0.5/2-2.54">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MICRO-SD" prefix="J">
<description>Micro-SD Connector
GCT
- CD = GND when not inserted</description>
<gates>
<gate name="G$1" symbol="MICRO-SD" x="0" y="0"/>
</gates>
<devices>
<device name="" package="MEM2061">
<connects>
<connect gate="G$1" pin="CD/DAT3" pad="2 CD@1 CD@2"/>
<connect gate="G$1" pin="CLK" pad="5"/>
<connect gate="G$1" pin="DAT1" pad="8"/>
<connect gate="G$1" pin="DAT2" pad="1"/>
<connect gate="G$1" pin="MISO/DAT0" pad="7"/>
<connect gate="G$1" pin="MOSI/CMD" pad="3"/>
<connect gate="G$1" pin="SHIELD" pad="SHIELD@1 SHIELD@2"/>
<connect gate="G$1" pin="VDD" pad="4"/>
<connect gate="G$1" pin="VSS/GND" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="JST-XH-2" prefix="J">
<description>2-pin XH Connector
JST
- Max Voltage: 250V
- Max Current: 3A</description>
<gates>
<gate name="G$1" symbol="1X02" x="0" y="0"/>
</gates>
<devices>
<device name="" package="B2B-XH-A">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Capacitors">
<packages>
<package name="1608-SEM">
<smd name="1" x="-0.75" y="0" dx="0.8" dy="1" layer="1"/>
<smd name="2" x="0.75" y="0" dx="0.8" dy="1" layer="1"/>
<rectangle x1="-0.8" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<wire x1="-0.2" y1="0.4" x2="0.2" y2="0.4" width="0.15" layer="21"/>
<wire x1="-0.2" y1="-0.4" x2="0.2" y2="-0.4" width="0.15" layer="21"/>
<wire x1="-1.375" y1="0.75" x2="-1.375" y2="-0.75" width="0.15" layer="21"/>
<wire x1="-1.375" y1="-0.75" x2="1.375" y2="-0.75" width="0.15" layer="21"/>
<wire x1="1.375" y1="-0.75" x2="1.375" y2="0.75" width="0.15" layer="21"/>
<wire x1="1.375" y1="0.75" x2="-1.375" y2="0.75" width="0.15" layer="21"/>
<wire x1="-1.375" y1="0.75" x2="-1.375" y2="-0.75" width="0.15" layer="39"/>
<wire x1="-1.375" y1="-0.75" x2="1.375" y2="-0.75" width="0.15" layer="39"/>
<wire x1="1.375" y1="-0.75" x2="1.375" y2="0.75" width="0.15" layer="39"/>
<wire x1="1.375" y1="0.75" x2="-1.375" y2="0.75" width="0.15" layer="39"/>
<text x="0" y="1.5" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
</package>
<package name="2012-SEM">
<smd name="1" x="-0.925" y="0" dx="0.95" dy="1.4" layer="1"/>
<smd name="2" x="0.925" y="0" dx="0.95" dy="1.4" layer="1"/>
<rectangle x1="-1" y1="-0.6" x2="1" y2="0.6" layer="51"/>
<wire x1="-0.3" y1="0.6" x2="0.3" y2="0.6" width="0.15" layer="21"/>
<wire x1="-0.3" y1="-0.6" x2="0.3" y2="-0.6" width="0.15" layer="21"/>
<wire x1="-1.75" y1="1" x2="-1.75" y2="-1" width="0.15" layer="21"/>
<wire x1="-1.75" y1="-1" x2="1.75" y2="-1" width="0.15" layer="21"/>
<wire x1="1.75" y1="-1" x2="1.75" y2="1" width="0.15" layer="21"/>
<wire x1="1.75" y1="1" x2="-1.75" y2="1" width="0.15" layer="21"/>
<wire x1="-1.75" y1="1" x2="-1.75" y2="-1" width="0.15" layer="39"/>
<wire x1="-1.75" y1="-1" x2="1.75" y2="-1" width="0.15" layer="39"/>
<wire x1="1.75" y1="-1" x2="1.75" y2="1" width="0.15" layer="39"/>
<wire x1="1.75" y1="1" x2="-1.75" y2="1" width="0.15" layer="39"/>
<text x="0" y="1.75" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="CAPACITOR-V-STANDARD">
<rectangle x1="-1.524" y1="0.508" x2="1.524" y2="1.016" layer="94"/>
<rectangle x1="-1.524" y1="-1.016" x2="1.524" y2="-0.508" layer="94"/>
<rectangle x1="-2.54" y1="0.508" x2="-1.524" y2="1.016" layer="94"/>
<rectangle x1="-2.54" y1="-1.016" x2="-1.778" y2="-0.508" layer="94"/>
<rectangle x1="-1.778" y1="-1.016" x2="-1.524" y2="-0.508" layer="94"/>
<rectangle x1="1.524" y1="0.508" x2="2.54" y2="1.016" layer="94"/>
<rectangle x1="1.524" y1="-1.016" x2="2.54" y2="-0.508" layer="94"/>
<pin name="P$1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="P$2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<wire x1="0" y1="0.762" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.762" x2="0" y2="-2.54" width="0.1524" layer="94"/>
<text x="2.54" y="3.81" size="1.27" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="1.905" size="1.27" layer="96" align="center-left">&gt;VALUE</text>
<text x="2.54" y="0" size="1.27" layer="97" align="center-left">&gt;VOLTAGE</text>
<text x="2.54" y="-3.81" size="1.27" layer="97" align="center-left">&gt;TEMPERATURE</text>
<text x="2.54" y="-1.905" size="1.27" layer="97" align="center-left">&gt;SIZE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CAP-V" prefix="C">
<description>Ceramic Capacitors
- Vertical</description>
<gates>
<gate name="G$1" symbol="CAPACITOR-V-STANDARD" x="0" y="0"/>
</gates>
<devices>
<device name="-1608" package="1608-SEM">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name="-1.0UF">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="X7R" constant="no"/>
<attribute name="VALUE" value="1.0µF ±" constant="no"/>
<attribute name="VOLTAGE" value="50V" constant="no"/>
</technology>
<technology name="-100NF">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="X7R" constant="no"/>
<attribute name="VALUE" value="100nF ±" constant="no"/>
<attribute name="VOLTAGE" value="50V" constant="no"/>
</technology>
</technologies>
</device>
<device name="-2012" package="2012-SEM">
<connects>
<connect gate="G$1" pin="P$1" pad="1"/>
<connect gate="G$1" pin="P$2" pad="2"/>
</connects>
<technologies>
<technology name="-22UF">
<attribute name="SIZE" value="2012" constant="no"/>
<attribute name="TEMPERATURE" value="X5R" constant="no"/>
<attribute name="VALUE" value="22µF ±" constant="no"/>
<attribute name="VOLTAGE" value="25V" constant="no"/>
</technology>
<technology name="-4.7UF">
<attribute name="SIZE" value="2012" constant="no"/>
<attribute name="TEMPERATURE" value="X7R" constant="no"/>
<attribute name="VALUE" value="4.7µF ±" constant="no"/>
<attribute name="VOLTAGE" value="25V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Transistors">
<packages>
<package name="SOT-23">
<smd name="3" x="0" y="-1" dx="0.6" dy="0.7" layer="1"/>
<smd name="1" x="0.95" y="1" dx="0.6" dy="0.7" layer="1"/>
<smd name="2" x="-0.95" y="1" dx="0.6" dy="0.7" layer="1"/>
<wire x1="-1.5" y1="0.7" x2="1.5" y2="0.7" width="0.1" layer="51"/>
<wire x1="1.5" y1="0.7" x2="1.5" y2="-0.7" width="0.1" layer="51"/>
<wire x1="1.5" y1="-0.7" x2="-1.5" y2="-0.7" width="0.1" layer="51"/>
<wire x1="-1.5" y1="-0.7" x2="-1.5" y2="0.7" width="0.1" layer="51"/>
<rectangle x1="-1.19" y1="0.85" x2="-0.71" y2="1.25" layer="51"/>
<rectangle x1="0.71" y1="0.85" x2="1.19" y2="1.25" layer="51"/>
<rectangle x1="-0.24" y1="-1.25" x2="0.24" y2="-0.8" layer="51"/>
<wire x1="-1.5" y1="0.7" x2="-1.5" y2="-0.7" width="0.15" layer="21"/>
<wire x1="-1.5" y1="-0.7" x2="-0.5" y2="-0.7" width="0.15" layer="21"/>
<wire x1="0.5" y1="-0.7" x2="1.5" y2="-0.7" width="0.15" layer="21"/>
<wire x1="1.5" y1="-0.7" x2="1.5" y2="0.7" width="0.15" layer="21"/>
<wire x1="-0.4" y1="0.7" x2="0.4" y2="0.7" width="0.15" layer="21"/>
<text x="0" y="2.25" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<wire x1="-1.75" y1="1.625" x2="-1.75" y2="-1.625" width="0.15" layer="39"/>
<wire x1="-1.75" y1="-1.625" x2="1.75" y2="-1.625" width="0.15" layer="39"/>
<wire x1="1.75" y1="-1.625" x2="1.75" y2="1.625" width="0.15" layer="39"/>
<wire x1="1.75" y1="1.625" x2="-1.75" y2="1.625" width="0.15" layer="39"/>
</package>
</packages>
<symbols>
<symbol name="BJT-NPN-STANDARD">
<pin name="C" x="2.54" y="5.08" visible="pad" length="short" direction="in" rot="R270"/>
<pin name="B" x="-2.54" y="0" visible="pad" length="short" direction="in"/>
<pin name="E" x="2.54" y="-5.08" visible="pad" length="short" direction="out" rot="R90"/>
<wire x1="0" y1="2.032" x2="0" y2="0.762" width="0.254" layer="94"/>
<wire x1="0" y1="0.762" x2="0" y2="-0.762" width="0.254" layer="94"/>
<wire x1="0" y1="-0.762" x2="0" y2="-2.032" width="0.254" layer="94"/>
<wire x1="2.54" y1="2.54" x2="0" y2="0.762" width="0.254" layer="94"/>
<wire x1="0" y1="-0.762" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<polygon width="0.254" layer="94">
<vertex x="1.778" y="-2.00025"/>
<vertex x="1.27" y="-1.17475"/>
<vertex x="0.8255" y="-1.80975"/>
</polygon>
<text x="3.81" y="3.81" size="1.27" layer="95" align="center-left">&gt;NAME</text>
<text x="3.81" y="1.905" size="1.27" layer="96" align="center-left">&gt;VALUE</text>
<text x="3.81" y="0" size="1.27" layer="97" align="center-left">&gt;POWER</text>
<text x="3.81" y="-1.905" size="1.27" layer="97" align="center-left">&gt;IC_MAX</text>
<text x="3.81" y="-3.81" size="1.27" layer="97" align="center-left">&gt;VCE_MAX</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BJT-NPN" prefix="Q">
<description>NPN BJTs</description>
<gates>
<gate name="G$1" symbol="BJT-NPN-STANDARD" x="0" y="0"/>
</gates>
<devices>
<device name="-BC817" package="SOT-23">
<connects>
<connect gate="G$1" pin="B" pad="1"/>
<connect gate="G$1" pin="C" pad="3"/>
<connect gate="G$1" pin="E" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="IC_MAX" value="500mA" constant="no"/>
<attribute name="POWER" value="250mW" constant="no"/>
<attribute name="VALUE" value="BC817" constant="no"/>
<attribute name="VCE_MAX" value="45V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Resistors">
<packages>
<package name="1608-SEM">
<smd name="1" x="-0.8" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="2" x="0.8" y="0" dx="0.8" dy="0.8" layer="1"/>
<rectangle x1="-0.8" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<wire x1="-0.2" y1="0.4" x2="0.2" y2="0.4" width="0.15" layer="21"/>
<wire x1="-0.2" y1="-0.4" x2="0.2" y2="-0.4" width="0.15" layer="21"/>
<wire x1="-1.5" y1="0.75" x2="-1.5" y2="-0.75" width="0.15" layer="21"/>
<wire x1="-1.5" y1="-0.75" x2="1.5" y2="-0.75" width="0.15" layer="21"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="0.75" width="0.15" layer="21"/>
<wire x1="1.5" y1="0.75" x2="-1.5" y2="0.75" width="0.15" layer="21"/>
<wire x1="-1.5" y1="0.75" x2="-1.5" y2="-0.75" width="0.15" layer="39"/>
<wire x1="-1.5" y1="-0.75" x2="1.5" y2="-0.75" width="0.15" layer="39"/>
<wire x1="1.5" y1="-0.75" x2="1.5" y2="0.75" width="0.15" layer="39"/>
<wire x1="1.5" y1="0.75" x2="-1.5" y2="0.75" width="0.15" layer="39"/>
<text x="0" y="1.5" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="RESISTOR-H-STANDARD">
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
<wire x1="-0.42341875" y1="0.8468375" x2="-1.270253125" y2="-0.8468375" width="0.254" layer="94"/>
<wire x1="-1.270253125" y1="-0.8468375" x2="-2.117090625" y2="0.8468375" width="0.254" layer="94"/>
<wire x1="-2.117090625" y1="0.8468375" x2="-2.540509375" y2="0" width="0.254" layer="94"/>
<wire x1="-0.42341875" y1="0.8468375" x2="0.42341875" y2="-0.8468375" width="0.254" layer="94"/>
<wire x1="0.42341875" y1="-0.8468375" x2="1.270253125" y2="0.8468375" width="0.254" layer="94"/>
<wire x1="1.270253125" y1="0.8468375" x2="2.117090625" y2="-0.8468375" width="0.254" layer="94"/>
<wire x1="2.117090625" y1="-0.8468375" x2="2.540509375" y2="0" width="0.254" layer="94"/>
<text x="-0.635" y="-2.54" size="1.27" layer="96" align="center-right">&gt;VALUE</text>
<text x="0.635" y="-2.54" size="1.27" layer="97" align="center-left">&gt;POWER</text>
<text x="0.635" y="-4.445" size="1.27" layer="97" align="center-left">&gt;TEMPERATURE</text>
<text x="-0.635" y="-4.445" size="1.27" layer="97" align="center-right">&gt;VOLTAGE</text>
<text x="0" y="-4.445" size="1.27" layer="97" align="center">/</text>
<text x="0" y="-2.54" size="1.27" layer="97" align="center">/</text>
<text x="0" y="2.54" size="1.27" layer="95" align="center">&gt;NAME</text>
</symbol>
<symbol name="RESISTOR-V-STANDARD">
<pin name="1" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
<pin name="2" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
<wire x1="0.8468375" y1="0.42341875" x2="-0.8468375" y2="1.270253125" width="0.254" layer="94"/>
<wire x1="-0.8468375" y1="1.270253125" x2="0.8468375" y2="2.117090625" width="0.254" layer="94"/>
<wire x1="0.8468375" y1="2.117090625" x2="0" y2="2.540509375" width="0.254" layer="94"/>
<wire x1="0.8468375" y1="0.42341875" x2="-0.8468375" y2="-0.42341875" width="0.254" layer="94"/>
<wire x1="-0.8468375" y1="-0.42341875" x2="0.8468375" y2="-1.270253125" width="0.254" layer="94"/>
<wire x1="0.8468375" y1="-1.270253125" x2="-0.8468375" y2="-2.117090625" width="0.254" layer="94"/>
<wire x1="-0.8468375" y1="-2.117090625" x2="0" y2="-2.540509375" width="0.254" layer="94"/>
<text x="2.54" y="3.81" size="1.27" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="1.905" size="1.27" layer="96" align="center-left">&gt;VALUE</text>
<text x="2.54" y="0" size="1.27" layer="97" align="center-left">&gt;POWER</text>
<text x="2.54" y="-1.905" size="1.27" layer="97" align="center-left">&gt;VOLTAGE</text>
<text x="2.54" y="-3.81" size="1.27" layer="97" align="center-left">&gt;TEMPERATURE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RES-H" prefix="R">
<description>Resistors
- Horizontal</description>
<gates>
<gate name="G$1" symbol="RESISTOR-H-STANDARD" x="0" y="0"/>
</gates>
<devices>
<device name="-1608" package="1608-SEM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="-10K">
<attribute name="POWER" value="1/10W" constant="no"/>
<attribute name="TEMPERATURE" value="-55~155°C" constant="no"/>
<attribute name="VALUE" value="10kΩ ± 2%" constant="no"/>
<attribute name="VOLTAGE" value="31.6V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RES-V" prefix="R">
<description>Resistors
- Vertical</description>
<gates>
<gate name="G$1" symbol="RESISTOR-V-STANDARD" x="0" y="0"/>
</gates>
<devices>
<device name="-1608" package="1608-SEM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="-0R">
<attribute name="POWER" value="1/10W" constant="no"/>
<attribute name="TEMPERATURE" value="-55~125°C" constant="no"/>
<attribute name="VALUE" value="0Ω + 50mΩ Max" constant="no"/>
<attribute name="VOLTAGE" value="50mV" constant="no"/>
</technology>
<technology name="-10K">
<attribute name="POWER" value="1/10W" constant="no"/>
<attribute name="TEMPERATURE" value="-55~125°C" constant="no"/>
<attribute name="VALUE" value="10kΩ ± 2%" constant="no"/>
<attribute name="VOLTAGE" value="31.6V" constant="no"/>
</technology>
<technology name="-1K">
<attribute name="POWER" value="1/10W" constant="no"/>
<attribute name="TEMPERATURE" value="-55~125°C" constant="no"/>
<attribute name="VALUE" value="1kΩ ± 2%" constant="no"/>
<attribute name="VOLTAGE" value="10V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-LEDs">
<packages>
<package name="1608">
<smd name="1" x="-0.825" y="0" dx="0.8" dy="0.8" layer="1"/>
<smd name="2" x="0.825" y="0" dx="0.8" dy="0.8" layer="1"/>
<rectangle x1="-0.8" y1="-0.4" x2="0.8" y2="0.4" layer="51"/>
<wire x1="-1.5" y1="0.625" x2="-1.5" y2="-0.625" width="0.15" layer="21"/>
<wire x1="-1.5" y1="-0.625" x2="1.5" y2="-0.625" width="0.15" layer="21"/>
<wire x1="1.5" y1="-0.625" x2="1.5" y2="0.625" width="0.15" layer="21"/>
<wire x1="1.5" y1="0.625" x2="-1.5" y2="0.625" width="0.15" layer="21"/>
<wire x1="-1.5" y1="0.625" x2="-1.5" y2="-0.625" width="0.15" layer="39"/>
<wire x1="-1.5" y1="-0.625" x2="1.5" y2="-0.625" width="0.15" layer="39"/>
<wire x1="1.5" y1="-0.625" x2="1.5" y2="0.625" width="0.15" layer="39"/>
<wire x1="1.5" y1="0.625" x2="-1.5" y2="0.625" width="0.15" layer="39"/>
<text x="0" y="1.25" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
<rectangle x1="-1.425" y1="-0.55" x2="-1.325" y2="0.55" layer="21"/>
<rectangle x1="-1.325" y1="-0.55" x2="0" y2="-0.5" layer="21"/>
<rectangle x1="-0.325" y1="-0.5" x2="0" y2="-0.4" layer="21"/>
<rectangle x1="-1.325" y1="0.5" x2="0" y2="0.55" layer="21"/>
<rectangle x1="-0.325" y1="0.4" x2="0" y2="0.5" layer="21"/>
<wire x1="0.2" y1="0.4" x2="-0.2" y2="0.4" width="0.15" layer="21"/>
<wire x1="-0.2" y1="-0.4" x2="0.2" y2="-0.4" width="0.15" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="LED-H">
<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="in"/>
<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="out" rot="R180"/>
<wire x1="-2.54" y1="0" x2="-1.524" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="1.524" y2="0" width="0.254" layer="94"/>
<polygon width="0.254" layer="94">
<vertex x="-1.524" y="0"/>
<vertex x="-1.524" y="1.524"/>
<vertex x="1.524" y="0"/>
<vertex x="-1.524" y="-1.524"/>
</polygon>
<wire x1="1.524" y1="0" x2="1.524" y2="1.524" width="0.254" layer="94"/>
<wire x1="1.524" y1="0" x2="1.524" y2="-1.524" width="0.254" layer="94"/>
<wire x1="0.762" y1="1.778" x2="1.524" y2="2.794" width="0.254" layer="94"/>
<wire x1="-0.254" y1="2.286" x2="0.508" y2="3.302" width="0.254" layer="94"/>
<polygon width="0.254" layer="94">
<vertex x="1.905" y="3.302"/>
<vertex x="1.143" y="2.794"/>
<vertex x="1.651" y="2.413"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="0.635" y="2.921"/>
<vertex x="0.127" y="3.302"/>
<vertex x="0.889" y="3.81"/>
</polygon>
<text x="0" y="5.08" size="1.27" layer="95" align="center">&gt;NAME</text>
<text x="0" y="-2.54" size="1.27" layer="97" align="center">/</text>
<text x="0" y="-4.445" size="1.27" layer="97" align="center">/</text>
<text x="-0.635" y="-2.54" size="1.27" layer="96" align="center-right">&gt;VALUE</text>
<text x="-0.635" y="-4.445" size="1.27" layer="97" align="center-right">&gt;SIZE</text>
<text x="0.635" y="-2.54" size="1.27" layer="97" align="center-left">&gt;VOLTAGE</text>
<text x="0.635" y="-4.445" size="1.27" layer="97" align="center-left">&gt;TEMPERATURE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LED-H" prefix="DS">
<description>LEDs
Kingbright
- Horizontal</description>
<gates>
<gate name="G$1" symbol="LED-H" x="0" y="0"/>
</gates>
<devices>
<device name="-1608" package="1608">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="-BLUE">
<attribute name="SIZE" value="1608 " constant="no"/>
<attribute name="TEMPERATURE" value="-40~85°C" constant="no"/>
<attribute name="VALUE" value="Blue" constant="no"/>
<attribute name="VOLTAGE" value="3.3~4.0V" constant="no"/>
</technology>
<technology name="-BRIGHT_ORANGE">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~100°C" constant="no"/>
<attribute name="VALUE" value="Bright Orange" constant="no"/>
<attribute name="VOLTAGE" value="2.1~2.5V" constant="no"/>
</technology>
<technology name="-CYAN">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~85°C" constant="no"/>
<attribute name="VALUE" value="Cyan" constant="no"/>
<attribute name="VOLTAGE" value="2.8~3.2V" constant="no"/>
</technology>
<technology name="-GREEN">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~100°C" constant="no"/>
<attribute name="VALUE" value="Green" constant="no"/>
<attribute name="VOLTAGE" value="3.3~4.1V" constant="no"/>
</technology>
<technology name="-RED">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~100°C" constant="no"/>
<attribute name="VALUE" value="Red" constant="no"/>
<attribute name="VOLTAGE" value="1.95~2.5V" constant="no"/>
</technology>
<technology name="-WHITE">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~100°C" constant="no"/>
<attribute name="VALUE" value="White" constant="no"/>
<attribute name="VOLTAGE" value="3.3~4.0V" constant="no"/>
</technology>
<technology name="-YELLOW">
<attribute name="SIZE" value="1608" constant="no"/>
<attribute name="TEMPERATURE" value="-40~85°C" constant="no"/>
<attribute name="VALUE" value="Yellow" constant="no"/>
<attribute name="VOLTAGE" value="2.1~2.5V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Harrington-Switches">
<packages>
<package name="TL3305">
<smd name="3" x="-3.6" y="1.5" dx="1.6" dy="1.4" layer="1"/>
<smd name="4" x="3.6" y="1.5" dx="1.6" dy="1.4" layer="1"/>
<smd name="2" x="3.6" y="-1.5" dx="1.6" dy="1.4" layer="1"/>
<smd name="1" x="-3.6" y="-1.5" dx="1.6" dy="1.4" layer="1"/>
<rectangle x1="2.25" y1="1.15" x2="3.75" y2="1.85" layer="51"/>
<rectangle x1="2.25" y1="-1.85" x2="3.75" y2="-1.15" layer="51"/>
<rectangle x1="-3.75" y1="-1.85" x2="-2.25" y2="-1.15" layer="51" rot="R180"/>
<rectangle x1="-3.75" y1="1.15" x2="-2.25" y2="1.85" layer="51" rot="R180"/>
<wire x1="-2.25" y1="2.25" x2="-2.25" y2="-2.25" width="0.1" layer="51"/>
<wire x1="-2.25" y1="-2.25" x2="2.25" y2="-2.25" width="0.1" layer="51"/>
<wire x1="2.25" y1="-2.25" x2="2.25" y2="2.25" width="0.1" layer="51"/>
<wire x1="2.25" y1="2.25" x2="-2.25" y2="2.25" width="0.1" layer="51"/>
<wire x1="-2.25" y1="2.25" x2="-2.25" y2="-2.25" width="0.15" layer="21"/>
<wire x1="-2.25" y1="-2.25" x2="2.25" y2="-2.25" width="0.15" layer="21"/>
<wire x1="2.25" y1="-2.25" x2="2.25" y2="2.25" width="0.15" layer="21"/>
<wire x1="2.25" y1="2.25" x2="-2.25" y2="2.25" width="0.15" layer="21"/>
<wire x1="-4.75" y1="2.5" x2="-4.75" y2="-2.5" width="0.15" layer="39"/>
<wire x1="-4.75" y1="-2.5" x2="4.75" y2="-2.5" width="0.15" layer="39"/>
<wire x1="4.75" y1="-2.5" x2="4.75" y2="2.5" width="0.15" layer="39"/>
<wire x1="4.75" y1="2.5" x2="-4.75" y2="2.5" width="0.15" layer="39"/>
<text x="0" y="3" size="0.8" layer="25" font="vector" ratio="15" align="center">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="BUTTON-V-SPST">
<pin name="1" x="0" y="-5.08" visible="pad" length="short" rot="R90"/>
<pin name="2" x="0" y="5.08" visible="pad" length="short" rot="R270"/>
<circle x="0" y="-1.905" radius="0.635" width="0.254" layer="94"/>
<circle x="0" y="1.905" radius="0.635" width="0.254" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-1.905" y2="0" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="-1.905" y2="1.905" width="0.254" layer="94"/>
<wire x1="-1.905" y1="0" x2="-3.175" y2="0" width="0.254" layer="94"/>
<text x="2.54" y="3.175" size="1.27" layer="95" align="center-left">&gt;NAME</text>
<text x="2.54" y="-2.54" size="1.27" layer="97" align="center-left">&gt;I_MAX</text>
<text x="2.54" y="1.27" size="1.27" layer="96" align="center-left">&gt;VALUE</text>
<text x="2.54" y="-0.635" size="1.27" layer="97" align="center-left">&gt;V_MAX</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BUTTON-V-SPST" prefix="SW">
<description>SPST Button
E-Switch
- Vertical</description>
<gates>
<gate name="G$1" symbol="BUTTON-V-SPST" x="0" y="0"/>
</gates>
<devices>
<device name="-TL3305" package="TL3305">
<connects>
<connect gate="G$1" pin="1" pad="3 4"/>
<connect gate="G$1" pin="2" pad="1 2"/>
</connects>
<technologies>
<technology name="">
<attribute name="I_MAX" value="50mA" constant="no"/>
<attribute name="VALUE" value="TL3305" constant="no"/>
<attribute name="V_MAX" value="12V" constant="no"/>
</technology>
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
<part name="FRAME1" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="FRAME2" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="U2" library="Harrington-ICs" deviceset="CP2102N-QFN28" device=""/>
<part name="U1" library="Harrington-ICs" deviceset="ESP32-WROVER-E/IE" device=""/>
<part name="U3" library="Harrington-ICs" deviceset="REG104" device="3.3V"/>
<part name="J1" library="Harrington-Connectors" deviceset="MICRO-USB-AB" device=""/>
<part name="J2" library="Harrington-Connectors" deviceset="MPT-2-SCREW" device=""/>
<part name="U$2" library="Harrington-Symbols" deviceset="12.0V" device=""/>
<part name="U$4" library="Harrington-Symbols" deviceset="3.3V" device=""/>
<part name="U$5" library="Harrington-Symbols" deviceset="CHASSIS" device=""/>
<part name="U4" library="Harrington-ICs" deviceset="REG104" device="3.3V"/>
<part name="U$7" library="Harrington-Symbols" deviceset="PGND" device=""/>
<part name="U$3" library="Harrington-Symbols" deviceset="12.0V" device=""/>
<part name="U$8" library="Harrington-Symbols" deviceset="PGND" device=""/>
<part name="C1" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="C2" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="U$9" library="Harrington-Symbols" deviceset="NO-CONNECT" device=""/>
<part name="U$10" library="Harrington-Symbols" deviceset="NO-CONNECT" device=""/>
<part name="U$11" library="Harrington-Symbols" deviceset="12.0V" device=""/>
<part name="C3" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="C4" library="Harrington-Capacitors" deviceset="CAP-V" device="-2012" technology="-4.7UF" value="4.7µF ±"/>
<part name="C5" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="U$1" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="U$12" library="Harrington-Symbols" deviceset="DGND-1" device=""/>
<part name="U$13" library="Harrington-Symbols" deviceset="DGND-1" device=""/>
<part name="U$15" library="Harrington-Symbols" deviceset="DGND-1" device=""/>
<part name="U$6" library="Harrington-Symbols" deviceset="DGND-1" device=""/>
<part name="R1" library="Harrington-Resistors" deviceset="RES-H" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="R2" library="Harrington-Resistors" deviceset="RES-H" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="U$16" library="Harrington-Symbols" deviceset="CONNECT-IN" device=""/>
<part name="U$17" library="Harrington-Symbols" deviceset="CONNECT-OUT" device=""/>
<part name="U$18" library="Harrington-Symbols" deviceset="CONNECT-OUT" device=""/>
<part name="U$19" library="Harrington-Symbols" deviceset="CONNECT-OUT" device=""/>
<part name="J3" library="Harrington-Connectors" deviceset="MICRO-SD" device=""/>
<part name="C6" library="Harrington-Capacitors" deviceset="CAP-V" device="-2012" technology="-4.7UF" value="4.7µF ±"/>
<part name="R3" library="Harrington-Resistors" deviceset="RES-H" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="R4" library="Harrington-Resistors" deviceset="RES-H" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="DS1" library="Harrington-LEDs" deviceset="LED-H" device="-1608" technology="-GREEN" value="Green"/>
<part name="DS2" library="Harrington-LEDs" deviceset="LED-H" device="-1608" technology="-GREEN" value="Green"/>
<part name="C7" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="SW1" library="Harrington-Switches" deviceset="BUTTON-V-SPST" device="-TL3305" value="TL3305"/>
<part name="U$14" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="R5" library="Harrington-Resistors" deviceset="RES-V" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="C8" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-1.0UF" value="1.0µF ±"/>
<part name="U$20" library="Harrington-Symbols" deviceset="3.3V" device=""/>
<part name="U$21" library="Harrington-Symbols" deviceset="3.3V" device=""/>
<part name="U$22" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="C9" library="Harrington-Capacitors" deviceset="CAP-V" device="-1608" technology="-100NF" value="100nF ±"/>
<part name="C10" library="Harrington-Capacitors" deviceset="CAP-V" device="-2012" technology="-22UF" value="22µF ±"/>
<part name="U$23" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="Q1" library="Harrington-Transistors" deviceset="BJT-NPN" device="-BC817" value="BC817"/>
<part name="Q2" library="Harrington-Transistors" deviceset="BJT-NPN" device="-BC817" value="BC817"/>
<part name="U$24" library="Harrington-Symbols" deviceset="3.3V" device=""/>
<part name="U$25" library="Harrington-Symbols" deviceset="CHASSIS" device=""/>
<part name="U$26" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="U$28" library="Harrington-Symbols" deviceset="NO-CONNECT" device=""/>
<part name="U$29" library="Harrington-Symbols" deviceset="NO-CONNECT" device=""/>
<part name="U$27" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$30" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$31" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$32" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="J4" library="Harrington-Connectors" deviceset="JST-XH-2" device=""/>
<part name="R6" library="Harrington-Resistors" deviceset="RES-V" device="-1608" technology="-10K" value="10kΩ ± 2%"/>
<part name="U$33" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="U$34" library="Harrington-Symbols" deviceset="3.3V" device=""/>
<part name="U$35" library="Harrington-Symbols" deviceset="CONNECT-OUT" device=""/>
<part name="U$36" library="Harrington-Symbols" deviceset="CONNECT-OUT" device=""/>
<part name="U$37" library="Harrington-Symbols" deviceset="CONNECT-IN" device=""/>
<part name="U$38" library="Harrington-Symbols" deviceset="CONNECT-IN" device=""/>
<part name="U$39" library="Harrington-Symbols" deviceset="CONNECT-IN" device=""/>
<part name="U$40" library="Harrington-Symbols" deviceset="CONNECT-IN" device=""/>
<part name="U$41" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$42" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$43" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$44" library="Harrington-Symbols" deviceset="CONNECT-I/O" device=""/>
<part name="U$45" library="Harrington-Symbols" deviceset="DGND-0" device=""/>
<part name="U$46" library="Harrington-Symbols" deviceset="CHASSIS" device=""/>
<part name="U$47" library="Harrington-Symbols" deviceset="DGND-1" device=""/>
<part name="U$48" library="Harrington-Symbols" deviceset="PGND" device=""/>
<part name="R7" library="Harrington-Resistors" deviceset="RES-V" device="-1608" technology="-0R" value="0Ω + 50mΩ Max"/>
<part name="R8" library="Harrington-Resistors" deviceset="RES-V" device="-1608" technology="-0R" value="0Ω + 50mΩ Max"/>
<part name="R9" library="Harrington-Resistors" deviceset="RES-V" device="-1608" technology="-0R" value="0Ω + 50mΩ Max"/>
<part name="FRAME3" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="FRAME4" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="FRAME5" library="frames" library_urn="urn:adsk.eagle:library:229" deviceset="FRAME_A_L" device=""/>
<part name="J5" library="Harrington-Connectors" deviceset="MPT-2-SCREW" device=""/>
<part name="U$49" library="Harrington-Symbols" deviceset="PGND" device=""/>
<part name="U$50" library="Harrington-Symbols" deviceset="12.0V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="187.96" y="116.84" size="3.81" layer="94" align="center">Central
Processing
Unit (CPU)
with
Programming IC</text>
<text x="33.02" y="187.96" size="3.81" layer="94" align="center">Connector:
12V? XA In
</text>
<text x="33.02" y="50.8" size="3.81" layer="94" align="center">Connector:
Line Audio In</text>
<text x="248.92" y="50.8" size="3.81" layer="94" align="center">Connector:
Speaker Out</text>
<text x="246.38" y="116.84" size="3.81" layer="94" align="center">Connector:
Servo? Motors
Out</text>
<text x="137.16" y="190.5" size="3.81" layer="94" align="center">12V to 3.3V
Linear Regulator</text>
<text x="246.38" y="83.82" size="3.81" layer="94" align="center">Motor Driver</text>
<text x="154.94" y="50.8" size="3.81" layer="94" align="center">Audio Mixer</text>
<text x="124.46" y="104.14" size="3.81" layer="94" align="center">Voice Activity
Detection B</text>
<text x="124.46" y="83.82" size="3.81" layer="94" align="center">Beat Detection</text>
<text x="200.66" y="50.8" size="3.81" layer="94" align="center">Audio
Amplifier</text>
<wire x1="12.7" y1="203.2" x2="12.7" y2="177.8" width="0.1524" layer="94"/>
<wire x1="12.7" y1="177.8" x2="53.34" y2="177.8" width="0.1524" layer="94"/>
<wire x1="53.34" y1="177.8" x2="53.34" y2="203.2" width="0.1524" layer="94"/>
<wire x1="53.34" y1="203.2" x2="12.7" y2="203.2" width="0.1524" layer="94"/>
<wire x1="114.3" y1="203.2" x2="114.3" y2="177.8" width="0.1524" layer="94"/>
<wire x1="114.3" y1="177.8" x2="160.02" y2="177.8" width="0.1524" layer="94"/>
<wire x1="160.02" y1="177.8" x2="160.02" y2="203.2" width="0.1524" layer="94"/>
<wire x1="160.02" y1="203.2" x2="114.3" y2="203.2" width="0.1524" layer="94"/>
<wire x1="160.02" y1="162.56" x2="160.02" y2="71.12" width="0.1524" layer="94"/>
<wire x1="160.02" y1="71.12" x2="215.9" y2="71.12" width="0.1524" layer="94"/>
<wire x1="215.9" y1="71.12" x2="215.9" y2="162.56" width="0.1524" layer="94"/>
<wire x1="215.9" y1="162.56" x2="160.02" y2="162.56" width="0.1524" layer="94"/>
<wire x1="137.16" y1="60.96" x2="137.16" y2="40.64" width="0.1524" layer="94"/>
<wire x1="137.16" y1="40.64" x2="172.72" y2="40.64" width="0.1524" layer="94"/>
<wire x1="172.72" y1="40.64" x2="172.72" y2="60.96" width="0.1524" layer="94"/>
<wire x1="172.72" y1="60.96" x2="137.16" y2="60.96" width="0.1524" layer="94"/>
<wire x1="12.7" y1="63.5" x2="12.7" y2="38.1" width="0.1524" layer="94"/>
<wire x1="12.7" y1="38.1" x2="53.34" y2="38.1" width="0.1524" layer="94"/>
<wire x1="53.34" y1="38.1" x2="53.34" y2="63.5" width="0.1524" layer="94"/>
<wire x1="53.34" y1="63.5" x2="12.7" y2="63.5" width="0.1524" layer="94"/>
<wire x1="104.14" y1="91.44" x2="104.14" y2="76.2" width="0.1524" layer="94"/>
<wire x1="104.14" y1="76.2" x2="144.78" y2="76.2" width="0.1524" layer="94"/>
<wire x1="144.78" y1="76.2" x2="144.78" y2="91.44" width="0.1524" layer="94"/>
<wire x1="144.78" y1="91.44" x2="104.14" y2="91.44" width="0.1524" layer="94"/>
<wire x1="226.06" y1="91.44" x2="226.06" y2="76.2" width="0.1524" layer="94"/>
<wire x1="226.06" y1="76.2" x2="266.7" y2="76.2" width="0.1524" layer="94"/>
<wire x1="266.7" y1="76.2" x2="266.7" y2="91.44" width="0.1524" layer="94"/>
<wire x1="266.7" y1="91.44" x2="226.06" y2="91.44" width="0.1524" layer="94"/>
<wire x1="182.88" y1="60.96" x2="182.88" y2="40.64" width="0.1524" layer="94"/>
<wire x1="182.88" y1="40.64" x2="218.44" y2="40.64" width="0.1524" layer="94"/>
<wire x1="218.44" y1="40.64" x2="218.44" y2="60.96" width="0.1524" layer="94"/>
<wire x1="218.44" y1="60.96" x2="182.88" y2="60.96" width="0.1524" layer="94"/>
<wire x1="228.6" y1="60.96" x2="228.6" y2="40.64" width="0.1524" layer="94"/>
<wire x1="228.6" y1="40.64" x2="269.24" y2="40.64" width="0.1524" layer="94"/>
<wire x1="269.24" y1="40.64" x2="269.24" y2="60.96" width="0.1524" layer="94"/>
<wire x1="269.24" y1="60.96" x2="228.6" y2="60.96" width="0.1524" layer="94"/>
<wire x1="223.52" y1="129.54" x2="223.52" y2="104.14" width="0.1524" layer="94"/>
<wire x1="223.52" y1="104.14" x2="269.24" y2="104.14" width="0.1524" layer="94"/>
<wire x1="269.24" y1="104.14" x2="269.24" y2="129.54" width="0.1524" layer="94"/>
<wire x1="269.24" y1="129.54" x2="223.52" y2="129.54" width="0.1524" layer="94"/>
<wire x1="104.14" y1="114.3" x2="104.14" y2="93.98" width="0.1524" layer="94"/>
<wire x1="104.14" y1="93.98" x2="144.78" y2="93.98" width="0.1524" layer="94"/>
<wire x1="144.78" y1="93.98" x2="144.78" y2="114.3" width="0.1524" layer="94"/>
<wire x1="144.78" y1="114.3" x2="104.14" y2="114.3" width="0.1524" layer="94"/>
<wire x1="88.9" y1="104.14" x2="104.14" y2="104.14" width="0.1524" layer="97"/>
<wire x1="104.14" y1="104.14" x2="101.6" y2="106.68" width="0.1524" layer="97"/>
<wire x1="104.14" y1="104.14" x2="101.6" y2="101.6" width="0.1524" layer="97"/>
<wire x1="88.9" y1="83.82" x2="104.14" y2="83.82" width="0.1524" layer="97"/>
<wire x1="104.14" y1="83.82" x2="101.6" y2="86.36" width="0.1524" layer="97"/>
<wire x1="104.14" y1="83.82" x2="101.6" y2="81.28" width="0.1524" layer="97"/>
<wire x1="53.34" y1="190.5" x2="83.82" y2="190.5" width="0.1524" layer="97"/>
<wire x1="83.82" y1="190.5" x2="114.3" y2="190.5" width="0.1524" layer="97"/>
<wire x1="114.3" y1="190.5" x2="111.76" y2="193.04" width="0.1524" layer="97"/>
<wire x1="114.3" y1="190.5" x2="111.76" y2="187.96" width="0.1524" layer="97"/>
<wire x1="172.72" y1="50.8" x2="182.88" y2="50.8" width="0.1524" layer="97"/>
<wire x1="182.88" y1="50.8" x2="180.34" y2="53.34" width="0.1524" layer="97"/>
<wire x1="182.88" y1="50.8" x2="180.34" y2="48.26" width="0.1524" layer="97"/>
<wire x1="218.44" y1="50.8" x2="228.6" y2="50.8" width="0.1524" layer="97"/>
<wire x1="228.6" y1="50.8" x2="226.06" y2="53.34" width="0.1524" layer="97"/>
<wire x1="228.6" y1="50.8" x2="226.06" y2="48.26" width="0.1524" layer="97"/>
<wire x1="154.94" y1="60.96" x2="157.48" y2="63.5" width="0.1524" layer="97"/>
<wire x1="154.94" y1="60.96" x2="152.4" y2="63.5" width="0.1524" layer="97"/>
<wire x1="226.06" y1="83.82" x2="223.52" y2="86.36" width="0.1524" layer="97"/>
<wire x1="226.06" y1="83.82" x2="223.52" y2="81.28" width="0.1524" layer="97"/>
<wire x1="246.38" y1="104.14" x2="243.84" y2="101.6" width="0.1524" layer="97"/>
<wire x1="246.38" y1="104.14" x2="248.92" y2="101.6" width="0.1524" layer="97"/>
<text x="154.94" y="180.34" size="1.778" layer="97" align="center">Page 2</text>
<text x="210.82" y="73.66" size="1.778" layer="97" align="center">Page 2</text>
<text x="261.62" y="78.74" size="1.778" layer="97" align="center">Page 3</text>
<text x="139.7" y="96.52" size="1.778" layer="97" align="center">Page 4</text>
<text x="139.7" y="78.74" size="1.778" layer="97" align="center">Page 5</text>
<text x="167.64" y="43.18" size="1.778" layer="97" align="center">Page 6</text>
<text x="213.36" y="43.18" size="1.778" layer="97" align="center">Page 6</text>
<text x="132.08" y="147.32" size="3.81" layer="94" align="center">Keyword
Spotting</text>
<text x="73.66" y="93.98" size="3.81" layer="94" align="center">Audio
Detection</text>
<wire x1="160.02" y1="129.54" x2="157.48" y2="132.08" width="0.1524" layer="97"/>
<wire x1="160.02" y1="129.54" x2="157.48" y2="127" width="0.1524" layer="97"/>
<wire x1="116.84" y1="157.48" x2="116.84" y2="137.16" width="0.1524" layer="94"/>
<wire x1="116.84" y1="137.16" x2="147.32" y2="137.16" width="0.1524" layer="94"/>
<wire x1="147.32" y1="137.16" x2="147.32" y2="157.48" width="0.1524" layer="94"/>
<wire x1="147.32" y1="157.48" x2="116.84" y2="157.48" width="0.1524" layer="94"/>
<text x="142.24" y="139.7" size="1.778" layer="97" align="center">Page 5</text>
<wire x1="58.42" y1="111.76" x2="58.42" y2="76.2" width="0.1524" layer="94"/>
<wire x1="58.42" y1="76.2" x2="88.9" y2="76.2" width="0.1524" layer="94"/>
<wire x1="88.9" y1="76.2" x2="88.9" y2="111.76" width="0.1524" layer="94"/>
<wire x1="88.9" y1="111.76" x2="58.42" y2="111.76" width="0.1524" layer="94"/>
<text x="83.82" y="78.74" size="1.778" layer="97" align="center">Page 4</text>
<wire x1="58.42" y1="93.98" x2="55.88" y2="96.52" width="0.1524" layer="97"/>
<wire x1="58.42" y1="93.98" x2="55.88" y2="91.44" width="0.1524" layer="97"/>
<wire x1="116.84" y1="147.32" x2="114.3" y2="149.86" width="0.1524" layer="97"/>
<wire x1="116.84" y1="147.32" x2="114.3" y2="144.78" width="0.1524" layer="97"/>
<wire x1="160.02" y1="104.14" x2="157.48" y2="106.68" width="0.1524" layer="97"/>
<wire x1="160.02" y1="104.14" x2="157.48" y2="101.6" width="0.1524" layer="97"/>
<wire x1="160.02" y1="83.82" x2="157.48" y2="86.36" width="0.1524" layer="97"/>
<wire x1="160.02" y1="83.82" x2="157.48" y2="81.28" width="0.1524" layer="97"/>
<text x="248.92" y="149.86" size="3.81" layer="94" align="center">Connector:
Micro SD Card</text>
<wire x1="228.6" y1="160.02" x2="228.6" y2="139.7" width="0.1524" layer="94"/>
<wire x1="228.6" y1="139.7" x2="269.24" y2="139.7" width="0.1524" layer="94"/>
<wire x1="269.24" y1="139.7" x2="269.24" y2="160.02" width="0.1524" layer="94"/>
<wire x1="269.24" y1="160.02" x2="228.6" y2="160.02" width="0.1524" layer="94"/>
<wire x1="228.6" y1="149.86" x2="226.06" y2="147.32" width="0.1524" layer="97"/>
<wire x1="228.6" y1="149.86" x2="226.06" y2="152.4" width="0.1524" layer="97"/>
<wire x1="160.02" y1="147.32" x2="157.48" y2="149.86" width="0.1524" layer="97"/>
<wire x1="160.02" y1="147.32" x2="157.48" y2="144.78" width="0.1524" layer="97"/>
<wire x1="167.64" y1="162.56" x2="170.18" y2="165.1" width="0.1524" layer="97"/>
<wire x1="167.64" y1="162.56" x2="165.1" y2="165.1" width="0.1524" layer="97"/>
<wire x1="144.78" y1="104.14" x2="160.02" y2="104.14" width="0.1524" layer="97"/>
<text x="33.02" y="147.32" size="3.81" layer="94" align="center">Microphone
and Audio
Detection</text>
<text x="83.82" y="147.32" size="3.81" layer="94" align="center">Voice Activity
Detection A</text>
<wire x1="63.5" y1="157.48" x2="63.5" y2="137.16" width="0.1524" layer="94"/>
<wire x1="63.5" y1="137.16" x2="104.14" y2="137.16" width="0.1524" layer="94"/>
<wire x1="104.14" y1="137.16" x2="104.14" y2="157.48" width="0.1524" layer="94"/>
<wire x1="104.14" y1="157.48" x2="63.5" y2="157.48" width="0.1524" layer="94"/>
<wire x1="63.5" y1="147.32" x2="60.96" y2="149.86" width="0.1524" layer="97"/>
<wire x1="63.5" y1="147.32" x2="60.96" y2="144.78" width="0.1524" layer="97"/>
<text x="99.06" y="139.7" size="1.778" layer="97" align="center">Page 4</text>
<wire x1="15.24" y1="162.56" x2="15.24" y2="132.08" width="0.1524" layer="94"/>
<wire x1="15.24" y1="132.08" x2="50.8" y2="132.08" width="0.1524" layer="94"/>
<wire x1="50.8" y1="132.08" x2="50.8" y2="162.56" width="0.1524" layer="94"/>
<wire x1="50.8" y1="162.56" x2="15.24" y2="162.56" width="0.1524" layer="94"/>
<wire x1="137.16" y1="50.8" x2="53.34" y2="50.8" width="0.1524" layer="97"/>
<wire x1="144.78" y1="83.82" x2="160.02" y2="83.82" width="0.1524" layer="97"/>
<wire x1="116.84" y1="147.32" x2="104.14" y2="147.32" width="0.1524" layer="97"/>
<wire x1="160.02" y1="147.32" x2="147.32" y2="147.32" width="0.1524" layer="97"/>
<wire x1="226.06" y1="83.82" x2="215.9" y2="83.82" width="0.1524" layer="97"/>
<wire x1="246.38" y1="91.44" x2="246.38" y2="104.14" width="0.1524" layer="97"/>
<wire x1="228.6" y1="149.86" x2="215.9" y2="149.86" width="0.1524" layer="97"/>
<wire x1="83.82" y1="137.16" x2="83.82" y2="129.54" width="0.1524" layer="97"/>
<wire x1="83.82" y1="129.54" x2="160.02" y2="129.54" width="0.1524" layer="97"/>
<wire x1="33.02" y1="132.08" x2="33.02" y2="121.92" width="0.1524" layer="97"/>
<wire x1="160.02" y1="121.92" x2="157.48" y2="124.46" width="0.1524" layer="97"/>
<wire x1="160.02" y1="121.92" x2="157.48" y2="119.38" width="0.1524" layer="97"/>
<wire x1="154.94" y1="60.96" x2="154.94" y2="76.2" width="0.1524" layer="97"/>
<wire x1="154.94" y1="76.2" x2="160.02" y2="76.2" width="0.1524" layer="97"/>
<wire x1="83.82" y1="137.16" x2="81.28" y2="134.62" width="0.1524" layer="97"/>
<wire x1="83.82" y1="137.16" x2="86.36" y2="134.62" width="0.1524" layer="97"/>
<text x="248.92" y="193.04" size="3.81" layer="94" align="center">Connector:
Button In</text>
<wire x1="233.68" y1="203.2" x2="264.16" y2="203.2" width="0.1524" layer="94"/>
<wire x1="264.16" y1="203.2" x2="264.16" y2="182.88" width="0.1524" layer="94"/>
<wire x1="264.16" y1="182.88" x2="233.68" y2="182.88" width="0.1524" layer="94"/>
<wire x1="233.68" y1="182.88" x2="233.68" y2="203.2" width="0.1524" layer="94"/>
<text x="259.08" y="185.42" size="1.778" layer="97" align="center">Page 2</text>
<text x="264.16" y="142.24" size="1.778" layer="97" align="center">Page 2</text>
<wire x1="187.96" y1="162.56" x2="190.5" y2="165.1" width="0.1524" layer="97"/>
<wire x1="187.96" y1="162.56" x2="185.42" y2="165.1" width="0.1524" layer="97"/>
<wire x1="215.9" y1="149.86" x2="218.44" y2="152.4" width="0.1524" layer="97"/>
<wire x1="215.9" y1="149.86" x2="218.44" y2="147.32" width="0.1524" layer="97"/>
<wire x1="33.02" y1="63.5" x2="33.02" y2="93.98" width="0.1524" layer="97"/>
<wire x1="33.02" y1="93.98" x2="58.42" y2="93.98" width="0.1524" layer="97"/>
<wire x1="137.16" y1="50.8" x2="134.62" y2="53.34" width="0.1524" layer="97"/>
<wire x1="137.16" y1="50.8" x2="134.62" y2="48.26" width="0.1524" layer="97"/>
<text x="45.72" y="134.62" size="1.778" layer="97" align="center">Page 4</text>
<text x="48.26" y="180.34" size="1.778" layer="97" align="center">Page 2</text>
<text x="187.96" y="193.04" size="3.81" layer="94" align="center">Connector:
USB Data</text>
<wire x1="170.18" y1="203.2" x2="205.74" y2="203.2" width="0.1524" layer="94"/>
<wire x1="205.74" y1="203.2" x2="205.74" y2="182.88" width="0.1524" layer="94"/>
<wire x1="205.74" y1="182.88" x2="170.18" y2="182.88" width="0.1524" layer="94"/>
<wire x1="170.18" y1="182.88" x2="170.18" y2="203.2" width="0.1524" layer="94"/>
<text x="200.66" y="185.42" size="1.778" layer="97" align="center">Page 2</text>
<wire x1="208.28" y1="162.56" x2="210.82" y2="165.1" width="0.1524" layer="97"/>
<wire x1="208.28" y1="162.56" x2="205.74" y2="165.1" width="0.1524" layer="97"/>
<wire x1="137.16" y1="177.8" x2="137.16" y2="170.18" width="0.1524" layer="97"/>
<wire x1="137.16" y1="170.18" x2="167.64" y2="170.18" width="0.1524" layer="97"/>
<wire x1="167.64" y1="170.18" x2="167.64" y2="162.56" width="0.1524" layer="97"/>
<wire x1="208.28" y1="162.56" x2="208.28" y2="172.72" width="0.1524" layer="97"/>
<wire x1="208.28" y1="172.72" x2="248.92" y2="172.72" width="0.1524" layer="97"/>
<wire x1="248.92" y1="172.72" x2="248.92" y2="182.88" width="0.1524" layer="97"/>
<wire x1="187.96" y1="182.88" x2="187.96" y2="162.56" width="0.1524" layer="97"/>
<wire x1="187.96" y1="182.88" x2="185.42" y2="180.34" width="0.1524" layer="97"/>
<wire x1="187.96" y1="182.88" x2="190.5" y2="180.34" width="0.1524" layer="97"/>
<text x="83.82" y="175.26" size="3.81" layer="94" align="center">Connector:
Alexa Power Out</text>
<wire x1="60.96" y1="185.42" x2="60.96" y2="165.1" width="0.1524" layer="94"/>
<wire x1="60.96" y1="165.1" x2="106.68" y2="165.1" width="0.1524" layer="94"/>
<wire x1="106.68" y1="165.1" x2="106.68" y2="185.42" width="0.1524" layer="94"/>
<wire x1="106.68" y1="185.42" x2="60.96" y2="185.42" width="0.1524" layer="94"/>
<text x="101.6" y="167.64" size="1.778" layer="97" align="center">Page 2</text>
<wire x1="50.8" y1="147.32" x2="63.5" y2="147.32" width="0.1524" layer="97"/>
<wire x1="83.82" y1="185.42" x2="83.82" y2="190.5" width="0.1524" layer="97"/>
<wire x1="83.82" y1="185.42" x2="86.36" y2="187.96" width="0.1524" layer="97"/>
<wire x1="83.82" y1="185.42" x2="81.28" y2="187.96" width="0.1524" layer="97"/>
</plain>
<instances>
<instance part="FRAME1" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME1" gate="G$2" x="172.72" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
<sheet>
<plain>
<wire x1="10.16" y1="205.74" x2="10.16" y2="149.86" width="0.1524" layer="97" style="longdash"/>
<wire x1="10.16" y1="149.86" x2="96.52" y2="149.86" width="0.1524" layer="97" style="longdash"/>
<wire x1="96.52" y1="149.86" x2="96.52" y2="205.74" width="0.1524" layer="97" style="longdash"/>
<wire x1="96.52" y1="205.74" x2="10.16" y2="205.74" width="0.1524" layer="97" style="longdash"/>
<text x="53.34" y="147.32" size="2.54" layer="97" align="center">Input, Alexa Output, and Linear Regulators</text>
<text x="187.96" y="132.08" size="1.778" layer="97" align="center">Design Note: https://pcbartists.com/design/esp32-cp2102-programmer-schematic/</text>
<wire x1="101.6" y1="205.74" x2="101.6" y2="129.54" width="0.1524" layer="97" style="longdash"/>
<wire x1="101.6" y1="129.54" x2="269.24" y2="129.54" width="0.1524" layer="97" style="longdash"/>
<wire x1="269.24" y1="129.54" x2="269.24" y2="205.74" width="0.1524" layer="97" style="longdash"/>
<wire x1="269.24" y1="205.74" x2="101.6" y2="205.74" width="0.1524" layer="97" style="longdash"/>
<text x="187.96" y="127" size="2.54" layer="97" align="center">ESP32 Programmer</text>
<wire x1="116.84" y1="99.06" x2="86.36" y2="99.06" width="0.1524" layer="97" style="longdash"/>
<wire x1="86.36" y1="99.06" x2="86.36" y2="71.12" width="0.1524" layer="97" style="longdash"/>
<wire x1="86.36" y1="71.12" x2="116.84" y2="71.12" width="0.1524" layer="97" style="longdash"/>
<wire x1="116.84" y1="71.12" x2="116.84" y2="99.06" width="0.1524" layer="97" style="longdash"/>
<text x="101.6" y="68.58" size="2.54" layer="97" align="center">Reset Button</text>
<text x="63.5" y="116.84" size="1.27" layer="97" align="center-left">2D5</text>
<text x="63.5" y="111.76" size="1.27" layer="97" align="center-left">2D3</text>
<text x="63.5" y="104.14" size="1.27" layer="97" align="center-left">2D3</text>
<text x="63.5" y="99.06" size="1.27" layer="97" align="center-left">2D3</text>
<text x="264.16" y="144.78" size="1.27" layer="97" align="center-left">2D3</text>
<text x="264.16" y="177.8" size="1.27" layer="97" align="center-left">2C2</text>
<text x="264.16" y="180.34" size="1.27" layer="97" align="center-left">2C5</text>
<text x="264.16" y="182.88" size="1.27" layer="97" align="center-left">2C5</text>
<wire x1="15.24" y1="134.62" x2="15.24" y2="78.74" width="0.1524" layer="97" style="longdash"/>
<wire x1="15.24" y1="78.74" x2="71.12" y2="78.74" width="0.1524" layer="97" style="longdash"/>
<wire x1="71.12" y1="78.74" x2="71.12" y2="134.62" width="0.1524" layer="97" style="longdash"/>
<wire x1="71.12" y1="134.62" x2="15.24" y2="134.62" width="0.1524" layer="97" style="longdash"/>
<text x="43.18" y="76.2" size="2.54" layer="97" align="center">Micro SD Connector</text>
<text x="60.96" y="48.26" size="1.27" layer="97" align="center-left">2D3</text>
<wire x1="15.24" y1="63.5" x2="15.24" y2="22.86" width="0.1524" layer="97" style="longdash"/>
<wire x1="15.24" y1="22.86" x2="71.12" y2="22.86" width="0.1524" layer="97" style="longdash"/>
<wire x1="71.12" y1="22.86" x2="71.12" y2="63.5" width="0.1524" layer="97" style="longdash"/>
<wire x1="71.12" y1="63.5" x2="15.24" y2="63.5" width="0.1524" layer="97" style="longdash"/>
<text x="43.18" y="20.32" size="2.54" layer="97" align="center">Button Connector</text>
<text x="43.18" y="25.4" size="1.778" layer="97" align="center">Design Note: IO2 strapping default is pull-down</text>
<text x="228.6" y="91.44" size="1.27" layer="97" align="center-left">2A6</text>
<text x="228.6" y="88.9" size="1.27" layer="97" align="center-left">2A6</text>
<text x="228.6" y="66.04" size="1.27" layer="97" align="center-left">2C2</text>
<text x="137.16" y="83.82" size="1.27" layer="97" align="center-right">2B6</text>
<text x="137.16" y="81.28" size="1.27" layer="97" align="center-right">2D2</text>
<text x="137.16" y="76.2" size="1.27" layer="97" align="center-right">2C2</text>
<text x="137.16" y="63.5" size="1.27" layer="97" align="center-right">2C2</text>
<text x="137.16" y="60.96" size="1.27" layer="97" align="center-right">2C2</text>
<text x="86.36" y="101.6" size="1.27" layer="97" align="center-right">2A6</text>
<wire x1="88.9" y1="40.64" x2="88.9" y2="12.7" width="0.1524" layer="97" style="longdash"/>
<wire x1="88.9" y1="12.7" x2="154.94" y2="12.7" width="0.1524" layer="97" style="longdash"/>
<wire x1="154.94" y1="12.7" x2="154.94" y2="40.64" width="0.1524" layer="97" style="longdash"/>
<wire x1="154.94" y1="40.64" x2="88.9" y2="40.64" width="0.1524" layer="97" style="longdash"/>
<text x="121.92" y="10.16" size="2.54" layer="97" align="center">Ground Isolation</text>
</plain>
<instances>
<instance part="FRAME2" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME2" gate="G$2" x="172.72" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
<instance part="U2" gate="G$1" x="187.96" y="170.18" smashed="yes">
<attribute name="NAME" x="187.96" y="200.66" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="187.96" y="139.7" size="1.778" layer="96" align="center"/>
</instance>
<instance part="U1" gate="G$1" x="182.88" y="76.2" smashed="yes">
<attribute name="NAME" x="182.88" y="104.14" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="182.88" y="48.26" size="1.778" layer="96" align="center"/>
</instance>
<instance part="U3" gate="G$1" x="71.12" y="187.96" smashed="yes">
<attribute name="NAME" x="71.12" y="198.12" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="71.12" y="177.8" size="1.778" layer="96" align="center"/>
</instance>
<instance part="J1" gate="G$1" x="114.3" y="177.8" smashed="yes">
<attribute name="NAME" x="114.3" y="190.5" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="114.3" y="165.1" size="1.778" layer="95" align="center"/>
</instance>
<instance part="J2" gate="G$1" x="20.32" y="190.5" smashed="yes">
<attribute name="NAME" x="20.32" y="195.58" size="1.27" layer="95" align="center"/>
<attribute name="VALUE" x="20.32" y="187.96" size="1.27" layer="96" align="center"/>
</instance>
<instance part="U$2" gate="G$1" x="38.1" y="198.12" smashed="yes">
<attribute name="VALUE" x="38.1" y="201.295" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$4" gate="G$1" x="91.44" y="198.12" smashed="yes">
<attribute name="VALUE" x="91.44" y="201.295" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$5" gate="G$1" x="124.46" y="162.56" smashed="yes"/>
<instance part="U4" gate="G$1" x="71.12" y="165.1" smashed="yes">
<attribute name="NAME" x="71.12" y="175.26" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="71.12" y="154.94" size="1.778" layer="96" align="center"/>
</instance>
<instance part="U$7" gate="G$1" x="40.64" y="157.48" smashed="yes"/>
<instance part="U$3" gate="G$1" x="27.94" y="198.12" smashed="yes">
<attribute name="VALUE" x="27.94" y="201.295" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$8" gate="G$1" x="27.94" y="185.42" smashed="yes"/>
<instance part="C1" gate="G$1" x="45.72" y="187.96" smashed="yes">
<attribute name="NAME" x="48.26" y="191.77" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="48.26" y="189.865" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="48.26" y="187.96" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="48.26" y="184.15" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="48.26" y="186.055" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C2" gate="G$1" x="45.72" y="165.1" smashed="yes">
<attribute name="NAME" x="48.26" y="168.91" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="48.26" y="167.005" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="48.26" y="165.1" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="48.26" y="161.29" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="48.26" y="163.195" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$9" gate="G$1" x="83.82" y="187.96" smashed="yes"/>
<instance part="U$10" gate="G$1" x="83.82" y="165.1" smashed="yes"/>
<instance part="U$11" gate="G$1" x="86.36" y="198.12" smashed="yes">
<attribute name="VALUE" x="86.36" y="201.295" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="C3" gate="G$1" x="213.36" y="190.5" smashed="yes">
<attribute name="NAME" x="215.9" y="194.31" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="215.9" y="192.405" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="215.9" y="190.5" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="215.9" y="186.69" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="215.9" y="188.595" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C4" gate="G$1" x="139.7" y="190.5" smashed="yes">
<attribute name="NAME" x="142.24" y="194.31" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="142.24" y="192.405" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="142.24" y="190.5" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="142.24" y="186.69" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="142.24" y="188.595" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C5" gate="G$1" x="154.94" y="190.5" smashed="yes">
<attribute name="NAME" x="157.48" y="194.31" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="157.48" y="192.405" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="157.48" y="190.5" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="157.48" y="186.69" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="157.48" y="188.595" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$1" gate="G$1" x="200.66" y="50.8" smashed="yes"/>
<instance part="U$12" gate="G$1" x="208.28" y="142.24" smashed="yes"/>
<instance part="U$13" gate="G$1" x="139.7" y="177.8" smashed="yes"/>
<instance part="U$15" gate="G$1" x="129.54" y="162.56" smashed="yes"/>
<instance part="U$6" gate="G$1" x="213.36" y="142.24" smashed="yes"/>
<instance part="R1" gate="G$1" x="231.14" y="170.18" smashed="yes">
<attribute name="VALUE" x="230.505" y="167.64" size="1.27" layer="96" align="center-right"/>
<attribute name="POWER" x="231.775" y="167.64" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="231.775" y="165.735" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="230.505" y="165.735" size="1.27" layer="97" align="center-right"/>
<attribute name="NAME" x="231.14" y="172.72" size="1.27" layer="95" align="center"/>
</instance>
<instance part="R2" gate="G$1" x="231.14" y="152.4" smashed="yes">
<attribute name="VALUE" x="230.505" y="149.86" size="1.27" layer="96" align="center-right"/>
<attribute name="POWER" x="231.775" y="149.86" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="231.775" y="147.955" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="230.505" y="147.955" size="1.27" layer="97" align="center-right"/>
<attribute name="NAME" x="231.14" y="154.94" size="1.27" layer="95" align="center"/>
</instance>
<instance part="U$16" gate="G$1" x="259.08" y="182.88" smashed="yes"/>
<instance part="U$17" gate="G$1" x="259.08" y="180.34" smashed="yes"/>
<instance part="U$18" gate="G$1" x="259.08" y="177.8" smashed="yes"/>
<instance part="U$19" gate="G$1" x="259.08" y="144.78" smashed="yes"/>
<instance part="J3" gate="G$1" x="27.94" y="106.68" smashed="yes">
<attribute name="NAME" x="27.94" y="127" size="1.778" layer="95" align="center"/>
<attribute name="VALUE" x="27.94" y="86.36" size="1.778" layer="96" align="center"/>
</instance>
<instance part="C6" gate="G$1" x="228.6" y="190.5" smashed="yes">
<attribute name="NAME" x="231.14" y="194.31" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="231.14" y="192.405" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="231.14" y="190.5" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="231.14" y="186.69" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="231.14" y="188.595" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="R3" gate="G$1" x="142.24" y="165.1" smashed="yes">
<attribute name="VALUE" x="141.605" y="162.56" size="1.27" layer="96" align="center-right"/>
<attribute name="POWER" x="142.875" y="162.56" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="142.875" y="160.655" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="141.605" y="160.655" size="1.27" layer="97" align="center-right"/>
<attribute name="NAME" x="142.24" y="167.64" size="1.27" layer="95" align="center"/>
</instance>
<instance part="R4" gate="G$1" x="142.24" y="152.4" smashed="yes">
<attribute name="VALUE" x="141.605" y="149.86" size="1.27" layer="96" align="center-right"/>
<attribute name="POWER" x="142.875" y="149.86" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="142.875" y="147.955" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="141.605" y="147.955" size="1.27" layer="97" align="center-right"/>
<attribute name="NAME" x="142.24" y="154.94" size="1.27" layer="95" align="center"/>
</instance>
<instance part="DS1" gate="G$1" x="157.48" y="165.1" smashed="yes">
<attribute name="NAME" x="157.48" y="170.18" size="1.27" layer="95" align="center"/>
<attribute name="VALUE" x="156.845" y="162.56" size="1.27" layer="96" align="center-right"/>
<attribute name="SIZE" x="156.845" y="160.655" size="1.27" layer="97" align="center-right"/>
<attribute name="VOLTAGE" x="158.115" y="162.56" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="158.115" y="160.655" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="DS2" gate="G$1" x="157.48" y="152.4" smashed="yes">
<attribute name="NAME" x="157.48" y="157.48" size="1.27" layer="95" align="center"/>
<attribute name="VALUE" x="156.845" y="149.86" size="1.27" layer="96" align="center-right"/>
<attribute name="SIZE" x="156.845" y="147.955" size="1.27" layer="97" align="center-right"/>
<attribute name="VOLTAGE" x="158.115" y="149.86" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="158.115" y="147.955" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C7" gate="G$1" x="104.14" y="88.9" smashed="yes">
<attribute name="NAME" x="106.68" y="92.71" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="106.68" y="90.805" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="106.68" y="88.9" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="106.68" y="85.09" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="106.68" y="86.995" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="SW1" gate="G$1" x="91.44" y="88.9" smashed="yes">
<attribute name="NAME" x="93.98" y="92.075" size="1.27" layer="95" align="center-left"/>
<attribute name="I_MAX" x="93.98" y="86.36" size="1.27" layer="97" align="center-left"/>
<attribute name="VALUE" x="93.98" y="90.17" size="1.27" layer="96" align="center-left"/>
<attribute name="V_MAX" x="93.98" y="88.265" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$14" gate="G$1" x="91.44" y="78.74" smashed="yes"/>
<instance part="R5" gate="G$1" x="124.46" y="104.14" smashed="yes">
<attribute name="NAME" x="127" y="107.95" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="127" y="106.045" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="127" y="104.14" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="127" y="102.235" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="127" y="100.33" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C8" gate="G$1" x="124.46" y="88.9" smashed="yes">
<attribute name="NAME" x="127" y="92.71" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="127" y="90.805" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="127" y="88.9" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="127" y="85.09" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="127" y="86.995" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$20" gate="G$1" x="124.46" y="111.76" smashed="yes">
<attribute name="VALUE" x="124.46" y="114.935" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$21" gate="G$1" x="200.66" y="111.76" smashed="yes">
<attribute name="VALUE" x="200.66" y="114.935" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$22" gate="G$1" x="124.46" y="78.74" smashed="yes"/>
<instance part="C9" gate="G$1" x="238.76" y="91.44" smashed="yes">
<attribute name="NAME" x="241.3" y="95.25" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="241.3" y="93.345" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="241.3" y="91.44" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="241.3" y="87.63" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="241.3" y="89.535" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="C10" gate="G$1" x="254" y="91.44" smashed="yes">
<attribute name="NAME" x="256.54" y="95.25" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="256.54" y="93.345" size="1.27" layer="96" align="center-left"/>
<attribute name="VOLTAGE" x="256.54" y="91.44" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="256.54" y="87.63" size="1.27" layer="97" align="center-left"/>
<attribute name="SIZE" x="256.54" y="89.535" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$23" gate="G$1" x="254" y="81.28" smashed="yes"/>
<instance part="Q1" gate="G$1" x="243.84" y="170.18" smashed="yes">
<attribute name="NAME" x="247.65" y="173.99" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="247.65" y="172.085" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="247.65" y="170.18" size="1.27" layer="97" align="center-left"/>
<attribute name="IC_MAX" x="247.65" y="168.275" size="1.27" layer="97" align="center-left"/>
<attribute name="VCE_MAX" x="247.65" y="166.37" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="Q2" gate="G$1" x="243.84" y="152.4" smashed="yes" rot="MR180">
<attribute name="NAME" x="247.65" y="148.59" size="1.27" layer="95" rot="MR180" align="center-left"/>
<attribute name="VALUE" x="247.65" y="150.495" size="1.27" layer="96" rot="MR180" align="center-left"/>
<attribute name="POWER" x="247.65" y="152.4" size="1.27" layer="97" rot="MR180" align="center-left"/>
<attribute name="IC_MAX" x="247.65" y="154.305" size="1.27" layer="97" rot="MR180" align="center-left"/>
<attribute name="VCE_MAX" x="247.65" y="156.21" size="1.27" layer="97" rot="MR180" align="center-left"/>
</instance>
<instance part="U$24" gate="G$1" x="40.64" y="127" smashed="yes">
<attribute name="VALUE" x="40.64" y="130.175" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$25" gate="G$1" x="40.64" y="86.36" smashed="yes"/>
<instance part="U$26" gate="G$1" x="45.72" y="86.36" smashed="yes"/>
<instance part="U$28" gate="G$1" x="38.1" y="109.22" smashed="yes"/>
<instance part="U$29" gate="G$1" x="38.1" y="106.68" smashed="yes"/>
<instance part="U$27" gate="G$1" x="58.42" y="116.84" smashed="yes"/>
<instance part="U$30" gate="G$1" x="58.42" y="111.76" smashed="yes"/>
<instance part="U$31" gate="G$1" x="58.42" y="104.14" smashed="yes"/>
<instance part="U$32" gate="G$1" x="58.42" y="99.06" smashed="yes"/>
<instance part="J4" gate="G$1" x="27.94" y="48.26" smashed="yes">
<attribute name="NAME" x="27.94" y="53.34" size="1.27" layer="95" align="center"/>
<attribute name="VALUE" x="27.94" y="45.72" size="1.27" layer="96" align="center"/>
</instance>
<instance part="R6" gate="G$1" x="35.56" y="40.64" smashed="yes">
<attribute name="NAME" x="38.1" y="44.45" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="38.1" y="42.545" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="38.1" y="40.64" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="38.1" y="38.735" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="38.1" y="36.83" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="U$33" gate="G$1" x="35.56" y="33.02" smashed="yes"/>
<instance part="U$34" gate="G$1" x="35.56" y="55.88" smashed="yes">
<attribute name="VALUE" x="35.56" y="59.055" size="1.27" layer="96" align="bottom-center"/>
</instance>
<instance part="U$35" gate="G$1" x="55.88" y="48.26" smashed="yes"/>
<instance part="U$36" gate="G$1" x="223.52" y="88.9" smashed="yes"/>
<instance part="U$37" gate="G$1" x="91.44" y="101.6" smashed="yes" rot="R180"/>
<instance part="U$38" gate="G$1" x="142.24" y="81.28" smashed="yes" rot="R180"/>
<instance part="U$39" gate="G$1" x="223.52" y="91.44" smashed="yes"/>
<instance part="U$40" gate="G$1" x="142.24" y="83.82" smashed="yes" rot="R180"/>
<instance part="U$41" gate="G$1" x="142.24" y="76.2" smashed="yes" rot="R180"/>
<instance part="U$42" gate="G$1" x="142.24" y="63.5" smashed="yes" rot="R180"/>
<instance part="U$43" gate="G$1" x="142.24" y="60.96" smashed="yes" rot="R180"/>
<instance part="U$44" gate="G$1" x="223.52" y="66.04" smashed="yes"/>
<instance part="U$45" gate="G$1" x="101.6" y="20.32" smashed="yes"/>
<instance part="U$46" gate="G$1" x="137.16" y="20.32" smashed="yes"/>
<instance part="U$47" gate="G$1" x="119.38" y="20.32" smashed="yes"/>
<instance part="U$48" gate="G$1" x="93.98" y="20.32" smashed="yes"/>
<instance part="R7" gate="G$1" x="101.6" y="27.94" smashed="yes">
<attribute name="NAME" x="104.14" y="31.75" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="104.14" y="29.845" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="104.14" y="27.94" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="104.14" y="26.035" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="104.14" y="24.13" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="R8" gate="G$1" x="119.38" y="27.94" smashed="yes">
<attribute name="NAME" x="121.92" y="31.75" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="121.92" y="29.845" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="121.92" y="27.94" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="121.92" y="26.035" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="121.92" y="24.13" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="R9" gate="G$1" x="137.16" y="27.94" smashed="yes">
<attribute name="NAME" x="139.7" y="31.75" size="1.27" layer="95" align="center-left"/>
<attribute name="VALUE" x="139.7" y="29.845" size="1.27" layer="96" align="center-left"/>
<attribute name="POWER" x="139.7" y="27.94" size="1.27" layer="97" align="center-left"/>
<attribute name="VOLTAGE" x="139.7" y="26.035" size="1.27" layer="97" align="center-left"/>
<attribute name="TEMPERATURE" x="139.7" y="24.13" size="1.27" layer="97" align="center-left"/>
</instance>
<instance part="J5" gate="G$1" x="20.32" y="162.56" smashed="yes">
<attribute name="NAME" x="20.32" y="167.64" size="1.27" layer="95" align="center"/>
<attribute name="VALUE" x="20.32" y="160.02" size="1.27" layer="96" align="center"/>
</instance>
<instance part="U$49" gate="G$1" x="27.94" y="157.48" smashed="yes"/>
<instance part="U$50" gate="G$1" x="27.94" y="170.18" smashed="yes">
<attribute name="VALUE" x="27.94" y="173.355" size="1.27" layer="96" align="bottom-center"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="12.0V" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="12.0V"/>
<wire x1="38.1" y1="193.04" x2="38.1" y2="198.12" width="0.1524" layer="91"/>
<pinref part="U3" gate="G$1" pin="VIN"/>
<junction x="38.1" y="193.04"/>
<pinref part="U4" gate="G$1" pin="VIN"/>
<wire x1="38.1" y1="193.04" x2="45.72" y2="193.04" width="0.1524" layer="91"/>
<wire x1="45.72" y1="193.04" x2="58.42" y2="193.04" width="0.1524" layer="91"/>
<wire x1="38.1" y1="193.04" x2="38.1" y2="170.18" width="0.1524" layer="91"/>
<wire x1="38.1" y1="170.18" x2="45.72" y2="170.18" width="0.1524" layer="91"/>
<pinref part="C1" gate="G$1" pin="P$1"/>
<junction x="45.72" y="193.04"/>
<pinref part="C2" gate="G$1" pin="P$1"/>
<wire x1="45.72" y1="170.18" x2="58.42" y2="170.18" width="0.1524" layer="91"/>
<junction x="45.72" y="170.18"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="25.4" y1="193.04" x2="27.94" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U$3" gate="G$1" pin="12.0V"/>
<wire x1="27.94" y1="193.04" x2="27.94" y2="198.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U3" gate="G$1" pin="ENABLE"/>
<pinref part="U$11" gate="G$1" pin="12.0V"/>
<wire x1="83.82" y1="182.88" x2="86.36" y2="182.88" width="0.1524" layer="91"/>
<wire x1="86.36" y1="182.88" x2="86.36" y2="198.12" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="ENABLE"/>
<wire x1="83.82" y1="160.02" x2="86.36" y2="160.02" width="0.1524" layer="91"/>
<wire x1="86.36" y1="160.02" x2="86.36" y2="182.88" width="0.1524" layer="91"/>
<junction x="86.36" y="182.88"/>
</segment>
<segment>
<pinref part="J5" gate="G$1" pin="1"/>
<wire x1="25.4" y1="165.1" x2="27.94" y2="165.1" width="0.1524" layer="91"/>
<pinref part="U$50" gate="G$1" pin="12.0V"/>
<wire x1="27.94" y1="165.1" x2="27.94" y2="170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="3.3V" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="VOUT"/>
<pinref part="U$4" gate="G$1" pin="3.3V"/>
<wire x1="83.82" y1="193.04" x2="91.44" y2="193.04" width="0.1524" layer="91"/>
<wire x1="91.44" y1="193.04" x2="91.44" y2="198.12" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="VOUT"/>
<wire x1="83.82" y1="170.18" x2="91.44" y2="170.18" width="0.1524" layer="91"/>
<wire x1="91.44" y1="170.18" x2="91.44" y2="193.04" width="0.1524" layer="91"/>
<junction x="91.44" y="193.04"/>
</segment>
<segment>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="124.46" y1="109.22" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<pinref part="U$20" gate="G$1" pin="3.3V"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="3V3"/>
<pinref part="C9" gate="G$1" pin="P$1"/>
<wire x1="198.12" y1="99.06" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<wire x1="200.66" y1="99.06" x2="238.76" y2="99.06" width="0.1524" layer="91"/>
<wire x1="238.76" y1="99.06" x2="238.76" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="P$1"/>
<wire x1="238.76" y1="99.06" x2="254" y2="99.06" width="0.1524" layer="91"/>
<wire x1="254" y1="99.06" x2="254" y2="96.52" width="0.1524" layer="91"/>
<junction x="238.76" y="99.06"/>
<pinref part="U$21" gate="G$1" pin="3.3V"/>
<wire x1="200.66" y1="111.76" x2="200.66" y2="99.06" width="0.1524" layer="91"/>
<junction x="200.66" y="99.06"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="VDD"/>
<wire x1="38.1" y1="121.92" x2="40.64" y2="121.92" width="0.1524" layer="91"/>
<pinref part="U$24" gate="G$1" pin="3.3V"/>
<wire x1="40.64" y1="121.92" x2="40.64" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="1"/>
<pinref part="U$34" gate="G$1" pin="3.3V"/>
<wire x1="33.02" y1="50.8" x2="35.56" y2="50.8" width="0.1524" layer="91"/>
<wire x1="35.56" y1="50.8" x2="35.56" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CHASSIS" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="SHIELD"/>
<pinref part="U$5" gate="G$1" pin="CHASSIS"/>
<wire x1="121.92" y1="170.18" x2="124.46" y2="170.18" width="0.1524" layer="91"/>
<wire x1="124.46" y1="170.18" x2="124.46" y2="162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="SHIELD"/>
<pinref part="U$25" gate="G$1" pin="CHASSIS"/>
<wire x1="38.1" y1="91.44" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="40.64" y1="91.44" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$46" gate="G$1" pin="CHASSIS"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="137.16" y1="20.32" x2="137.16" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PGND" class="0">
<segment>
<pinref part="U3" gate="G$1" pin="GND"/>
<pinref part="U$7" gate="G$1" pin="PGND"/>
<wire x1="40.64" y1="182.88" x2="45.72" y2="182.88" width="0.1524" layer="91"/>
<wire x1="45.72" y1="182.88" x2="58.42" y2="182.88" width="0.1524" layer="91"/>
<wire x1="40.64" y1="182.88" x2="40.64" y2="160.02" width="0.1524" layer="91"/>
<pinref part="U4" gate="G$1" pin="GND"/>
<wire x1="40.64" y1="160.02" x2="40.64" y2="157.48" width="0.1524" layer="91"/>
<wire x1="58.42" y1="160.02" x2="45.72" y2="160.02" width="0.1524" layer="91"/>
<junction x="40.64" y="160.02"/>
<pinref part="C1" gate="G$1" pin="P$2"/>
<junction x="45.72" y="182.88"/>
<pinref part="C2" gate="G$1" pin="P$2"/>
<wire x1="45.72" y1="160.02" x2="40.64" y2="160.02" width="0.1524" layer="91"/>
<junction x="45.72" y="160.02"/>
</segment>
<segment>
<pinref part="J2" gate="G$1" pin="2"/>
<pinref part="U$8" gate="G$1" pin="PGND"/>
<wire x1="25.4" y1="190.5" x2="27.94" y2="190.5" width="0.1524" layer="91"/>
<wire x1="27.94" y1="190.5" x2="27.94" y2="185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="137.16" y1="33.02" x2="137.16" y2="35.56" width="0.1524" layer="91"/>
<wire x1="137.16" y1="35.56" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
<wire x1="119.38" y1="35.56" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<wire x1="101.6" y1="35.56" x2="93.98" y2="35.56" width="0.1524" layer="91"/>
<wire x1="93.98" y1="35.56" x2="93.98" y2="20.32" width="0.1524" layer="91"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="101.6" y1="33.02" x2="101.6" y2="35.56" width="0.1524" layer="91"/>
<junction x="101.6" y="35.56"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="119.38" y1="33.02" x2="119.38" y2="35.56" width="0.1524" layer="91"/>
<junction x="119.38" y="35.56"/>
<pinref part="U$48" gate="G$1" pin="PGND"/>
</segment>
<segment>
<pinref part="J5" gate="G$1" pin="2"/>
<wire x1="25.4" y1="162.56" x2="27.94" y2="162.56" width="0.1524" layer="91"/>
<pinref part="U$49" gate="G$1" pin="PGND"/>
<wire x1="27.94" y1="162.56" x2="27.94" y2="157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CP2102N_D+" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="D+"/>
<pinref part="U2" gate="G$1" pin="D+"/>
<wire x1="121.92" y1="182.88" x2="170.18" y2="182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CP2102N_D-" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="D-"/>
<pinref part="U2" gate="G$1" pin="D-"/>
<wire x1="121.92" y1="180.34" x2="170.18" y2="180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CP2102N_VBUS" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="VCC"/>
<wire x1="121.92" y1="185.42" x2="124.46" y2="185.42" width="0.1524" layer="91"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="124.46" y1="185.42" x2="134.62" y2="185.42" width="0.1524" layer="91"/>
<wire x1="134.62" y1="185.42" x2="134.62" y2="165.1" width="0.1524" layer="91"/>
<wire x1="134.62" y1="165.1" x2="137.16" y2="165.1" width="0.1524" layer="91"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="134.62" y1="165.1" x2="134.62" y2="152.4" width="0.1524" layer="91"/>
<wire x1="134.62" y1="152.4" x2="137.16" y2="152.4" width="0.1524" layer="91"/>
<junction x="134.62" y="165.1"/>
<pinref part="U2" gate="G$1" pin="VBUS"/>
<wire x1="167.64" y1="193.04" x2="170.18" y2="193.04" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="VREGIN"/>
<wire x1="167.64" y1="195.58" x2="170.18" y2="195.58" width="0.1524" layer="91"/>
<wire x1="167.64" y1="195.58" x2="167.64" y2="193.04" width="0.1524" layer="91"/>
<junction x="167.64" y="195.58"/>
<wire x1="154.94" y1="195.58" x2="167.64" y2="195.58" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="P$1"/>
<junction x="154.94" y="195.58"/>
<wire x1="139.7" y1="195.58" x2="154.94" y2="195.58" width="0.1524" layer="91"/>
<pinref part="C4" gate="G$1" pin="P$1"/>
<junction x="139.7" y="195.58"/>
<wire x1="124.46" y1="195.58" x2="139.7" y2="195.58" width="0.1524" layer="91"/>
<wire x1="124.46" y1="185.42" x2="124.46" y2="195.58" width="0.1524" layer="91"/>
<junction x="124.46" y="185.42"/>
</segment>
</net>
<net name="DGND-1" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="GND"/>
<wire x1="121.92" y1="175.26" x2="129.54" y2="175.26" width="0.1524" layer="91"/>
<wire x1="129.54" y1="175.26" x2="129.54" y2="162.56" width="0.1524" layer="91"/>
<pinref part="U$15" gate="G$1" pin="DGND-1"/>
</segment>
<segment>
<pinref part="U$13" gate="G$1" pin="DGND-1"/>
<pinref part="C4" gate="G$1" pin="P$2"/>
<wire x1="139.7" y1="177.8" x2="139.7" y2="185.42" width="0.1524" layer="91"/>
<pinref part="C5" gate="G$1" pin="P$2"/>
<wire x1="154.94" y1="185.42" x2="139.7" y2="185.42" width="0.1524" layer="91"/>
<junction x="139.7" y="185.42"/>
</segment>
<segment>
<pinref part="U2" gate="G$1" pin="GND"/>
<wire x1="205.74" y1="147.32" x2="208.28" y2="147.32" width="0.1524" layer="91"/>
<pinref part="U$12" gate="G$1" pin="DGND-1"/>
<wire x1="208.28" y1="147.32" x2="208.28" y2="144.78" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="PAD_GND"/>
<wire x1="208.28" y1="144.78" x2="208.28" y2="142.24" width="0.1524" layer="91"/>
<wire x1="205.74" y1="144.78" x2="208.28" y2="144.78" width="0.1524" layer="91"/>
<junction x="208.28" y="144.78"/>
</segment>
<segment>
<pinref part="C3" gate="G$1" pin="P$2"/>
<pinref part="U$6" gate="G$1" pin="DGND-1"/>
<wire x1="213.36" y1="185.42" x2="213.36" y2="142.24" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="P$2"/>
<wire x1="228.6" y1="185.42" x2="213.36" y2="185.42" width="0.1524" layer="91"/>
<junction x="213.36" y="185.42"/>
</segment>
<segment>
<pinref part="U$47" gate="G$1" pin="DGND-1"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="119.38" y1="20.32" x2="119.38" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DGND-0" class="0">
<segment>
<wire x1="198.12" y1="55.88" x2="200.66" y2="55.88" width="0.1524" layer="91"/>
<wire x1="200.66" y1="55.88" x2="200.66" y2="53.34" width="0.1524" layer="91"/>
<wire x1="200.66" y1="53.34" x2="198.12" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="GND"/>
<pinref part="U1" gate="G$1" pin="PAD_GND"/>
<pinref part="U$1" gate="G$1" pin="DGND-0"/>
<wire x1="200.66" y1="53.34" x2="200.66" y2="50.8" width="0.1524" layer="91"/>
<junction x="200.66" y="53.34"/>
</segment>
<segment>
<pinref part="C7" gate="G$1" pin="P$2"/>
<wire x1="104.14" y1="83.82" x2="104.14" y2="81.28" width="0.1524" layer="91"/>
<wire x1="104.14" y1="81.28" x2="91.44" y2="81.28" width="0.1524" layer="91"/>
<pinref part="SW1" gate="G$1" pin="1"/>
<wire x1="91.44" y1="81.28" x2="91.44" y2="83.82" width="0.1524" layer="91"/>
<pinref part="U$14" gate="G$1" pin="DGND-0"/>
<wire x1="91.44" y1="81.28" x2="91.44" y2="78.74" width="0.1524" layer="91"/>
<junction x="91.44" y="81.28"/>
</segment>
<segment>
<pinref part="C8" gate="G$1" pin="P$2"/>
<wire x1="124.46" y1="83.82" x2="124.46" y2="78.74" width="0.1524" layer="91"/>
<pinref part="U$22" gate="G$1" pin="DGND-0"/>
</segment>
<segment>
<pinref part="C9" gate="G$1" pin="P$2"/>
<wire x1="238.76" y1="86.36" x2="238.76" y2="83.82" width="0.1524" layer="91"/>
<pinref part="C10" gate="G$1" pin="P$2"/>
<wire x1="238.76" y1="83.82" x2="254" y2="83.82" width="0.1524" layer="91"/>
<wire x1="254" y1="83.82" x2="254" y2="86.36" width="0.1524" layer="91"/>
<wire x1="254" y1="83.82" x2="254" y2="81.28" width="0.1524" layer="91"/>
<junction x="254" y="83.82"/>
<pinref part="U$23" gate="G$1" pin="DGND-0"/>
</segment>
<segment>
<pinref part="J3" gate="G$1" pin="VSS/GND"/>
<pinref part="U$26" gate="G$1" pin="DGND-0"/>
<wire x1="38.1" y1="93.98" x2="45.72" y2="93.98" width="0.1524" layer="91"/>
<wire x1="45.72" y1="93.98" x2="45.72" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$33" gate="G$1" pin="DGND-0"/>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="35.56" y1="33.02" x2="35.56" y2="35.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$45" gate="G$1" pin="DGND-0"/>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="101.6" y1="20.32" x2="101.6" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="CP2102N_VDD" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="VDD"/>
<pinref part="C3" gate="G$1" pin="P$1"/>
<wire x1="205.74" y1="195.58" x2="213.36" y2="195.58" width="0.1524" layer="91"/>
<pinref part="C6" gate="G$1" pin="P$1"/>
<wire x1="213.36" y1="195.58" x2="228.6" y2="195.58" width="0.1524" layer="91"/>
<junction x="213.36" y="195.58"/>
</segment>
</net>
<net name="CP2102N_RTS" class="0">
<segment>
<wire x1="223.52" y1="162.56" x2="246.38" y2="162.56" width="0.1524" layer="91"/>
<wire x1="246.38" y1="162.56" x2="246.38" y2="165.1" width="0.1524" layer="91"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="223.52" y1="162.56" x2="223.52" y2="152.4" width="0.1524" layer="91"/>
<wire x1="223.52" y1="152.4" x2="226.06" y2="152.4" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="RTS"/>
<wire x1="205.74" y1="170.18" x2="210.82" y2="170.18" width="0.1524" layer="91"/>
<wire x1="210.82" y1="170.18" x2="210.82" y2="162.56" width="0.1524" layer="91"/>
<wire x1="210.82" y1="162.56" x2="223.52" y2="162.56" width="0.1524" layer="91"/>
<junction x="223.52" y="162.56"/>
<pinref part="Q1" gate="G$1" pin="E"/>
</segment>
</net>
<net name="CP2102N_DTR" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="DTR"/>
<wire x1="205.74" y1="165.1" x2="208.28" y2="165.1" width="0.1524" layer="91"/>
<wire x1="208.28" y1="165.1" x2="208.28" y2="160.02" width="0.1524" layer="91"/>
<wire x1="208.28" y1="160.02" x2="220.98" y2="160.02" width="0.1524" layer="91"/>
<wire x1="220.98" y1="160.02" x2="246.38" y2="160.02" width="0.1524" layer="91"/>
<wire x1="246.38" y1="160.02" x2="246.38" y2="157.48" width="0.1524" layer="91"/>
<wire x1="220.98" y1="160.02" x2="220.98" y2="170.18" width="0.1524" layer="91"/>
<junction x="220.98" y="160.02"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="220.98" y1="170.18" x2="226.06" y2="170.18" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="E"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="236.22" y1="170.18" x2="241.3" y2="170.18" width="0.1524" layer="91"/>
<pinref part="Q1" gate="G$1" pin="B"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="236.22" y1="152.4" x2="241.3" y2="152.4" width="0.1524" layer="91"/>
<pinref part="Q2" gate="G$1" pin="B"/>
</segment>
</net>
<net name="ESP32_EN" class="0">
<segment>
<wire x1="246.38" y1="175.26" x2="246.38" y2="177.8" width="0.1524" layer="91"/>
<wire x1="246.38" y1="177.8" x2="259.08" y2="177.8" width="0.1524" layer="91"/>
<label x="259.08" y="177.8" size="1.27" layer="95" align="bottom-right"/>
<pinref part="Q1" gate="G$1" pin="C"/>
</segment>
<segment>
<pinref part="SW1" gate="G$1" pin="2"/>
<wire x1="91.44" y1="93.98" x2="91.44" y2="96.52" width="0.1524" layer="91"/>
<pinref part="C7" gate="G$1" pin="P$1"/>
<wire x1="91.44" y1="96.52" x2="104.14" y2="96.52" width="0.1524" layer="91"/>
<wire x1="104.14" y1="96.52" x2="104.14" y2="93.98" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="EN"/>
<wire x1="104.14" y1="96.52" x2="119.38" y2="96.52" width="0.1524" layer="91"/>
<junction x="104.14" y="96.52"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="119.38" y1="96.52" x2="124.46" y2="96.52" width="0.1524" layer="91"/>
<wire x1="124.46" y1="96.52" x2="167.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="124.46" y1="99.06" x2="124.46" y2="96.52" width="0.1524" layer="91"/>
<junction x="124.46" y="96.52"/>
<pinref part="C8" gate="G$1" pin="P$1"/>
<wire x1="124.46" y1="96.52" x2="124.46" y2="93.98" width="0.1524" layer="91"/>
<wire x1="119.38" y1="96.52" x2="119.38" y2="101.6" width="0.1524" layer="91"/>
<wire x1="119.38" y1="101.6" x2="91.44" y2="101.6" width="0.1524" layer="91"/>
<junction x="119.38" y="96.52"/>
<label x="91.44" y="101.6" size="1.27" layer="95"/>
</segment>
</net>
<net name="ESP32_IO0" class="0">
<segment>
<wire x1="246.38" y1="147.32" x2="246.38" y2="144.78" width="0.1524" layer="91"/>
<wire x1="246.38" y1="144.78" x2="259.08" y2="144.78" width="0.1524" layer="91"/>
<label x="259.08" y="144.78" size="1.27" layer="95" align="bottom-right"/>
<pinref part="Q2" gate="G$1" pin="C"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO0"/>
<wire x1="167.64" y1="83.82" x2="142.24" y2="83.82" width="0.1524" layer="91"/>
<label x="142.24" y="83.82" size="1.27" layer="95"/>
</segment>
</net>
<net name="CP2102N_TXD-ESP32_RXD" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="TXD"/>
<wire x1="205.74" y1="175.26" x2="223.52" y2="175.26" width="0.1524" layer="91"/>
<wire x1="223.52" y1="175.26" x2="223.52" y2="180.34" width="0.1524" layer="91"/>
<wire x1="223.52" y1="180.34" x2="259.08" y2="180.34" width="0.1524" layer="91"/>
<label x="259.08" y="180.34" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="RXD"/>
<wire x1="198.12" y1="91.44" x2="223.52" y2="91.44" width="0.1524" layer="91"/>
<label x="223.52" y="91.44" size="1.27" layer="95" align="bottom-right"/>
</segment>
</net>
<net name="CP2102N_RXD-ESP32_TXD" class="0">
<segment>
<pinref part="U2" gate="G$1" pin="RXD"/>
<wire x1="205.74" y1="177.8" x2="220.98" y2="177.8" width="0.1524" layer="91"/>
<wire x1="220.98" y1="177.8" x2="220.98" y2="182.88" width="0.1524" layer="91"/>
<wire x1="220.98" y1="182.88" x2="259.08" y2="182.88" width="0.1524" layer="91"/>
<label x="259.08" y="182.88" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="TXD"/>
<wire x1="198.12" y1="88.9" x2="223.52" y2="88.9" width="0.1524" layer="91"/>
<label x="223.52" y="88.9" size="1.27" layer="95" align="bottom-right"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="DS1" gate="G$1" pin="1"/>
<pinref part="U2" gate="G$1" pin="GPIO.0/TXT"/>
<wire x1="162.56" y1="165.1" x2="170.18" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="DS2" gate="G$1" pin="1"/>
<wire x1="162.56" y1="152.4" x2="167.64" y2="152.4" width="0.1524" layer="91"/>
<wire x1="167.64" y1="152.4" x2="167.64" y2="162.56" width="0.1524" layer="91"/>
<pinref part="U2" gate="G$1" pin="GPIO.1/RXT"/>
<wire x1="167.64" y1="162.56" x2="170.18" y2="162.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<pinref part="DS1" gate="G$1" pin="2"/>
<wire x1="147.32" y1="165.1" x2="152.4" y2="165.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<pinref part="DS2" gate="G$1" pin="2"/>
<wire x1="147.32" y1="152.4" x2="152.4" y2="152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SD_CLK-ESP32_IO18" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="CLK"/>
<wire x1="38.1" y1="99.06" x2="58.42" y2="99.06" width="0.1524" layer="91"/>
<label x="58.42" y="99.06" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO18"/>
<wire x1="167.64" y1="63.5" x2="142.24" y2="63.5" width="0.1524" layer="91"/>
<label x="142.24" y="63.5" size="1.27" layer="95"/>
</segment>
</net>
<net name="SD_CS-ESP32_IO5" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="CD/DAT3"/>
<wire x1="38.1" y1="104.14" x2="58.42" y2="104.14" width="0.1524" layer="91"/>
<label x="58.42" y="104.14" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO5"/>
<wire x1="167.64" y1="76.2" x2="142.24" y2="76.2" width="0.1524" layer="91"/>
<label x="142.24" y="76.2" size="1.27" layer="95"/>
</segment>
</net>
<net name="SD_MISO-ESP32_IO19" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="MISO/DAT0"/>
<wire x1="38.1" y1="111.76" x2="58.42" y2="111.76" width="0.1524" layer="91"/>
<label x="58.42" y="111.76" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO19"/>
<wire x1="167.64" y1="60.96" x2="142.24" y2="60.96" width="0.1524" layer="91"/>
<label x="142.24" y="60.96" size="1.27" layer="95"/>
</segment>
</net>
<net name="SD_MOSI-ESP32_IO23" class="0">
<segment>
<pinref part="J3" gate="G$1" pin="MOSI/CMD"/>
<wire x1="38.1" y1="116.84" x2="58.42" y2="116.84" width="0.1524" layer="91"/>
<label x="58.42" y="116.84" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO23"/>
<wire x1="198.12" y1="66.04" x2="223.52" y2="66.04" width="0.1524" layer="91"/>
<label x="223.52" y="66.04" size="1.27" layer="95" align="bottom-right"/>
</segment>
</net>
<net name="BUTTON-ESP32_IO2" class="0">
<segment>
<pinref part="J4" gate="G$1" pin="2"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="33.02" y1="48.26" x2="35.56" y2="48.26" width="0.1524" layer="91"/>
<wire x1="35.56" y1="48.26" x2="35.56" y2="45.72" width="0.1524" layer="91"/>
<wire x1="35.56" y1="48.26" x2="55.88" y2="48.26" width="0.1524" layer="91"/>
<junction x="35.56" y="48.26"/>
<label x="55.88" y="48.26" size="1.27" layer="95" align="bottom-right"/>
</segment>
<segment>
<pinref part="U1" gate="G$1" pin="IO2"/>
<wire x1="167.64" y1="81.28" x2="142.24" y2="81.28" width="0.1524" layer="91"/>
<label x="142.24" y="81.28" size="1.27" layer="95"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
<text x="127" y="93.98" size="2.54" layer="97" align="center">Design Note: High pitch frequencies from the motor is typically caused by low frequency PMW
https://automateeverythingsite.wordpress.com/2016/11/20/hacking-big-mouth-billy-bass-part-13/</text>
</plain>
<instances>
<instance part="FRAME3" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME3" gate="G$2" x="172.72" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME4" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME4" gate="G$2" x="172.72" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
<sheet>
<plain>
</plain>
<instances>
<instance part="FRAME5" gate="G$1" x="0" y="0" smashed="yes"/>
<instance part="FRAME5" gate="G$2" x="172.72" y="0" smashed="yes">
<attribute name="LAST_DATE_TIME" x="185.42" y="1.27" size="2.54" layer="94"/>
<attribute name="SHEET" x="259.08" y="1.27" size="2.54" layer="94"/>
<attribute name="DRAWING_NAME" x="190.5" y="19.05" size="2.54" layer="94"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="6.3" minversion="6.2.2" severity="warning">
Since Version 6.2.2 text objects can contain more than one line,
which will not be processed correctly with this version.
</note>
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
<note version="9.0" severity="warning">
Since Version 9.0, EAGLE supports the align property for labels. 
Labels in schematic will not be understood with this version. Update EAGLE to the latest version 
for full support of labels. 
</note>
</compatibility>
</eagle>
