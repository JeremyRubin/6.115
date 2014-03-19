<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<library name="74xx-us">
<description>&lt;b&gt;TTL Devices, 74xx Series with US Symbols&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Texas Instruments &lt;i&gt;TTL Data Book&lt;/i&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;Volume 1, 1996.
&lt;li&gt;TTL Data Book, Volume 2 , 1993
&lt;li&gt;National Seminconductor Databook 1990, ALS/LS Logic
&lt;li&gt;ttl 74er digital data dictionary, ECA Electronic + Acustic GmbH, ISBN 3-88109-032-0
&lt;li&gt;http://icmaster.com/ViewCompare.asp
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL18">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="11.43" y1="2.921" x2="-11.43" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.921" x2="11.43" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="11.43" y1="2.921" x2="11.43" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="2.921" x2="-11.43" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="-2.921" x2="-11.43" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="1.016" x2="-11.43" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-10.16" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="10.16" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="10.16" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="-10.16" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-11.684" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-9.525" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO20W">
<description>&lt;b&gt;Wide Small Outline package&lt;/b&gt; 300 mil</description>
<wire x1="6.1214" y1="3.7338" x2="-6.1214" y2="3.7338" width="0.1524" layer="51"/>
<wire x1="6.1214" y1="-3.7338" x2="6.5024" y2="-3.3528" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.1214" y2="3.7338" width="0.1524" layer="21" curve="-90"/>
<wire x1="6.1214" y1="3.7338" x2="6.5024" y2="3.3528" width="0.1524" layer="21" curve="-90"/>
<wire x1="-6.5024" y1="-3.3528" x2="-6.1214" y2="-3.7338" width="0.1524" layer="21" curve="90"/>
<wire x1="-6.1214" y1="-3.7338" x2="6.1214" y2="-3.7338" width="0.1524" layer="51"/>
<wire x1="6.5024" y1="-3.3528" x2="6.5024" y2="3.3528" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="3.3528" x2="-6.5024" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.5024" y1="-1.27" x2="-6.5024" y2="-3.3528" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="-3.3782" x2="6.477" y2="-3.3782" width="0.0508" layer="21"/>
<wire x1="-6.5024" y1="1.27" x2="-6.5024" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<smd name="1" x="-5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="-0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="0.635" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="1.905" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.175" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-0.635" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="17" x="-1.905" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="18" x="-3.175" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="19" x="-4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="20" x="-5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="5.715" y="-5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="4.445" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="5.715" y="5.0292" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.81" y="-1.778" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-6.858" y="-3.175" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-5.969" y1="-3.8608" x2="-5.461" y2="-3.7338" layer="51"/>
<rectangle x1="-5.969" y1="-5.334" x2="-5.461" y2="-3.8608" layer="51"/>
<rectangle x1="-4.699" y1="-3.8608" x2="-4.191" y2="-3.7338" layer="51"/>
<rectangle x1="-4.699" y1="-5.334" x2="-4.191" y2="-3.8608" layer="51"/>
<rectangle x1="-3.429" y1="-3.8608" x2="-2.921" y2="-3.7338" layer="51"/>
<rectangle x1="-3.429" y1="-5.334" x2="-2.921" y2="-3.8608" layer="51"/>
<rectangle x1="-2.159" y1="-3.8608" x2="-1.651" y2="-3.7338" layer="51"/>
<rectangle x1="-2.159" y1="-5.334" x2="-1.651" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-5.334" x2="-0.381" y2="-3.8608" layer="51"/>
<rectangle x1="-0.889" y1="-3.8608" x2="-0.381" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-3.8608" x2="0.889" y2="-3.7338" layer="51"/>
<rectangle x1="0.381" y1="-5.334" x2="0.889" y2="-3.8608" layer="51"/>
<rectangle x1="1.651" y1="-3.8608" x2="2.159" y2="-3.7338" layer="51"/>
<rectangle x1="1.651" y1="-5.334" x2="2.159" y2="-3.8608" layer="51"/>
<rectangle x1="2.921" y1="-3.8608" x2="3.429" y2="-3.7338" layer="51"/>
<rectangle x1="2.921" y1="-5.334" x2="3.429" y2="-3.8608" layer="51"/>
<rectangle x1="-5.969" y1="3.8608" x2="-5.461" y2="5.334" layer="51"/>
<rectangle x1="-5.969" y1="3.7338" x2="-5.461" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.7338" x2="-4.191" y2="3.8608" layer="51"/>
<rectangle x1="-4.699" y1="3.8608" x2="-4.191" y2="5.334" layer="51"/>
<rectangle x1="-3.429" y1="3.7338" x2="-2.921" y2="3.8608" layer="51"/>
<rectangle x1="-3.429" y1="3.8608" x2="-2.921" y2="5.334" layer="51"/>
<rectangle x1="-2.159" y1="3.7338" x2="-1.651" y2="3.8608" layer="51"/>
<rectangle x1="-2.159" y1="3.8608" x2="-1.651" y2="5.334" layer="51"/>
<rectangle x1="-0.889" y1="3.7338" x2="-0.381" y2="3.8608" layer="51"/>
<rectangle x1="-0.889" y1="3.8608" x2="-0.381" y2="5.334" layer="51"/>
<rectangle x1="0.381" y1="3.7338" x2="0.889" y2="3.8608" layer="51"/>
<rectangle x1="0.381" y1="3.8608" x2="0.889" y2="5.334" layer="51"/>
<rectangle x1="1.651" y1="3.7338" x2="2.159" y2="3.8608" layer="51"/>
<rectangle x1="1.651" y1="3.8608" x2="2.159" y2="5.334" layer="51"/>
<rectangle x1="2.921" y1="3.7338" x2="3.429" y2="3.8608" layer="51"/>
<rectangle x1="2.921" y1="3.8608" x2="3.429" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="3.7338" x2="4.699" y2="3.8608" layer="51"/>
<rectangle x1="5.461" y1="3.7338" x2="5.969" y2="3.8608" layer="51"/>
<rectangle x1="4.191" y1="3.8608" x2="4.699" y2="5.334" layer="51"/>
<rectangle x1="5.461" y1="3.8608" x2="5.969" y2="5.334" layer="51"/>
<rectangle x1="4.191" y1="-3.8608" x2="4.699" y2="-3.7338" layer="51"/>
<rectangle x1="5.461" y1="-3.8608" x2="5.969" y2="-3.7338" layer="51"/>
<rectangle x1="4.191" y1="-5.334" x2="4.699" y2="-3.8608" layer="51"/>
<rectangle x1="5.461" y1="-5.334" x2="5.969" y2="-3.8608" layer="51"/>
</package>
<package name="DIL20">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="12.7" y1="2.921" x2="-12.7" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="12.7" y1="2.921" x2="12.7" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="2.921" x2="-12.7" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-2.921" x2="-12.7" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="1.016" x2="-12.7" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-11.43" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
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
<text x="-13.081" y="-3.048" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="-9.779" y="-0.381" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="LCC20">
<description>&lt;b&gt;Leadless Chip Carrier&lt;/b&gt;&lt;p&gt; Ceramic Package</description>
<wire x1="-0.4001" y1="4.4" x2="-0.87" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-3.3" y1="4.4" x2="-4.4" y2="3.3" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="4.3985" x2="0.4001" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.3985" x2="-0.8699" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="2.14" x2="-4.3985" y2="2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="-2.9401" y1="4.4" x2="-3.3" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.4" x2="0.4001" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.87" y1="4.3985" x2="1.67" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="3.3" x2="-4.4" y2="2.9401" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="2.14" x2="-4.4" y2="1.6701" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="0.87" x2="-4.3985" y2="1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-0.4001" x2="-4.3985" y2="0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.3985" y1="-1.6701" x2="-4.3985" y2="-0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="0.87" x2="-4.4" y2="0.4001" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-0.4001" x2="-4.4" y2="-0.87" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-2.9401" x2="-4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-4.4" y2="-4.4099" width="0.2032" layer="51"/>
<wire x1="2.14" y1="4.3985" x2="2.94" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="2.14" y1="4.4" x2="1.6701" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="4.4" x2="2.9401" y2="4.4" width="0.2032" layer="51"/>
<wire x1="0.4001" y1="-4.4" x2="0.87" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.4001" y1="-4.3985" x2="0.4001" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="0.87" y1="-4.3985" x2="1.67" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="2.9401" y1="-4.4" x2="4.4" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-0.87" y1="-4.4" x2="-0.4001" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-1.6701" y1="-4.3985" x2="-0.8699" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.9401" y1="-4.3985" x2="-2.1399" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="-2.14" y1="-4.4" x2="-1.6701" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="-4.4" y1="-4.4" x2="-2.9401" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="0.4001" x2="4.4" y2="0.87" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="0.4001" x2="4.3985" y2="-0.4001" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="1.6701" x2="4.3985" y2="0.8699" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="2.9401" x2="4.4" y2="4.4" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-0.87" x2="4.4" y2="-0.4001" width="0.2032" layer="51"/>
<wire x1="4.3985" y1="-0.87" x2="4.3985" y2="-1.67" width="0.2032" layer="51" curve="180"/>
<wire x1="4.3985" y1="-2.14" x2="4.3985" y2="-2.94" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="-2.14" x2="4.4" y2="-1.6701" width="0.2032" layer="51"/>
<wire x1="4.4" y1="-4.4" x2="4.4" y2="-2.9401" width="0.2032" layer="51"/>
<wire x1="-2.9401" y1="4.3985" x2="-2.1399" y2="4.3985" width="0.2032" layer="51" curve="180"/>
<wire x1="-1.6701" y1="4.4" x2="-2.14" y2="4.4" width="0.2032" layer="51"/>
<wire x1="-4.3985" y1="-2.9401" x2="-4.3985" y2="-2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="-4.4" y1="-1.6701" x2="-4.4" y2="-2.14" width="0.2032" layer="51"/>
<wire x1="1.6701" y1="-4.4" x2="2.14" y2="-4.4" width="0.2032" layer="51"/>
<wire x1="2.14" y1="-4.3985" x2="2.94" y2="-4.3985" width="0.2032" layer="51" curve="-180"/>
<wire x1="4.3985" y1="2.9401" x2="4.3985" y2="2.1399" width="0.2032" layer="51" curve="180"/>
<wire x1="4.4" y1="1.6701" x2="4.4" y2="2.14" width="0.2032" layer="51"/>
<smd name="2" x="-1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="1" x="0" y="3.8001" dx="0.8" dy="3.4" layer="1"/>
<smd name="3" x="-2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="4" x="-4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="5" x="-4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="6" x="-4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="7" x="-4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="8" x="-4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="9" x="-2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="10" x="-1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="11" x="0" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="12" x="1.27" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="13" x="2.54" y="-4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="14" x="4.5001" y="-2.54" dx="2" dy="0.8" layer="1"/>
<smd name="15" x="4.5001" y="-1.27" dx="2" dy="0.8" layer="1"/>
<smd name="16" x="4.5001" y="0" dx="2" dy="0.8" layer="1"/>
<smd name="17" x="4.5001" y="1.27" dx="2" dy="0.8" layer="1"/>
<smd name="18" x="4.5001" y="2.54" dx="2" dy="0.8" layer="1"/>
<smd name="19" x="2.54" y="4.5001" dx="0.8" dy="2" layer="1"/>
<smd name="20" x="1.27" y="4.5001" dx="0.8" dy="2" layer="1"/>
<text x="-3.4971" y="5.811" size="1.778" layer="25">&gt;NAME</text>
<text x="-3.9751" y="-7.6871" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO16">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.699" y1="1.9558" x2="-4.699" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-1.9558" x2="5.08" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-5.08" y1="1.5748" x2="-4.699" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.699" y1="1.9558" x2="5.08" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-5.08" y1="-1.5748" x2="-4.699" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.699" y1="-1.9558" x2="4.699" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.5748" x2="5.08" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.5748" x2="-5.08" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.508" x2="-5.08" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.508" x2="-5.08" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.08" y1="-1.6002" x2="5.08" y2="-1.6002" width="0.0508" layer="21"/>
<smd name="1" x="-4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="16" x="-4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="15" x="-3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="-0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="0.635" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="0.635" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="1.905" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.175" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="1.905" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="3.175" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="4.445" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="4.445" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-4.064" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.461" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.889" y1="1.9558" x2="-0.381" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="-3.0988" x2="-4.191" y2="-1.9558" layer="51"/>
<rectangle x1="-3.429" y1="-3.0988" x2="-2.921" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="-3.0734" x2="-1.651" y2="-1.9304" layer="51"/>
<rectangle x1="-0.889" y1="-3.0988" x2="-0.381" y2="-1.9558" layer="51"/>
<rectangle x1="-2.159" y1="1.9558" x2="-1.651" y2="3.0988" layer="51"/>
<rectangle x1="-3.429" y1="1.9558" x2="-2.921" y2="3.0988" layer="51"/>
<rectangle x1="-4.699" y1="1.9558" x2="-4.191" y2="3.0988" layer="51"/>
<rectangle x1="0.381" y1="-3.0988" x2="0.889" y2="-1.9558" layer="51"/>
<rectangle x1="1.651" y1="-3.0988" x2="2.159" y2="-1.9558" layer="51"/>
<rectangle x1="2.921" y1="-3.0988" x2="3.429" y2="-1.9558" layer="51"/>
<rectangle x1="4.191" y1="-3.0988" x2="4.699" y2="-1.9558" layer="51"/>
<rectangle x1="0.381" y1="1.9558" x2="0.889" y2="3.0988" layer="51"/>
<rectangle x1="1.651" y1="1.9558" x2="2.159" y2="3.0988" layer="51"/>
<rectangle x1="2.921" y1="1.9558" x2="3.429" y2="3.0988" layer="51"/>
<rectangle x1="4.191" y1="1.9558" x2="4.699" y2="3.0988" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="74922">
<wire x1="-10.16" y1="15.24" x2="10.16" y2="15.24" width="0.254" layer="94"/>
<wire x1="10.16" y1="15.24" x2="10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="10.16" y1="-17.78" x2="-10.16" y2="-17.78" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-17.78" x2="-10.16" y2="15.24" width="0.254" layer="94"/>
<text x="-10.16" y="16.51" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-20.32" size="1.778" layer="96">&gt;VALUE</text>
<pin name="Y1" x="-12.7" y="10.16" length="short" direction="in"/>
<pin name="Y2" x="-12.7" y="7.62" length="short" direction="in"/>
<pin name="Y3" x="-12.7" y="5.08" length="short" direction="in"/>
<pin name="Y4" x="-12.7" y="2.54" length="short" direction="in"/>
<pin name="OSC" x="-12.7" y="12.7" length="short" direction="in"/>
<pin name="KBM" x="-12.7" y="-15.24" length="short" direction="in"/>
<pin name="X1" x="-12.7" y="-2.54" length="short" direction="in"/>
<pin name="X2" x="-12.7" y="-10.16" length="short" direction="in"/>
<pin name="X3" x="-12.7" y="-7.62" length="short" direction="in"/>
<pin name="X4" x="-12.7" y="-5.08" length="short" direction="in"/>
<pin name="DATA_AV" x="12.7" y="7.62" length="short" direction="out" rot="R180"/>
<pin name="!OE" x="12.7" y="-10.16" length="short" direction="in" rot="R180"/>
<pin name="OUTA" x="12.7" y="2.54" length="short" direction="out" rot="R180"/>
<pin name="OUTB" x="12.7" y="0" length="short" direction="out" rot="R180"/>
<pin name="OUTC" x="12.7" y="-2.54" length="short" direction="out" rot="R180"/>
<pin name="OUTD" x="12.7" y="-5.08" length="short" direction="out" rot="R180"/>
</symbol>
<symbol name="PWRN-2">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="74373">
<wire x1="-7.62" y1="-15.24" x2="7.62" y2="-15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="7.62" y1="15.24" x2="-7.62" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-7.62" y1="15.24" x2="-7.62" y2="-15.24" width="0.4064" layer="94"/>
<text x="-7.62" y="15.875" size="1.778" layer="95">&gt;NAME</text>
<text x="-7.62" y="-17.78" size="1.778" layer="96">&gt;VALUE</text>
<pin name="OC" x="-12.7" y="-10.16" length="middle" direction="in" function="dot"/>
<pin name="1Q" x="12.7" y="12.7" length="middle" direction="hiz" rot="R180"/>
<pin name="1D" x="-12.7" y="12.7" length="middle" direction="in"/>
<pin name="2D" x="-12.7" y="10.16" length="middle" direction="in"/>
<pin name="2Q" x="12.7" y="10.16" length="middle" direction="hiz" rot="R180"/>
<pin name="3Q" x="12.7" y="7.62" length="middle" direction="hiz" rot="R180"/>
<pin name="3D" x="-12.7" y="7.62" length="middle" direction="in"/>
<pin name="4D" x="-12.7" y="5.08" length="middle" direction="in"/>
<pin name="4Q" x="12.7" y="5.08" length="middle" direction="hiz" rot="R180"/>
<pin name="ENC" x="-12.7" y="-12.7" length="middle" direction="in"/>
<pin name="5Q" x="12.7" y="2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="5D" x="-12.7" y="2.54" length="middle" direction="in"/>
<pin name="6D" x="-12.7" y="0" length="middle" direction="in"/>
<pin name="6Q" x="12.7" y="0" length="middle" direction="hiz" rot="R180"/>
<pin name="7Q" x="12.7" y="-2.54" length="middle" direction="hiz" rot="R180"/>
<pin name="7D" x="-12.7" y="-2.54" length="middle" direction="in"/>
<pin name="8D" x="-12.7" y="-5.08" length="middle" direction="in"/>
<pin name="8Q" x="12.7" y="-5.08" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
<symbol name="74138">
<wire x1="-10.16" y1="-12.7" x2="7.62" y2="-12.7" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-12.7" x2="7.62" y2="10.16" width="0.4064" layer="94"/>
<wire x1="7.62" y1="10.16" x2="-10.16" y2="10.16" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="10.16" x2="-10.16" y2="-12.7" width="0.4064" layer="94"/>
<text x="-10.16" y="10.795" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-15.24" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="B" x="-15.24" y="5.08" length="middle" direction="in"/>
<pin name="C" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="G2A" x="-15.24" y="-7.62" length="middle" direction="in" function="dot"/>
<pin name="G2B" x="-15.24" y="-10.16" length="middle" direction="in" function="dot"/>
<pin name="G1" x="-15.24" y="-5.08" length="middle" direction="in"/>
<pin name="Y7" x="12.7" y="-10.16" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y6" x="12.7" y="-7.62" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y5" x="12.7" y="-5.08" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y4" x="12.7" y="-2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y3" x="12.7" y="0" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y2" x="12.7" y="2.54" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y1" x="12.7" y="5.08" length="middle" direction="out" function="dot" rot="R180"/>
<pin name="Y0" x="12.7" y="7.62" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74C922" prefix="IC">
<description>&lt;b&gt;16-Key Encoder&lt;/b&gt;&lt;p&gt;
Source: http://www.national.com/ds/MM/MM54C922.pdf#page=1</description>
<gates>
<gate name="G$1" symbol="74922" x="0" y="0"/>
<gate name="P" symbol="PWRN-2" x="22.86" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL18">
<connects>
<connect gate="G$1" pin="!OE" pad="13"/>
<connect gate="G$1" pin="DATA_AV" pad="12"/>
<connect gate="G$1" pin="KBM" pad="6"/>
<connect gate="G$1" pin="OSC" pad="5"/>
<connect gate="G$1" pin="OUTA" pad="17"/>
<connect gate="G$1" pin="OUTB" pad="16"/>
<connect gate="G$1" pin="OUTC" pad="15"/>
<connect gate="G$1" pin="OUTD" pad="14"/>
<connect gate="G$1" pin="X1" pad="11"/>
<connect gate="G$1" pin="X2" pad="10"/>
<connect gate="G$1" pin="X3" pad="8"/>
<connect gate="G$1" pin="X4" pad="7"/>
<connect gate="G$1" pin="Y1" pad="1"/>
<connect gate="G$1" pin="Y2" pad="2"/>
<connect gate="G$1" pin="Y3" pad="3"/>
<connect gate="G$1" pin="Y4" pad="4"/>
<connect gate="P" pin="GND" pad="9"/>
<connect gate="P" pin="VCC" pad="18"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="M" package="SO20W">
<connects>
<connect gate="G$1" pin="!OE" pad="14"/>
<connect gate="G$1" pin="DATA_AV" pad="13"/>
<connect gate="G$1" pin="KBM" pad="7"/>
<connect gate="G$1" pin="OSC" pad="6"/>
<connect gate="G$1" pin="OUTA" pad="19"/>
<connect gate="G$1" pin="OUTB" pad="18"/>
<connect gate="G$1" pin="OUTC" pad="17"/>
<connect gate="G$1" pin="OUTD" pad="16"/>
<connect gate="G$1" pin="X1" pad="12"/>
<connect gate="G$1" pin="X2" pad="11"/>
<connect gate="G$1" pin="X3" pad="8"/>
<connect gate="G$1" pin="X4" pad="9"/>
<connect gate="G$1" pin="Y1" pad="1"/>
<connect gate="G$1" pin="Y2" pad="2"/>
<connect gate="G$1" pin="Y3" pad="3"/>
<connect gate="G$1" pin="Y4" pad="4"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*373" prefix="IC">
<description>Octal D type transparent &lt;b&gt;LATCH&lt;/b&gt;, edge triggered</description>
<gates>
<gate name="A" symbol="74373" x="20.32" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL20">
<connects>
<connect gate="A" pin="1D" pad="3"/>
<connect gate="A" pin="1Q" pad="2"/>
<connect gate="A" pin="2D" pad="4"/>
<connect gate="A" pin="2Q" pad="5"/>
<connect gate="A" pin="3D" pad="7"/>
<connect gate="A" pin="3Q" pad="6"/>
<connect gate="A" pin="4D" pad="8"/>
<connect gate="A" pin="4Q" pad="9"/>
<connect gate="A" pin="5D" pad="13"/>
<connect gate="A" pin="5Q" pad="12"/>
<connect gate="A" pin="6D" pad="14"/>
<connect gate="A" pin="6Q" pad="15"/>
<connect gate="A" pin="7D" pad="17"/>
<connect gate="A" pin="7Q" pad="16"/>
<connect gate="A" pin="8D" pad="18"/>
<connect gate="A" pin="8Q" pad="19"/>
<connect gate="A" pin="ENC" pad="11"/>
<connect gate="A" pin="OC" pad="1"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="DW" package="SO20W">
<connects>
<connect gate="A" pin="1D" pad="3"/>
<connect gate="A" pin="1Q" pad="2"/>
<connect gate="A" pin="2D" pad="4"/>
<connect gate="A" pin="2Q" pad="5"/>
<connect gate="A" pin="3D" pad="7"/>
<connect gate="A" pin="3Q" pad="6"/>
<connect gate="A" pin="4D" pad="8"/>
<connect gate="A" pin="4Q" pad="9"/>
<connect gate="A" pin="5D" pad="13"/>
<connect gate="A" pin="5Q" pad="12"/>
<connect gate="A" pin="6D" pad="14"/>
<connect gate="A" pin="6Q" pad="15"/>
<connect gate="A" pin="7D" pad="17"/>
<connect gate="A" pin="7Q" pad="16"/>
<connect gate="A" pin="8D" pad="18"/>
<connect gate="A" pin="8Q" pad="19"/>
<connect gate="A" pin="ENC" pad="11"/>
<connect gate="A" pin="OC" pad="1"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="1D" pad="3"/>
<connect gate="A" pin="1Q" pad="2"/>
<connect gate="A" pin="2D" pad="4"/>
<connect gate="A" pin="2Q" pad="5"/>
<connect gate="A" pin="3D" pad="7"/>
<connect gate="A" pin="3Q" pad="6"/>
<connect gate="A" pin="4D" pad="8"/>
<connect gate="A" pin="4Q" pad="9"/>
<connect gate="A" pin="5D" pad="13"/>
<connect gate="A" pin="5Q" pad="12"/>
<connect gate="A" pin="6D" pad="14"/>
<connect gate="A" pin="6Q" pad="15"/>
<connect gate="A" pin="7D" pad="17"/>
<connect gate="A" pin="7Q" pad="16"/>
<connect gate="A" pin="8D" pad="18"/>
<connect gate="A" pin="8Q" pad="19"/>
<connect gate="A" pin="ENC" pad="11"/>
<connect gate="A" pin="OC" pad="1"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="74*138" prefix="IC">
<description>3-line to 8-line &lt;b&gt;DECODER/DEMULTIPLEXER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="74138" x="20.32" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL16">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="G1" pad="6"/>
<connect gate="A" pin="G2A" pad="4"/>
<connect gate="A" pin="G2B" pad="5"/>
<connect gate="A" pin="Y0" pad="15"/>
<connect gate="A" pin="Y1" pad="14"/>
<connect gate="A" pin="Y2" pad="13"/>
<connect gate="A" pin="Y3" pad="12"/>
<connect gate="A" pin="Y4" pad="11"/>
<connect gate="A" pin="Y5" pad="10"/>
<connect gate="A" pin="Y6" pad="9"/>
<connect gate="A" pin="Y7" pad="7"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="D" package="SO16">
<connects>
<connect gate="A" pin="A" pad="1"/>
<connect gate="A" pin="B" pad="2"/>
<connect gate="A" pin="C" pad="3"/>
<connect gate="A" pin="G1" pad="6"/>
<connect gate="A" pin="G2A" pad="4"/>
<connect gate="A" pin="G2B" pad="5"/>
<connect gate="A" pin="Y0" pad="15"/>
<connect gate="A" pin="Y1" pad="14"/>
<connect gate="A" pin="Y2" pad="13"/>
<connect gate="A" pin="Y3" pad="12"/>
<connect gate="A" pin="Y4" pad="11"/>
<connect gate="A" pin="Y5" pad="10"/>
<connect gate="A" pin="Y6" pad="9"/>
<connect gate="A" pin="Y7" pad="7"/>
<connect gate="P" pin="GND" pad="8"/>
<connect gate="P" pin="VCC" pad="16"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
<device name="FK" package="LCC20">
<connects>
<connect gate="A" pin="A" pad="2"/>
<connect gate="A" pin="B" pad="3"/>
<connect gate="A" pin="C" pad="4"/>
<connect gate="A" pin="G1" pad="8"/>
<connect gate="A" pin="G2A" pad="5"/>
<connect gate="A" pin="G2B" pad="7"/>
<connect gate="A" pin="Y0" pad="19"/>
<connect gate="A" pin="Y1" pad="18"/>
<connect gate="A" pin="Y2" pad="17"/>
<connect gate="A" pin="Y3" pad="15"/>
<connect gate="A" pin="Y4" pad="14"/>
<connect gate="A" pin="Y5" pad="13"/>
<connect gate="A" pin="Y6" pad="12"/>
<connect gate="A" pin="Y7" pad="9"/>
<connect gate="P" pin="GND" pad="10"/>
<connect gate="P" pin="VCC" pad="20"/>
</connects>
<technologies>
<technology name="LS"/>
<technology name="S"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="micro-intel">
<description>&lt;b&gt;Intel Microcomputer Devices&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL40">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="25.4" y1="6.731" x2="-25.4" y2="6.731" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.731" x2="25.4" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="25.4" y1="6.731" x2="25.4" y2="-6.731" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="6.731" x2="-25.4" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="-6.731" x2="-25.4" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-25.4" y1="0.889" x2="-25.4" y2="-1.143" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="16.51" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="19.05" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="21.59" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="24.13" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="25" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="26" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="27" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="28" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="29" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="30" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="31" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="32" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="33" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="34" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="35" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="36" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="37" x="-16.51" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="38" x="-19.05" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="39" x="-21.59" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="40" x="-24.13" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-25.908" y="-6.604" size="1.778" layer="25" rot="R90">&gt;NAME</text>
<text x="-17.145" y="-1.016" size="1.778" layer="27">&gt;VALUE</text>
</package>
<package name="PLCC44">
<description>&lt;b&gt;PLASTIC LEADED CHIP CARRIER&lt;/b&gt;&lt;p&gt;
square</description>
<wire x1="-9.903" y1="9.903" x2="9.903" y2="9.903" width="0.2" layer="39"/>
<wire x1="9.903" y1="9.903" x2="9.903" y2="-9.903" width="0.2" layer="39"/>
<wire x1="9.903" y1="-9.903" x2="-9.903" y2="-9.903" width="0.2" layer="39"/>
<wire x1="-9.903" y1="-9.903" x2="-9.903" y2="9.903" width="0.2" layer="39"/>
<wire x1="8.7" y1="8.7" x2="-6.465" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="6.465" x2="-8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="-8.7" y1="-8.7" x2="8.7" y2="-8.7" width="0.2032" layer="51"/>
<wire x1="8.7" y1="-8.7" x2="8.7" y2="8.7" width="0.2032" layer="51"/>
<wire x1="-6.465" y1="8.7" x2="-8.7" y2="6.465" width="0.2032" layer="51"/>
<circle x="0" y="7.6" radius="0.3" width="0.6096" layer="51"/>
<smd name="1" x="0" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="2" x="-1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="3" x="-2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="4" x="-3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="5" x="-5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="6" x="-6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="7" x="-8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="8" x="-8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="9" x="-8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="10" x="-8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="11" x="-8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="12" x="-8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="13" x="-8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="14" x="-8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="15" x="-8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="16" x="-8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="17" x="-8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="18" x="-6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="19" x="-5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="20" x="-3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="21" x="-2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="22" x="-1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="23" x="0" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="24" x="1.27" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="25" x="2.54" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="26" x="3.81" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="27" x="5.08" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="28" x="6.35" y="-8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="29" x="8.1" y="-6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="30" x="8.1" y="-5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="31" x="8.1" y="-3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="32" x="8.1" y="-2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="33" x="8.1" y="-1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="34" x="8.1" y="0" dx="2.2" dy="0.6" layer="1"/>
<smd name="35" x="8.1" y="1.27" dx="2.2" dy="0.6" layer="1"/>
<smd name="36" x="8.1" y="2.54" dx="2.2" dy="0.6" layer="1"/>
<smd name="37" x="8.1" y="3.81" dx="2.2" dy="0.6" layer="1"/>
<smd name="38" x="8.1" y="5.08" dx="2.2" dy="0.6" layer="1"/>
<smd name="39" x="8.1" y="6.35" dx="2.2" dy="0.6" layer="1"/>
<smd name="40" x="6.35" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="41" x="5.08" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="42" x="3.81" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="43" x="2.54" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<smd name="44" x="1.27" y="8.1" dx="0.6" dy="2.2" layer="1"/>
<text x="-6.38" y="9.525" size="1.778" layer="25">&gt;NAME</text>
<text x="-5.715" y="-1.77" size="1.778" layer="27">&gt;VALUE</text>
<text x="-5.96" y="4.27" size="0.6096" layer="51">IPC PLCC-44 Suare</text>
<rectangle x1="-0.26" y1="8.75" x2="0.26" y2="9.2" layer="51"/>
<rectangle x1="-1.53" y1="8.75" x2="-1.01" y2="9.2" layer="51"/>
<rectangle x1="-2.8" y1="8.75" x2="-2.28" y2="9.2" layer="51"/>
<rectangle x1="-4.07" y1="8.75" x2="-3.55" y2="9.2" layer="51"/>
<rectangle x1="-5.34" y1="8.75" x2="-4.82" y2="9.2" layer="51"/>
<rectangle x1="-6.61" y1="8.75" x2="-6.09" y2="9.2" layer="51"/>
<rectangle x1="-9.2" y1="6.09" x2="-8.75" y2="6.61" layer="51"/>
<rectangle x1="-9.2" y1="4.82" x2="-8.75" y2="5.34" layer="51"/>
<rectangle x1="-9.2" y1="3.55" x2="-8.75" y2="4.07" layer="51"/>
<rectangle x1="-9.2" y1="2.28" x2="-8.75" y2="2.8" layer="51"/>
<rectangle x1="-9.2" y1="1.01" x2="-8.75" y2="1.53" layer="51"/>
<rectangle x1="-9.2" y1="-0.26" x2="-8.75" y2="0.26" layer="51"/>
<rectangle x1="-9.2" y1="-1.53" x2="-8.75" y2="-1.01" layer="51"/>
<rectangle x1="-9.2" y1="-2.8" x2="-8.75" y2="-2.28" layer="51"/>
<rectangle x1="-9.2" y1="-4.07" x2="-8.75" y2="-3.55" layer="51"/>
<rectangle x1="-9.2" y1="-5.34" x2="-8.75" y2="-4.82" layer="51"/>
<rectangle x1="-9.2" y1="-6.61" x2="-8.75" y2="-6.09" layer="51"/>
<rectangle x1="-6.61" y1="-9.2" x2="-6.09" y2="-8.75" layer="51"/>
<rectangle x1="-5.34" y1="-9.2" x2="-4.82" y2="-8.75" layer="51"/>
<rectangle x1="-4.07" y1="-9.2" x2="-3.55" y2="-8.75" layer="51"/>
<rectangle x1="-2.8" y1="-9.2" x2="-2.28" y2="-8.75" layer="51"/>
<rectangle x1="-1.53" y1="-9.2" x2="-1.01" y2="-8.75" layer="51"/>
<rectangle x1="-0.26" y1="-9.2" x2="0.26" y2="-8.75" layer="51"/>
<rectangle x1="1.01" y1="-9.2" x2="1.53" y2="-8.75" layer="51"/>
<rectangle x1="2.28" y1="-9.2" x2="2.8" y2="-8.75" layer="51"/>
<rectangle x1="3.55" y1="-9.2" x2="4.07" y2="-8.75" layer="51"/>
<rectangle x1="4.82" y1="-9.2" x2="5.34" y2="-8.75" layer="51"/>
<rectangle x1="6.09" y1="-9.2" x2="6.61" y2="-8.75" layer="51"/>
<rectangle x1="8.75" y1="-6.61" x2="9.2" y2="-6.09" layer="51"/>
<rectangle x1="8.75" y1="-5.34" x2="9.2" y2="-4.82" layer="51"/>
<rectangle x1="8.75" y1="-4.07" x2="9.2" y2="-3.55" layer="51"/>
<rectangle x1="8.75" y1="-2.8" x2="9.2" y2="-2.28" layer="51"/>
<rectangle x1="8.75" y1="-1.53" x2="9.2" y2="-1.01" layer="51"/>
<rectangle x1="8.75" y1="-0.26" x2="9.2" y2="0.26" layer="51"/>
<rectangle x1="8.75" y1="1.01" x2="9.2" y2="1.53" layer="51"/>
<rectangle x1="8.75" y1="2.28" x2="9.2" y2="2.8" layer="51"/>
<rectangle x1="8.75" y1="3.55" x2="9.2" y2="4.07" layer="51"/>
<rectangle x1="8.75" y1="4.82" x2="9.2" y2="5.34" layer="51"/>
<rectangle x1="8.75" y1="6.09" x2="9.2" y2="6.61" layer="51"/>
<rectangle x1="6.09" y1="8.75" x2="6.61" y2="9.2" layer="51"/>
<rectangle x1="4.82" y1="8.75" x2="5.34" y2="9.2" layer="51"/>
<rectangle x1="3.55" y1="8.75" x2="4.07" y2="9.2" layer="51"/>
<rectangle x1="2.28" y1="8.75" x2="2.8" y2="9.2" layer="51"/>
<rectangle x1="1.01" y1="8.75" x2="1.53" y2="9.2" layer="51"/>
<rectangle x1="-1" y1="-1" x2="1" y2="1" layer="35"/>
</package>
<package name="S44">
<description>&lt;b&gt;PLCC SOCKET&lt;/b&gt;</description>
<wire x1="-10.16" y1="11.684" x2="-11.684" y2="10.16" width="0.1524" layer="21"/>
<wire x1="-11.684" y1="10.16" x2="-11.684" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="6.985" x2="-6.985" y2="8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-7.239" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-10.414" x2="-10.414" y2="-9.398" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-9.398" x2="-8.255" y2="-7.239" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-7.239" x2="-8.255" y2="-6.985" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="-8.255" x2="-6.985" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-9.398" x2="-5.461" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="-9.398" x2="-5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="-10.414" x2="-4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-10.414" x2="-4.699" y2="-9.398" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="-8.255" x2="-4.699" y2="-9.398" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="-8.255" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-2.921" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-9.525" x2="-2.921" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="-9.525" x2="-2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-10.414" x2="-2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-10.414" x2="-2.159" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="-8.255" x2="-2.159" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="-8.255" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.381" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-9.525" x2="-0.381" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-9.525" x2="-0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="-10.414" x2="0.381" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-10.414" x2="0.381" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="0.381" y1="-8.255" x2="0.381" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-8.255" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="10.414" y1="9.398" x2="8.255" y2="7.239" width="0.1524" layer="21"/>
<wire x1="10.414" y1="9.398" x2="9.398" y2="10.414" width="0.1524" layer="21"/>
<wire x1="9.398" y1="10.414" x2="7.239" y2="8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="7.239" x2="8.255" y2="6.985" width="0.1524" layer="21"/>
<wire x1="8.255" y1="5.969" x2="8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.461" x2="9.398" y2="5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="5.461" x2="9.398" y2="5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="5.461" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="4.699" x2="10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="4.699" x2="8.255" y2="4.699" width="0.1524" layer="51"/>
<wire x1="8.255" y1="4.699" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="8.255" y1="2.921" x2="9.398" y2="2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="2.921" x2="9.398" y2="2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="2.921" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.159" x2="10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="2.159" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="8.255" y2="0.381" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.381" x2="9.398" y2="0.381" width="0.1524" layer="51"/>
<wire x1="10.414" y1="0.381" x2="9.398" y2="0.381" width="0.1524" layer="21"/>
<wire x1="10.414" y1="0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="10.414" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="8.255" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-0.381" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-6.985" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.461" x2="-9.398" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-5.461" x2="-9.398" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-5.461" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-4.699" x2="-10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-4.699" x2="-8.255" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-4.699" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-2.921" x2="-9.398" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-2.921" x2="-9.398" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-2.921" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-2.159" x2="-10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-2.159" x2="-8.255" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-2.159" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-8.255" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.381" x2="-9.398" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-0.381" x2="-9.398" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="-0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0.381" x2="-10.414" y2="0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="0.381" x2="-8.255" y2="0.381" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="0.381" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="7.239" y1="8.255" x2="6.985" y2="8.255" width="0.1524" layer="21"/>
<wire x1="5.969" y1="8.255" x2="5.461" y2="8.255" width="0.1524" layer="51"/>
<wire x1="5.461" y1="8.255" x2="5.461" y2="9.398" width="0.1524" layer="51"/>
<wire x1="5.461" y1="10.414" x2="5.461" y2="9.398" width="0.1524" layer="21"/>
<wire x1="5.461" y1="10.414" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="9.398" x2="4.699" y2="10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="9.398" x2="4.699" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="8.255" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="2.921" y2="8.255" width="0.1524" layer="51"/>
<wire x1="2.921" y1="8.255" x2="2.921" y2="9.398" width="0.1524" layer="51"/>
<wire x1="2.921" y1="10.414" x2="2.921" y2="9.398" width="0.1524" layer="21"/>
<wire x1="2.921" y1="10.414" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="9.398" x2="2.159" y2="10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="9.398" x2="2.159" y2="8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="8.255" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.381" y2="8.255" width="0.1524" layer="51"/>
<wire x1="0.381" y1="8.255" x2="0.381" y2="9.398" width="0.1524" layer="51"/>
<wire x1="0.381" y1="10.414" x2="0.381" y2="9.398" width="0.1524" layer="21"/>
<wire x1="0.381" y1="10.414" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="9.398" x2="-0.381" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="9.398" x2="-0.381" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="8.255" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.255" x2="-2.159" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="8.255" x2="-2.159" y2="9.398" width="0.1524" layer="51"/>
<wire x1="-2.159" y1="10.414" x2="-2.159" y2="9.398" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="10.414" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="9.398" x2="-2.921" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="9.398" x2="-2.921" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-2.921" y1="8.255" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.699" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="8.255" x2="-4.699" y2="9.398" width="0.1524" layer="51"/>
<wire x1="-4.699" y1="10.414" x2="-4.699" y2="9.398" width="0.1524" layer="21"/>
<wire x1="-4.699" y1="10.414" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="9.398" x2="-5.461" y2="10.414" width="0.1524" layer="21"/>
<wire x1="-5.461" y1="9.398" x2="-5.461" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="8.255" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="2.159" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-9.525" x2="2.159" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="2.159" y1="-9.525" x2="2.159" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.159" y1="-10.414" x2="2.921" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-10.414" x2="2.921" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-8.255" x2="2.921" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="2.921" y1="-8.255" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.699" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-9.525" x2="4.699" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="4.699" y1="-9.525" x2="4.699" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="4.699" y1="-10.414" x2="5.461" y2="-10.414" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-10.414" x2="5.461" y2="-9.525" width="0.1524" layer="21"/>
<wire x1="5.461" y1="-8.255" x2="5.461" y2="-9.525" width="0.1524" layer="51"/>
<wire x1="5.461" y1="-8.255" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-8.255" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.461" x2="-9.398" y2="5.461" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="5.461" x2="-9.398" y2="5.461" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="5.461" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="4.699" x2="-10.414" y2="4.699" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="4.699" x2="-8.255" y2="4.699" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="4.699" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-8.255" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="2.921" x2="-9.398" y2="2.921" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="2.921" x2="-9.398" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.414" y1="2.921" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="2.159" x2="-10.414" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-6.731" y1="-10.414" x2="-6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-8.255" x2="-6.985" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="-10.414" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-5.461" y1="-8.255" x2="-5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="-8.255" x2="-5.969" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-4.191" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="-10.414" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="-8.255" x2="-3.429" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-1.651" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-10.414" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="-8.255" x2="-0.889" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="0.889" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="0.889" y1="-10.414" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.255" x2="1.651" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="8.255" y1="6.731" x2="8.255" y2="6.985" width="0.1524" layer="51"/>
<wire x1="10.414" y1="6.731" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="5.969" x2="10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="4.191" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="3.429" x2="10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="1.651" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="8.255" y1="0.889" x2="10.414" y2="0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="8.255" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-0.889" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-1.651" x2="10.414" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-6.731" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-5.969" x2="-10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-4.191" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-3.429" x2="-10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-8.255" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="-1.651" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="-0.889" x2="-10.414" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-8.255" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="0.889" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="1.651" x2="-10.414" y2="1.651" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="8.255" x2="6.985" y2="8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="10.414" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="8.255" x2="5.969" y2="10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="4.191" y2="8.255" width="0.1524" layer="51"/>
<wire x1="4.191" y1="10.414" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="8.255" x2="3.429" y2="10.414" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="1.651" y2="8.255" width="0.1524" layer="51"/>
<wire x1="1.651" y1="10.414" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="0.889" y1="8.255" x2="0.889" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-0.889" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-0.889" y1="10.414" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.255" x2="-1.651" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-3.429" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-3.429" y1="10.414" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-4.191" y1="8.255" x2="-4.191" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-5.969" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-5.969" y1="10.414" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="-6.731" y1="8.255" x2="-6.731" y2="10.414" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="3.429" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="3.429" y1="-10.414" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="4.191" y1="-8.255" x2="4.191" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="5.969" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="5.969" y1="-10.414" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="7.112" y1="-8.255" x2="6.731" y2="-8.255" width="0.1524" layer="51"/>
<wire x1="6.731" y1="-8.255" x2="6.731" y2="-10.414" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-8.255" y2="6.731" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="6.731" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="5.969" x2="-10.414" y2="5.969" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-8.255" y2="4.191" width="0.1524" layer="51"/>
<wire x1="-10.414" y1="4.191" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="3.429" x2="-10.414" y2="3.429" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-6.731" x2="8.255" y2="-6.731" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-6.731" x2="8.255" y2="-7.112" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-6.731" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="10.414" y2="-5.969" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.969" x2="8.255" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-5.461" x2="9.398" y2="-5.461" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-5.461" x2="9.398" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-5.461" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-4.699" x2="10.414" y2="-4.699" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-4.699" x2="8.255" y2="-4.699" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-4.699" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="8.255" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-2.921" x2="9.398" y2="-2.921" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-2.921" x2="9.398" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.414" y1="-2.921" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-2.159" x2="10.414" y2="-2.159" width="0.1524" layer="21"/>
<wire x1="7.112" y1="-8.255" x2="8.255" y2="-8.255" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-8.255" x2="8.255" y2="-7.112" width="0.1524" layer="21"/>
<wire x1="8.255" y1="-1.651" x2="8.255" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-2.159" x2="9.398" y2="-2.159" width="0.1524" layer="51"/>
<wire x1="-6.985" y1="8.255" x2="-6.731" y2="8.255" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="6.731" x2="-8.255" y2="6.985" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="2.159" x2="-8.255" y2="2.159" width="0.1524" layer="51"/>
<wire x1="-8.255" y1="2.159" x2="-8.255" y2="1.651" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="8.255" y2="-4.191" width="0.1524" layer="51"/>
<wire x1="10.414" y1="-4.191" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="8.255" y1="-3.429" x2="10.414" y2="-3.429" width="0.1524" layer="51"/>
<wire x1="-11.684" y1="-11.049" x2="-11.049" y2="-11.684" width="0.1524" layer="21" curve="90"/>
<wire x1="11.049" y1="-11.684" x2="-11.049" y2="-11.684" width="0.1524" layer="21"/>
<wire x1="11.049" y1="-11.684" x2="11.684" y2="-11.049" width="0.1524" layer="21" curve="90"/>
<wire x1="11.049" y1="11.684" x2="-10.16" y2="11.684" width="0.1524" layer="21"/>
<wire x1="11.684" y1="11.049" x2="11.684" y2="-11.049" width="0.1524" layer="21"/>
<wire x1="11.049" y1="11.684" x2="11.684" y2="11.049" width="0.1524" layer="21" curve="-90"/>
<wire x1="-1.27" y1="3.81" x2="1.27" y2="3.81" width="0.1524" layer="21"/>
<wire x1="1.27" y1="3.81" x2="0" y2="5.08" width="0.1524" layer="21"/>
<wire x1="0" y1="5.08" x2="-1.27" y2="3.81" width="0.1524" layer="21"/>
<circle x="-2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="-2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<circle x="2.54" y="-2.54" radius="1.27" width="0.1524" layer="21"/>
<pad name="1" x="1.27" y="6.35" drill="0.8128"/>
<pad name="2" x="-1.27" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="3" x="-1.27" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="4" x="-3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="5" x="-3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="6" x="-6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="7" x="-8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="8" x="-6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="9" x="-8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="10" x="-6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="11" x="-8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="12" x="-6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="13" x="-8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="14" x="-6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="15" x="-8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="16" x="-6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="17" x="-8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="18" x="-6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="19" x="-6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="20" x="-3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="21" x="-3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="22" x="-1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="23" x="-1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="24" x="1.27" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="25" x="1.27" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="26" x="3.81" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="27" x="3.81" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="28" x="6.35" y="-8.89" drill="0.8128" shape="octagon"/>
<pad name="29" x="8.89" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="30" x="6.35" y="-6.35" drill="0.8128" shape="octagon"/>
<pad name="31" x="8.89" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="32" x="6.35" y="-3.81" drill="0.8128" shape="octagon"/>
<pad name="33" x="8.89" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="34" x="6.35" y="-1.27" drill="0.8128" shape="octagon"/>
<pad name="35" x="8.89" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="36" x="6.35" y="1.27" drill="0.8128" shape="octagon"/>
<pad name="37" x="8.89" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="38" x="6.35" y="3.81" drill="0.8128" shape="octagon"/>
<pad name="39" x="8.89" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="40" x="6.35" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="41" x="6.35" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="42" x="3.81" y="8.89" drill="0.8128" shape="octagon"/>
<pad name="43" x="3.81" y="6.35" drill="0.8128" shape="octagon"/>
<pad name="44" x="1.27" y="8.89" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="11.938" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-10.16" y="11.938" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="8.255" y="-10.795" size="1.27" layer="21" ratio="10">44</text>
<rectangle x1="-0.508" y1="2.159" x2="0.508" y2="4.064" layer="21"/>
<rectangle x1="-0.889" y1="3.81" x2="0.889" y2="4.191" layer="21"/>
<rectangle x1="-0.635" y1="4.191" x2="0.635" y2="4.445" layer="21"/>
<rectangle x1="-0.381" y1="4.445" x2="0.381" y2="4.699" layer="21"/>
<rectangle x1="-0.127" y1="4.699" x2="0.127" y2="4.953" layer="21"/>
<rectangle x1="-1.143" y1="3.81" x2="-0.889" y2="3.937" layer="21"/>
<rectangle x1="-1.016" y1="3.937" x2="-0.889" y2="4.064" layer="21"/>
<rectangle x1="-0.762" y1="4.191" x2="-0.635" y2="4.318" layer="21"/>
<rectangle x1="-0.508" y1="4.445" x2="-0.381" y2="4.572" layer="21"/>
<rectangle x1="-0.254" y1="4.699" x2="-0.127" y2="4.826" layer="21"/>
<rectangle x1="0.127" y1="4.699" x2="0.254" y2="4.826" layer="21"/>
<rectangle x1="0.381" y1="4.445" x2="0.508" y2="4.572" layer="21"/>
<rectangle x1="0.635" y1="4.191" x2="0.762" y2="4.318" layer="21"/>
<rectangle x1="0.889" y1="3.81" x2="1.143" y2="3.937" layer="21"/>
<rectangle x1="0.889" y1="3.937" x2="1.016" y2="4.064" layer="21"/>
</package>
<package name="DIL24-6">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt; 0.6 inch</description>
<wire x1="-15.113" y1="-1.27" x2="-15.113" y2="-6.604" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="1.27" x2="-15.113" y2="-1.27" width="0.1524" layer="21" curve="-180"/>
<wire x1="15.113" y1="-6.604" x2="15.113" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="6.604" x2="-15.113" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="6.604" x2="15.113" y2="6.604" width="0.1524" layer="21"/>
<wire x1="-15.113" y1="-6.604" x2="15.113" y2="-6.604" width="0.1524" layer="21"/>
<pad name="1" x="-13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="-3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="-1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="1.27" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="3.81" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="6.35" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="8.89" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="11.43" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="13.97" y="-7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="17" x="3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="18" x="1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="19" x="-1.27" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="20" x="-3.81" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="21" x="-6.35" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="22" x="-8.89" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="23" x="-11.43" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<pad name="24" x="-13.97" y="7.62" drill="0.8128" shape="long" rot="R90"/>
<text x="-15.621" y="-6.35" size="1.778" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-12.065" y="-0.889" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="8051">
<wire x1="15.24" y1="35.56" x2="15.24" y2="-38.1" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-38.1" x2="15.24" y2="-38.1" width="0.4064" layer="94"/>
<wire x1="-15.24" y1="-38.1" x2="-15.24" y2="35.56" width="0.4064" layer="94"/>
<wire x1="15.24" y1="35.56" x2="-15.24" y2="35.56" width="0.4064" layer="94"/>
<text x="-15.24" y="36.195" size="1.778" layer="95">&gt;NAME</text>
<text x="-15.24" y="-40.64" size="1.778" layer="96">&gt;VALUE</text>
<pin name="XTAL2" x="-20.32" y="22.86" length="middle" direction="in"/>
<pin name="XTAL1" x="-20.32" y="33.02" length="middle" direction="in"/>
<pin name="EA" x="-20.32" y="10.16" length="middle" direction="in"/>
<pin name="P27-A15" x="20.32" y="30.48" length="middle" rot="R180"/>
<pin name="P26-A14" x="20.32" y="27.94" length="middle" rot="R180"/>
<pin name="P25-A13" x="20.32" y="25.4" length="middle" rot="R180"/>
<pin name="P24-A12" x="20.32" y="22.86" length="middle" rot="R180"/>
<pin name="P23-A11" x="20.32" y="20.32" length="middle" rot="R180"/>
<pin name="P22-A10" x="20.32" y="17.78" length="middle" rot="R180"/>
<pin name="P21-A9" x="20.32" y="15.24" length="middle" rot="R180"/>
<pin name="P20-A8" x="20.32" y="12.7" length="middle" rot="R180"/>
<pin name="P07-AD7" x="20.32" y="5.08" length="middle" rot="R180"/>
<pin name="P06-AD6" x="20.32" y="2.54" length="middle" rot="R180"/>
<pin name="P05-AD5" x="20.32" y="0" length="middle" rot="R180"/>
<pin name="P04-AD4" x="20.32" y="-2.54" length="middle" rot="R180"/>
<pin name="P03-AD3" x="20.32" y="-5.08" length="middle" rot="R180"/>
<pin name="P02-AD2" x="20.32" y="-7.62" length="middle" rot="R180"/>
<pin name="P01-AD1" x="20.32" y="-10.16" length="middle" rot="R180"/>
<pin name="P00-AD0" x="20.32" y="-12.7" length="middle" rot="R180"/>
<pin name="ALE" x="20.32" y="-20.32" length="middle" direction="out" rot="R180"/>
<pin name="PSEN" x="20.32" y="-25.4" length="middle" direction="out" rot="R180"/>
<pin name="P37-RD" x="20.32" y="-30.48" length="middle" rot="R180"/>
<pin name="P36-WR" x="20.32" y="-35.56" length="middle" rot="R180"/>
<pin name="VCC" x="-20.32" y="17.78" length="middle" direction="pwr"/>
<pin name="GND" x="-20.32" y="15.24" length="middle" direction="pwr"/>
<pin name="P11-T2EX" x="-20.32" y="0" length="middle"/>
<pin name="RST" x="-20.32" y="7.62" length="middle" direction="in"/>
<pin name="P13" x="-20.32" y="-5.08" length="middle"/>
<pin name="P14" x="-20.32" y="-7.62" length="middle"/>
<pin name="P15" x="-20.32" y="-10.16" length="middle"/>
<pin name="P16" x="-20.32" y="-12.7" length="middle"/>
<pin name="P17" x="-20.32" y="-15.24" length="middle"/>
<pin name="P30-RXD" x="-20.32" y="-22.86" length="middle"/>
<pin name="P31-TXD" x="-20.32" y="-25.4" length="middle"/>
<pin name="P32-INT0" x="-20.32" y="-27.94" length="middle"/>
<pin name="P33-INT1" x="-20.32" y="-30.48" length="middle"/>
<pin name="P34-T0" x="-20.32" y="-33.02" length="middle"/>
<pin name="P35-T1" x="-20.32" y="-35.56" length="middle"/>
<pin name="P12" x="-20.32" y="-2.54" length="middle"/>
<pin name="P10-T2" x="-20.32" y="2.54" length="middle"/>
</symbol>
<symbol name="8253">
<wire x1="-10.16" y1="-20.32" x2="7.62" y2="-20.32" width="0.4064" layer="94"/>
<wire x1="7.62" y1="-20.32" x2="7.62" y2="20.32" width="0.4064" layer="94"/>
<wire x1="7.62" y1="20.32" x2="-10.16" y2="20.32" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.4064" layer="94"/>
<text x="-10.16" y="20.955" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="D7" x="-15.24" y="0" length="middle"/>
<pin name="D6" x="-15.24" y="2.54" length="middle"/>
<pin name="D5" x="-15.24" y="5.08" length="middle"/>
<pin name="D4" x="-15.24" y="7.62" length="middle"/>
<pin name="D3" x="-15.24" y="10.16" length="middle"/>
<pin name="D2" x="-15.24" y="12.7" length="middle"/>
<pin name="D1" x="-15.24" y="15.24" length="middle"/>
<pin name="D0" x="-15.24" y="17.78" length="middle"/>
<pin name="CLK0" x="12.7" y="17.78" length="middle" direction="in" function="clk" rot="R180"/>
<pin name="OUT0" x="12.7" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="GATE0" x="12.7" y="15.24" length="middle" direction="in" rot="R180"/>
<pin name="OUT1" x="12.7" y="0" length="middle" direction="out" rot="R180"/>
<pin name="GATE1" x="12.7" y="2.54" length="middle" direction="in" rot="R180"/>
<pin name="CLK1" x="12.7" y="5.08" length="middle" direction="in" function="clk" rot="R180"/>
<pin name="GATE2" x="12.7" y="-10.16" length="middle" direction="in" rot="R180"/>
<pin name="OUT2" x="12.7" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="CLK2" x="12.7" y="-7.62" length="middle" direction="in" function="clk" rot="R180"/>
<pin name="A0" x="-15.24" y="-10.16" length="middle" direction="in"/>
<pin name="A1" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="CS" x="-15.24" y="-17.78" length="middle" direction="in" function="dot"/>
<pin name="RD" x="-15.24" y="-5.08" length="middle" direction="in" function="dot"/>
<pin name="WR" x="-15.24" y="-7.62" length="middle" direction="in" function="dot"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="82C55A">
<wire x1="10.16" y1="-35.56" x2="-10.16" y2="-35.56" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="33.02" x2="-10.16" y2="-35.56" width="0.4064" layer="94"/>
<wire x1="-10.16" y1="33.02" x2="10.16" y2="33.02" width="0.4064" layer="94"/>
<wire x1="10.16" y1="-35.56" x2="10.16" y2="33.02" width="0.4064" layer="94"/>
<text x="-10.16" y="33.655" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-38.1" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PA0" x="15.24" y="30.48" length="middle" rot="R180"/>
<pin name="PA1" x="15.24" y="27.94" length="middle" rot="R180"/>
<pin name="PA2" x="15.24" y="25.4" length="middle" rot="R180"/>
<pin name="PA3" x="15.24" y="22.86" length="middle" rot="R180"/>
<pin name="PA4" x="15.24" y="20.32" length="middle" rot="R180"/>
<pin name="PA5" x="15.24" y="17.78" length="middle" rot="R180"/>
<pin name="PA6" x="15.24" y="15.24" length="middle" rot="R180"/>
<pin name="PA7" x="15.24" y="12.7" length="middle" rot="R180"/>
<pin name="PB0" x="15.24" y="7.62" length="middle" rot="R180"/>
<pin name="PB1" x="15.24" y="5.08" length="middle" rot="R180"/>
<pin name="PB2" x="15.24" y="2.54" length="middle" rot="R180"/>
<pin name="PB3" x="15.24" y="0" length="middle" rot="R180"/>
<pin name="PB4" x="15.24" y="-2.54" length="middle" rot="R180"/>
<pin name="PB5" x="15.24" y="-5.08" length="middle" rot="R180"/>
<pin name="PB6" x="15.24" y="-7.62" length="middle" rot="R180"/>
<pin name="PB7" x="15.24" y="-10.16" length="middle" rot="R180"/>
<pin name="PC0" x="15.24" y="-15.24" length="middle" rot="R180"/>
<pin name="PC1" x="15.24" y="-17.78" length="middle" rot="R180"/>
<pin name="PC2" x="15.24" y="-20.32" length="middle" rot="R180"/>
<pin name="PC3" x="15.24" y="-22.86" length="middle" rot="R180"/>
<pin name="PC4" x="15.24" y="-25.4" length="middle" rot="R180"/>
<pin name="PC5" x="15.24" y="-27.94" length="middle" rot="R180"/>
<pin name="PC6" x="15.24" y="-30.48" length="middle" rot="R180"/>
<pin name="PC7" x="15.24" y="-33.02" length="middle" rot="R180"/>
<pin name="D0" x="-15.24" y="10.16" length="middle"/>
<pin name="D1" x="-15.24" y="7.62" length="middle"/>
<pin name="D2" x="-15.24" y="5.08" length="middle"/>
<pin name="D3" x="-15.24" y="2.54" length="middle"/>
<pin name="D4" x="-15.24" y="0" length="middle"/>
<pin name="D5" x="-15.24" y="-2.54" length="middle"/>
<pin name="D6" x="-15.24" y="-5.08" length="middle"/>
<pin name="D7" x="-15.24" y="-7.62" length="middle"/>
<pin name="RESET" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="WR" x="-15.24" y="20.32" length="middle" direction="in" function="dot"/>
<pin name="CS" x="-15.24" y="25.4" length="middle" direction="in" function="dot"/>
<pin name="A0" x="-15.24" y="27.94" length="middle" direction="in"/>
<pin name="A1" x="-15.24" y="30.48" length="middle" direction="in"/>
<pin name="RD" x="-15.24" y="22.86" length="middle" direction="in" function="dot"/>
<pin name="VCC" x="-15.24" y="-25.4" length="middle" direction="pwr"/>
<pin name="GND" x="-15.24" y="-30.48" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="8051" prefix="IC">
<description>&lt;b&gt;(CHMOS) SINGLE-CHIP 8-BIT MICROCONTROLLER&lt;/b&gt;&lt;p&gt;
80C31BH / 80C51 BH / 87C51 MCS 51&lt;br&gt;
Source: http://apps.intel.com .. 27041907.pdf</description>
<gates>
<gate name="G$1" symbol="8051" x="0" y="0"/>
</gates>
<devices>
<device name="P" package="DIL40">
<connects>
<connect gate="G$1" pin="ALE" pad="30"/>
<connect gate="G$1" pin="EA" pad="31"/>
<connect gate="G$1" pin="GND" pad="20"/>
<connect gate="G$1" pin="P00-AD0" pad="39"/>
<connect gate="G$1" pin="P01-AD1" pad="38"/>
<connect gate="G$1" pin="P02-AD2" pad="37"/>
<connect gate="G$1" pin="P03-AD3" pad="36"/>
<connect gate="G$1" pin="P04-AD4" pad="35"/>
<connect gate="G$1" pin="P05-AD5" pad="34"/>
<connect gate="G$1" pin="P06-AD6" pad="33"/>
<connect gate="G$1" pin="P07-AD7" pad="32"/>
<connect gate="G$1" pin="P10-T2" pad="1"/>
<connect gate="G$1" pin="P11-T2EX" pad="2"/>
<connect gate="G$1" pin="P12" pad="3"/>
<connect gate="G$1" pin="P13" pad="4"/>
<connect gate="G$1" pin="P14" pad="5"/>
<connect gate="G$1" pin="P15" pad="6"/>
<connect gate="G$1" pin="P16" pad="7"/>
<connect gate="G$1" pin="P17" pad="8"/>
<connect gate="G$1" pin="P20-A8" pad="21"/>
<connect gate="G$1" pin="P21-A9" pad="22"/>
<connect gate="G$1" pin="P22-A10" pad="23"/>
<connect gate="G$1" pin="P23-A11" pad="24"/>
<connect gate="G$1" pin="P24-A12" pad="25"/>
<connect gate="G$1" pin="P25-A13" pad="26"/>
<connect gate="G$1" pin="P26-A14" pad="27"/>
<connect gate="G$1" pin="P27-A15" pad="28"/>
<connect gate="G$1" pin="P30-RXD" pad="10"/>
<connect gate="G$1" pin="P31-TXD" pad="11"/>
<connect gate="G$1" pin="P32-INT0" pad="12"/>
<connect gate="G$1" pin="P33-INT1" pad="13"/>
<connect gate="G$1" pin="P34-T0" pad="14"/>
<connect gate="G$1" pin="P35-T1" pad="15"/>
<connect gate="G$1" pin="P36-WR" pad="16"/>
<connect gate="G$1" pin="P37-RD" pad="17"/>
<connect gate="G$1" pin="PSEN" pad="29"/>
<connect gate="G$1" pin="RST" pad="9"/>
<connect gate="G$1" pin="VCC" pad="40"/>
<connect gate="G$1" pin="XTAL1" pad="19"/>
<connect gate="G$1" pin="XTAL2" pad="18"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="N" package="PLCC44">
<connects>
<connect gate="G$1" pin="ALE" pad="33"/>
<connect gate="G$1" pin="EA" pad="35"/>
<connect gate="G$1" pin="GND" pad="22"/>
<connect gate="G$1" pin="P00-AD0" pad="43"/>
<connect gate="G$1" pin="P01-AD1" pad="42"/>
<connect gate="G$1" pin="P02-AD2" pad="41"/>
<connect gate="G$1" pin="P03-AD3" pad="40"/>
<connect gate="G$1" pin="P04-AD4" pad="39"/>
<connect gate="G$1" pin="P05-AD5" pad="38"/>
<connect gate="G$1" pin="P06-AD6" pad="37"/>
<connect gate="G$1" pin="P07-AD7" pad="36"/>
<connect gate="G$1" pin="P10-T2" pad="2"/>
<connect gate="G$1" pin="P11-T2EX" pad="3"/>
<connect gate="G$1" pin="P12" pad="4"/>
<connect gate="G$1" pin="P13" pad="5"/>
<connect gate="G$1" pin="P14" pad="6"/>
<connect gate="G$1" pin="P15" pad="7"/>
<connect gate="G$1" pin="P16" pad="8"/>
<connect gate="G$1" pin="P17" pad="9"/>
<connect gate="G$1" pin="P20-A8" pad="24"/>
<connect gate="G$1" pin="P21-A9" pad="25"/>
<connect gate="G$1" pin="P22-A10" pad="26"/>
<connect gate="G$1" pin="P23-A11" pad="27"/>
<connect gate="G$1" pin="P24-A12" pad="28"/>
<connect gate="G$1" pin="P25-A13" pad="29"/>
<connect gate="G$1" pin="P26-A14" pad="30"/>
<connect gate="G$1" pin="P27-A15" pad="31"/>
<connect gate="G$1" pin="P30-RXD" pad="11"/>
<connect gate="G$1" pin="P31-TXD" pad="13"/>
<connect gate="G$1" pin="P32-INT0" pad="14"/>
<connect gate="G$1" pin="P33-INT1" pad="15"/>
<connect gate="G$1" pin="P34-T0" pad="16"/>
<connect gate="G$1" pin="P35-T1" pad="17"/>
<connect gate="G$1" pin="P36-WR" pad="18"/>
<connect gate="G$1" pin="P37-RD" pad="19"/>
<connect gate="G$1" pin="PSEN" pad="32"/>
<connect gate="G$1" pin="RST" pad="10"/>
<connect gate="G$1" pin="VCC" pad="44"/>
<connect gate="G$1" pin="XTAL1" pad="21"/>
<connect gate="G$1" pin="XTAL2" pad="20"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
<device name="N-SOCK" package="S44">
<connects>
<connect gate="G$1" pin="ALE" pad="33"/>
<connect gate="G$1" pin="EA" pad="35"/>
<connect gate="G$1" pin="GND" pad="22"/>
<connect gate="G$1" pin="P00-AD0" pad="43"/>
<connect gate="G$1" pin="P01-AD1" pad="42"/>
<connect gate="G$1" pin="P02-AD2" pad="41"/>
<connect gate="G$1" pin="P03-AD3" pad="40"/>
<connect gate="G$1" pin="P04-AD4" pad="39"/>
<connect gate="G$1" pin="P05-AD5" pad="38"/>
<connect gate="G$1" pin="P06-AD6" pad="37"/>
<connect gate="G$1" pin="P07-AD7" pad="36"/>
<connect gate="G$1" pin="P10-T2" pad="2"/>
<connect gate="G$1" pin="P11-T2EX" pad="3"/>
<connect gate="G$1" pin="P12" pad="4"/>
<connect gate="G$1" pin="P13" pad="5"/>
<connect gate="G$1" pin="P14" pad="6"/>
<connect gate="G$1" pin="P15" pad="7"/>
<connect gate="G$1" pin="P16" pad="8"/>
<connect gate="G$1" pin="P17" pad="9"/>
<connect gate="G$1" pin="P20-A8" pad="24"/>
<connect gate="G$1" pin="P21-A9" pad="25"/>
<connect gate="G$1" pin="P22-A10" pad="26"/>
<connect gate="G$1" pin="P23-A11" pad="27"/>
<connect gate="G$1" pin="P24-A12" pad="28"/>
<connect gate="G$1" pin="P25-A13" pad="29"/>
<connect gate="G$1" pin="P26-A14" pad="30"/>
<connect gate="G$1" pin="P27-A15" pad="31"/>
<connect gate="G$1" pin="P30-RXD" pad="11"/>
<connect gate="G$1" pin="P31-TXD" pad="13"/>
<connect gate="G$1" pin="P32-INT0" pad="14"/>
<connect gate="G$1" pin="P33-INT1" pad="15"/>
<connect gate="G$1" pin="P34-T0" pad="16"/>
<connect gate="G$1" pin="P35-T1" pad="17"/>
<connect gate="G$1" pin="P36-WR" pad="18"/>
<connect gate="G$1" pin="P37-RD" pad="19"/>
<connect gate="G$1" pin="PSEN" pad="32"/>
<connect gate="G$1" pin="RST" pad="10"/>
<connect gate="G$1" pin="VCC" pad="44"/>
<connect gate="G$1" pin="XTAL1" pad="21"/>
<connect gate="G$1" pin="XTAL2" pad="20"/>
</connects>
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
<deviceset name="8253" prefix="IC" uservalue="yes">
<description>&lt;b&gt;MICROCOMPUTER/PERIPHERAL DEVICE&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="8253" x="0" y="0"/>
<gate name="P" symbol="PWRN" x="-33.02" y="0" addlevel="request"/>
</gates>
<devices>
<device name="" package="DIL24-6">
<connects>
<connect gate="A" pin="A0" pad="19"/>
<connect gate="A" pin="A1" pad="20"/>
<connect gate="A" pin="CLK0" pad="9"/>
<connect gate="A" pin="CLK1" pad="15"/>
<connect gate="A" pin="CLK2" pad="18"/>
<connect gate="A" pin="CS" pad="21"/>
<connect gate="A" pin="D0" pad="8"/>
<connect gate="A" pin="D1" pad="7"/>
<connect gate="A" pin="D2" pad="6"/>
<connect gate="A" pin="D3" pad="5"/>
<connect gate="A" pin="D4" pad="4"/>
<connect gate="A" pin="D5" pad="3"/>
<connect gate="A" pin="D6" pad="2"/>
<connect gate="A" pin="D7" pad="1"/>
<connect gate="A" pin="GATE0" pad="11"/>
<connect gate="A" pin="GATE1" pad="14"/>
<connect gate="A" pin="GATE2" pad="16"/>
<connect gate="A" pin="OUT0" pad="10"/>
<connect gate="A" pin="OUT1" pad="13"/>
<connect gate="A" pin="OUT2" pad="17"/>
<connect gate="A" pin="RD" pad="22"/>
<connect gate="A" pin="WR" pad="23"/>
<connect gate="P" pin="GND" pad="12"/>
<connect gate="P" pin="VCC" pad="24"/>
</connects>
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
<deviceset name="82C55A" prefix="IC" uservalue="yes">
<description>&lt;b&gt;MICROCOMPUTER/PERIPHERAL DEVICE&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="82C55A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL40">
<connects>
<connect gate="1" pin="A0" pad="9"/>
<connect gate="1" pin="A1" pad="8"/>
<connect gate="1" pin="CS" pad="6"/>
<connect gate="1" pin="D0" pad="34"/>
<connect gate="1" pin="D1" pad="33"/>
<connect gate="1" pin="D2" pad="32"/>
<connect gate="1" pin="D3" pad="31"/>
<connect gate="1" pin="D4" pad="30"/>
<connect gate="1" pin="D5" pad="29"/>
<connect gate="1" pin="D6" pad="28"/>
<connect gate="1" pin="D7" pad="27"/>
<connect gate="1" pin="GND" pad="7"/>
<connect gate="1" pin="PA0" pad="4"/>
<connect gate="1" pin="PA1" pad="3"/>
<connect gate="1" pin="PA2" pad="2"/>
<connect gate="1" pin="PA3" pad="1"/>
<connect gate="1" pin="PA4" pad="40"/>
<connect gate="1" pin="PA5" pad="39"/>
<connect gate="1" pin="PA6" pad="38"/>
<connect gate="1" pin="PA7" pad="37"/>
<connect gate="1" pin="PB0" pad="18"/>
<connect gate="1" pin="PB1" pad="19"/>
<connect gate="1" pin="PB2" pad="20"/>
<connect gate="1" pin="PB3" pad="21"/>
<connect gate="1" pin="PB4" pad="22"/>
<connect gate="1" pin="PB5" pad="23"/>
<connect gate="1" pin="PB6" pad="24"/>
<connect gate="1" pin="PB7" pad="25"/>
<connect gate="1" pin="PC0" pad="14"/>
<connect gate="1" pin="PC1" pad="15"/>
<connect gate="1" pin="PC2" pad="16"/>
<connect gate="1" pin="PC3" pad="17"/>
<connect gate="1" pin="PC4" pad="13"/>
<connect gate="1" pin="PC5" pad="12"/>
<connect gate="1" pin="PC6" pad="11"/>
<connect gate="1" pin="PC7" pad="10"/>
<connect gate="1" pin="RD" pad="5"/>
<connect gate="1" pin="RESET" pad="35"/>
<connect gate="1" pin="VCC" pad="26"/>
<connect gate="1" pin="WR" pad="36"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="INTERSIL" constant="no"/>
<attribute name="MPN" value="IP82C55AZ" constant="no"/>
<attribute name="OC_FARNELL" value="1562050" constant="no"/>
<attribute name="OC_NEWARK" value="79K6939" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="CAPACITOR">
<wire x1="0" y1="-5.08" x2="0" y2="-2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="-0.508" x2="0" y2="2.54" width="0.1524" layer="94"/>
<rectangle x1="-2.032" y1="-2.032" x2="2.032" y2="-1.524" layer="94"/>
<rectangle x1="-2.032" y1="-1.016" x2="2.032" y2="-0.508" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="C" prefix="C">
<description>&lt;b&gt;CAPACITOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="CAPACITOR" x="0" y="0"/>
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
<library name="40xx">
<description>&lt;b&gt;CMOS Logic Devices, 4000 Series&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola &lt;i&gt;CMOS LOGIC DATA&lt;/i&gt;; book, 02/88, DL131 REV 1
&lt;li&gt;http://www.elexp.com
&lt;li&gt;http://www.intersil.com
&lt;li&gt;http://www.ls3c.com.tw/product/1/COMOS.html
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="SO14">
<description>&lt;b&gt;Small Outline package&lt;/b&gt; 150 mil</description>
<wire x1="4.064" y1="1.9558" x2="-4.064" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="4.064" y1="-1.9558" x2="4.445" y2="-1.5748" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.445" y1="1.5748" x2="-4.064" y2="1.9558" width="0.1524" layer="21" curve="-90"/>
<wire x1="4.064" y1="1.9558" x2="4.445" y2="1.5748" width="0.1524" layer="21" curve="-90"/>
<wire x1="-4.445" y1="-1.5748" x2="-4.064" y2="-1.9558" width="0.1524" layer="21" curve="90"/>
<wire x1="-4.064" y1="-1.9558" x2="4.064" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.5748" x2="4.445" y2="1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.5748" x2="-4.445" y2="0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-0.508" x2="-4.445" y2="-1.5748" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="0.508" x2="-4.445" y2="-0.508" width="0.1524" layer="21" curve="-180"/>
<wire x1="-4.445" y1="-1.6002" x2="4.445" y2="-1.6002" width="0.1524" layer="21"/>
<smd name="1" x="-3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="14" x="-3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="2" x="-2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="3" x="-1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="13" x="-2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="12" x="-1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="4" x="0" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="11" x="0" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="5" x="1.27" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="6" x="2.54" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="10" x="1.27" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="9" x="2.54" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="7" x="3.81" y="-3.0734" dx="0.6604" dy="2.032" layer="1"/>
<smd name="8" x="3.81" y="3.0734" dx="0.6604" dy="2.032" layer="1"/>
<text x="-3.556" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-4.699" y="-1.778" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<rectangle x1="-0.254" y1="1.9558" x2="0.254" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="-3.0988" x2="-3.556" y2="-1.9558" layer="51"/>
<rectangle x1="-2.794" y1="-3.0988" x2="-2.286" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="-3.0734" x2="-1.016" y2="-1.9304" layer="51"/>
<rectangle x1="-0.254" y1="-3.0988" x2="0.254" y2="-1.9558" layer="51"/>
<rectangle x1="-1.524" y1="1.9558" x2="-1.016" y2="3.0988" layer="51"/>
<rectangle x1="-2.794" y1="1.9558" x2="-2.286" y2="3.0988" layer="51"/>
<rectangle x1="-4.064" y1="1.9558" x2="-3.556" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="1.9558" x2="1.524" y2="3.0988" layer="51"/>
<rectangle x1="2.286" y1="1.9558" x2="2.794" y2="3.0988" layer="51"/>
<rectangle x1="3.556" y1="1.9558" x2="4.064" y2="3.0988" layer="51"/>
<rectangle x1="1.016" y1="-3.0988" x2="1.524" y2="-1.9558" layer="51"/>
<rectangle x1="2.286" y1="-3.0988" x2="2.794" y2="-1.9558" layer="51"/>
<rectangle x1="3.556" y1="-3.0988" x2="4.064" y2="-1.9558" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="PWRN">
<text x="-1.27" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VDD</text>
<text x="1.905" y="-5.842" size="1.27" layer="95" rot="R90">VSS</text>
<pin name="VSS" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VDD" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
<symbol name="4068">
<wire x1="-2.54" y1="-12.7" x2="-2.54" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="12.7" x2="2.54" y2="7.62" width="0.4064" layer="94" curve="-90"/>
<wire x1="-2.54" y1="-12.7" x2="2.54" y2="-7.62" width="0.4064" layer="94" curve="90"/>
<wire x1="2.54" y1="7.62" x2="2.54" y2="-7.62" width="0.4064" layer="94"/>
<text x="5.08" y="5.08" size="1.778" layer="95">&gt;NAME</text>
<text x="5.08" y="-6.985" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I0" x="-7.62" y="10.16" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I1" x="-7.62" y="7.62" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I2" x="-7.62" y="5.08" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I3" x="-7.62" y="2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I4" x="-7.62" y="-2.54" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I5" x="-7.62" y="-5.08" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I6" x="-7.62" y="-7.62" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="I7" x="-7.62" y="-10.16" visible="pad" length="middle" direction="in" swaplevel="1"/>
<pin name="J" x="7.62" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="4068" prefix="IC">
<description>8-input &lt;b&gt;NAND&lt;/b&gt;</description>
<gates>
<gate name="P" symbol="PWRN" x="-5.08" y="0" addlevel="request"/>
<gate name="A" symbol="4068" x="12.7" y="0"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I0" pad="2"/>
<connect gate="A" pin="I1" pad="3"/>
<connect gate="A" pin="I2" pad="4"/>
<connect gate="A" pin="I3" pad="5"/>
<connect gate="A" pin="I4" pad="9"/>
<connect gate="A" pin="I5" pad="10"/>
<connect gate="A" pin="I6" pad="11"/>
<connect gate="A" pin="I7" pad="12"/>
<connect gate="A" pin="J" pad="13"/>
<connect gate="P" pin="VDD" pad="14"/>
<connect gate="P" pin="VSS" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="D" package="SO14">
<connects>
<connect gate="A" pin="I0" pad="2"/>
<connect gate="A" pin="I1" pad="3"/>
<connect gate="A" pin="I2" pad="4"/>
<connect gate="A" pin="I3" pad="5"/>
<connect gate="A" pin="I4" pad="9"/>
<connect gate="A" pin="I5" pad="10"/>
<connect gate="A" pin="I6" pad="11"/>
<connect gate="A" pin="I7" pad="12"/>
<connect gate="A" pin="J" pad="13"/>
<connect gate="P" pin="VDD" pad="14"/>
<connect gate="P" pin="VSS" pad="7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="74xx-little-de">
<description>&lt;b&gt;Single and Dual Gates Family, US symbols&lt;/b&gt;&lt;p&gt;
Little logic devices from Texas Instruments&lt;br&gt;
TinyLogic(R) from FAIRCHILD Semiconductor TM
&lt;p&gt;
&lt;author&gt;Created by evgeni@eniks.com&lt;/author&gt;&lt;br&gt;
&lt;author&gt;Extended by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="SOT23-5">
<description>&lt;b&gt;Small Outline Transistor&lt;/b&gt;&lt;p&gt;
SOT753 - Philips Semiconductors&lt;br&gt;
Source: http://www.semiconductors.philips.com/acrobat_download/datasheets/74HC_HCT1G66_3.pdf</description>
<wire x1="0" y1="-1.29" x2="0" y2="-1.3" width="0.01" layer="21"/>
<wire x1="1.42" y1="0.8" x2="1.42" y2="-0.8" width="0.127" layer="21"/>
<wire x1="1.42" y1="-0.8" x2="-1.42" y2="-0.8" width="0.127" layer="51"/>
<wire x1="-1.42" y1="-0.8" x2="-1.42" y2="0.8" width="0.127" layer="21"/>
<wire x1="-1.42" y1="0.8" x2="1.42" y2="0.8" width="0.127" layer="51"/>
<wire x1="-1.27" y1="0.65" x2="1.28" y2="0.65" width="0.075" layer="21"/>
<wire x1="1.28" y1="0.65" x2="1.28" y2="-0.66" width="0.075" layer="21"/>
<wire x1="1.28" y1="-0.66" x2="-1.27" y2="-0.66" width="0.075" layer="21"/>
<wire x1="-1.27" y1="-0.66" x2="-1.27" y2="0.65" width="0.075" layer="21"/>
<wire x1="-1.75" y1="2.25" x2="1.75" y2="2.25" width="0.254" layer="39"/>
<wire x1="1.75" y1="2.25" x2="1.75" y2="-2.25" width="0.254" layer="39"/>
<wire x1="1.75" y1="-2.25" x2="-1.75" y2="-2.25" width="0.254" layer="39"/>
<wire x1="-1.75" y1="-2.25" x2="-1.75" y2="2.25" width="0.254" layer="39"/>
<smd name="1" x="-0.95" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="2" x="0" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="3" x="0.95" y="-1.29" dx="0.69" dy="0.99" layer="1"/>
<smd name="4" x="0.95" y="1.3" dx="0.69" dy="0.99" layer="1"/>
<smd name="5" x="-0.95" y="1.3" dx="0.69" dy="0.99" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-1.11" y1="0.68" x2="-0.78" y2="1.43" layer="51"/>
<rectangle x1="0.79" y1="0.67" x2="1.12" y2="1.42" layer="51"/>
<rectangle x1="-1.11" y1="-1.42" x2="-0.78" y2="-0.67" layer="51"/>
<rectangle x1="-0.16" y1="-1.42" x2="0.17" y2="-0.67" layer="51"/>
<rectangle x1="0.79" y1="-1.42" x2="1.12" y2="-0.67" layer="51"/>
</package>
<package name="SC70-5">
<description>&lt;b&gt;SMT SC70-5&lt;/b&gt;&lt;p&gt;
SOT353 - Philips Semiconductors&lt;br&gt;
Source: http://www.semiconductors.philips.com/acrobat_download/datasheets/74HC_HCT1G66_3.pdf</description>
<wire x1="1" y1="0.55" x2="-1" y2="0.55" width="0.127" layer="51"/>
<wire x1="-1" y1="0.55" x2="-1" y2="-0.55" width="0.127" layer="21"/>
<wire x1="-1" y1="-0.55" x2="1" y2="-0.55" width="0.127" layer="51"/>
<wire x1="1" y1="-0.55" x2="1" y2="0.55" width="0.127" layer="21"/>
<smd name="1" x="-0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="2" x="0" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="3" x="0.65" y="-0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="4" x="0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<smd name="5" x="-0.65" y="0.85" dx="0.4" dy="0.7" layer="1"/>
<text x="-2.54" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.125" y1="-1.05" x2="0.125" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="-1.05" x2="-0.525" y2="-0.6" layer="51"/>
<rectangle x1="0.525" y1="-1.05" x2="0.775" y2="-0.6" layer="51"/>
<rectangle x1="-0.775" y1="0.6" x2="-0.525" y2="1.05" layer="51"/>
<rectangle x1="0.525" y1="0.6" x2="0.775" y2="1.05" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="7404">
<wire x1="-2.54" y1="5.08" x2="5.08" y2="0" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-2.54" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="-5.08" x2="-2.54" y2="5.08" width="0.4064" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="I" x="-5.08" y="0" visible="pad" length="short" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="out" function="dot" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-6.35" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="2.54" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-7.62" visible="pad" length="middle" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="7.62" visible="pad" length="middle" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*1G04" prefix="IC">
<description>&lt;b&gt;INVERTER&lt;/b&gt; Gate</description>
<gates>
<gate name="A" symbol="7404" x="17.78" y="0"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-10.16" addlevel="request"/>
</gates>
<devices>
<device name="DBV" package="SOT23-5">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name="AHC"/>
<technology name="AHCT"/>
<technology name="AUC"/>
<technology name="LVC"/>
</technologies>
</device>
<device name="DCK" package="SC70-5">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="4"/>
<connect gate="P" pin="GND" pad="3"/>
<connect gate="P" pin="VCC" pad="5"/>
</connects>
<technologies>
<technology name="AHC"/>
<technology name="AHCT"/>
<technology name="AUC"/>
<technology name="LVC"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1">
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
<symbol name="GND">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
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
<library name="AD558">
<description>Voltage-output 8-bit digital-to-analog converter

The AD558 DACPORT is a complete voltage-output 8-bit digital-to-analog converter, including output amplifier, full microprocessor interface and precision voltage reference on a single monolithic chip. No external components or trims are required to interface, with full accuracy, an 8-bit data bus to an analog system.</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="AD558">
<wire x1="-10.16" y1="20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="20.32" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="DB0" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="DB1" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="DB2" x="-15.24" y="7.62" length="middle" direction="in"/>
<pin name="DB3" x="-15.24" y="2.54" length="middle" direction="in"/>
<pin name="DB4" x="-15.24" y="-2.54" length="middle" direction="in"/>
<pin name="DB5" x="-15.24" y="-7.62" length="middle" direction="in"/>
<pin name="DB6" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="DB7" x="-15.24" y="-17.78" length="middle" direction="in"/>
<pin name="VOUT" x="15.24" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="SENSE" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="SLCT" x="15.24" y="2.54" length="middle" direction="out" rot="R180"/>
<pin name="CE" x="15.24" y="-12.7" length="middle" direction="in" function="dot" rot="R180"/>
<pin name="CS" x="15.24" y="-7.62" length="middle" direction="in" function="dot" rot="R180"/>
</symbol>
<symbol name="PWR">
<text x="-2.54" y="0" size="1.778" layer="95">&gt;NAME</text>
<pin name="VCC" x="0" y="10.16" length="middle" direction="pwr" rot="R270"/>
<pin name="GND" x="0" y="-7.62" length="middle" direction="pwr" rot="R90"/>
<pin name="GND2" x="5.08" y="-7.62" length="middle" direction="pwr" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="AD558">
<description>Voltage-output 8-bit digital-to-analog converter

The AD558 DACPORT is a complete voltage-output 8-bit digital-to-analog converter, including output amplifier, full microprocessor interface and precision voltage reference on a single monolithic chip. No external components or trims are required to interface, with full accuracy, an 8-bit data bus to an analog system.</description>
<gates>
<gate name="AD558" symbol="AD558" x="0" y="0" addlevel="always"/>
<gate name="PWR" symbol="PWR" x="27.94" y="-12.7" addlevel="request"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="AD558" pin="CE" pad="9"/>
<connect gate="AD558" pin="CS" pad="10"/>
<connect gate="AD558" pin="DB0" pad="1"/>
<connect gate="AD558" pin="DB1" pad="2"/>
<connect gate="AD558" pin="DB2" pad="3"/>
<connect gate="AD558" pin="DB3" pad="4"/>
<connect gate="AD558" pin="DB4" pad="5"/>
<connect gate="AD558" pin="DB5" pad="6"/>
<connect gate="AD558" pin="DB6" pad="7"/>
<connect gate="AD558" pin="DB7" pad="8"/>
<connect gate="AD558" pin="SENSE" pad="15"/>
<connect gate="AD558" pin="SLCT" pad="14"/>
<connect gate="AD558" pin="VOUT" pad="16"/>
<connect gate="PWR" pin="GND" pad="12"/>
<connect gate="PWR" pin="GND2" pad="13"/>
<connect gate="PWR" pin="VCC" pad="11"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="st-microelectronics">
<description>&lt;b&gt;ST Microelectronics Devices&lt;/b&gt;&lt;p&gt;
Microcontrollers,  I2C components, linear devices&lt;p&gt;
http://www.st.com&lt;p&gt;
&lt;i&gt;Include st-microelectronics-2.lbr, st-microelectronics-3.lbr.&lt;p&gt;&lt;/i&gt;

&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="DIL16">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="10.16" y1="2.921" x2="-10.16" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="10.16" y1="2.921" x2="10.16" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="2.921" x2="-10.16" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-2.921" x2="-10.16" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="1.016" x2="-10.16" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-1.27" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-3.81" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="15" x="-6.35" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="16" x="-8.89" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-10.541" y="-2.921" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-7.493" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="L293D">
<wire x1="-10.16" y1="20.32" x2="-10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-20.32" x2="10.16" y2="-20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="-20.32" x2="10.16" y2="20.32" width="0.254" layer="94"/>
<wire x1="10.16" y1="20.32" x2="-10.16" y2="20.32" width="0.254" layer="94"/>
<text x="-10.16" y="21.336" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-22.86" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1-2EN" x="-15.24" y="17.78" length="middle" direction="in"/>
<pin name="1A" x="-15.24" y="12.7" length="middle" direction="in"/>
<pin name="1Y" x="-15.24" y="7.62" length="middle" direction="out"/>
<pin name="GND1" x="-15.24" y="2.54" length="middle" direction="pwr"/>
<pin name="GND2" x="-15.24" y="-2.54" length="middle" direction="pwr"/>
<pin name="2Y" x="-15.24" y="-7.62" length="middle" direction="out"/>
<pin name="2A" x="-15.24" y="-12.7" length="middle" direction="in"/>
<pin name="VCC2" x="-15.24" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC1" x="15.24" y="17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="4A" x="15.24" y="12.7" length="middle" direction="in" rot="R180"/>
<pin name="4Y" x="15.24" y="7.62" length="middle" direction="out" rot="R180"/>
<pin name="GND3" x="15.24" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="GND4" x="15.24" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="3Y" x="15.24" y="-7.62" length="middle" direction="out" rot="R180"/>
<pin name="3A" x="15.24" y="-12.7" length="middle" direction="in" rot="R180"/>
<pin name="3-4EN" x="15.24" y="-17.78" length="middle" direction="in" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="L293D" prefix="IC">
<description>&lt;b&gt;PUSH-PULL 4 CHANNEL DRIVER&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="L293D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DIL16">
<connects>
<connect gate="G$1" pin="1-2EN" pad="1"/>
<connect gate="G$1" pin="1A" pad="2"/>
<connect gate="G$1" pin="1Y" pad="3"/>
<connect gate="G$1" pin="2A" pad="7"/>
<connect gate="G$1" pin="2Y" pad="6"/>
<connect gate="G$1" pin="3-4EN" pad="9"/>
<connect gate="G$1" pin="3A" pad="10"/>
<connect gate="G$1" pin="3Y" pad="11"/>
<connect gate="G$1" pin="4A" pad="15"/>
<connect gate="G$1" pin="4Y" pad="14"/>
<connect gate="G$1" pin="GND1" pad="4"/>
<connect gate="G$1" pin="GND2" pad="5"/>
<connect gate="G$1" pin="GND3" pad="13"/>
<connect gate="G$1" pin="GND4" pad="12"/>
<connect gate="G$1" pin="VCC1" pad="16"/>
<connect gate="G$1" pin="VCC2" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="L293D" constant="no"/>
<attribute name="OC_FARNELL" value="9589619" constant="no"/>
<attribute name="OC_NEWARK" value="56P8249" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2">
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
<symbol name="VDD">
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VDD" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="VDD" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="VDD" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" prefix="SUPPLY">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
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
<part name="KEYPAD" library="74xx-us" deviceset="74C922" device="N"/>
<part name="8051" library="micro-intel" deviceset="8051" device="P"/>
<part name="8254TIMER" library="micro-intel" deviceset="8253" device=""/>
<part name="C1" library="docu-dummy" deviceset="C" device=""/>
<part name="C2" library="docu-dummy" deviceset="C" device=""/>
<part name="_XIO" library="40xx" deviceset="4068" device="N"/>
<part name="XIO" library="74xx-little-de" deviceset="74*1G04" device="DBV" technology="AHC"/>
<part name="_A8" library="74xx-little-de" deviceset="74*1G04" device="DBV" technology="AHC"/>
<part name="ADDLATCH" library="74xx-us" deviceset="74*373" device="N" technology="LS"/>
<part name="GND2" library="supply1" deviceset="GND" device=""/>
<part name="XIODEMUX" library="74xx-us" deviceset="74*138" device="N" technology="LS"/>
<part name="GND1" library="supply1" deviceset="GND" device=""/>
<part name="U$2" library="AD558" deviceset="AD558" device=""/>
<part name="IC2" library="micro-intel" deviceset="82C55A" device=""/>
<part name="IC3" library="st-microelectronics" deviceset="L293D" device=""/>
<part name="SUPPLY1" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY2" library="supply2" deviceset="VDD" device="" value="VDD_Main"/>
<part name="SUPPLY3" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY4" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="IC1" library="st-microelectronics" deviceset="L293D" device=""/>
<part name="SUPPLY7" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY8" library="supply2" deviceset="VDD" device="" value="VDD_Main"/>
<part name="SUPPLY9" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY10" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="IC4" library="st-microelectronics" deviceset="L293D" device=""/>
<part name="SUPPLY13" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY14" library="supply2" deviceset="VDD" device="" value="VDD_Main"/>
<part name="SUPPLY15" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
<part name="SUPPLY16" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY17" library="supply2" deviceset="GND" device=""/>
<part name="SUPPLY18" library="supply2" deviceset="VDD" device="" value="VDD_Logic"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="KEYPAD" gate="G$1" x="368.3" y="-203.2"/>
<instance part="8051" gate="G$1" x="505.46" y="-152.4"/>
<instance part="8254TIMER" gate="A" x="368.3" y="-157.48" smashed="yes">
<attribute name="NAME" x="358.14" y="-136.525" size="1.778" layer="95"/>
<attribute name="VALUE" x="358.14" y="-180.34" size="1.778" layer="96"/>
</instance>
<instance part="C1" gate="G$1" x="342.9" y="-190.5" rot="R90"/>
<instance part="C2" gate="G$1" x="350.52" y="-223.52" rot="R180"/>
<instance part="_XIO" gate="A" x="561.34" y="-132.08"/>
<instance part="XIO" gate="A" x="586.74" y="-137.16" rot="R270"/>
<instance part="_A8" gate="A" x="541.02" y="-144.78"/>
<instance part="ADDLATCH" gate="A" x="586.74" y="-182.88"/>
<instance part="GND2" gate="1" x="566.42" y="-195.58"/>
<instance part="XIODEMUX" gate="A" x="635" y="-177.8"/>
<instance part="GND1" gate="1" x="614.68" y="-195.58"/>
<instance part="U$2" gate="AD558" x="408.94" y="-127"/>
<instance part="IC2" gate="1" x="513.08" y="-22.86"/>
<instance part="IC3" gate="G$1" x="571.5" y="48.26" rot="R90"/>
<instance part="SUPPLY1" gate="G$1" x="553.72" y="30.48" smashed="yes" rot="R180">
<attribute name="VALUE" x="555.625" y="27.305" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY2" gate="G$1" x="589.28" y="30.48" smashed="yes" rot="R180">
<attribute name="VALUE" x="591.185" y="27.305" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY3" gate="G$1" x="553.72" y="66.04" smashed="yes">
<attribute name="VALUE" x="551.815" y="69.215" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="571.5" y="30.48"/>
<instance part="SUPPLY5" gate="GND" x="571.5" y="66.04" rot="R180"/>
<instance part="SUPPLY6" gate="G$1" x="589.28" y="66.04" smashed="yes">
<attribute name="VALUE" x="587.375" y="69.215" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC1" gate="G$1" x="614.68" y="48.26" rot="R90"/>
<instance part="SUPPLY7" gate="G$1" x="596.9" y="30.48" smashed="yes" rot="R180">
<attribute name="VALUE" x="598.805" y="27.305" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY8" gate="G$1" x="632.46" y="30.48" smashed="yes" rot="R180">
<attribute name="VALUE" x="634.365" y="27.305" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY9" gate="G$1" x="596.9" y="66.04" smashed="yes">
<attribute name="VALUE" x="594.995" y="69.215" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY10" gate="GND" x="614.68" y="30.48"/>
<instance part="SUPPLY11" gate="GND" x="614.68" y="66.04" rot="R180"/>
<instance part="SUPPLY12" gate="G$1" x="632.46" y="66.04" smashed="yes">
<attribute name="VALUE" x="630.555" y="69.215" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="IC4" gate="G$1" x="571.5" y="-38.1" rot="R90"/>
<instance part="SUPPLY13" gate="G$1" x="553.72" y="-55.88" smashed="yes" rot="R180">
<attribute name="VALUE" x="578.485" y="-23.495" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY14" gate="G$1" x="589.28" y="-55.88" smashed="yes" rot="R180">
<attribute name="VALUE" x="591.185" y="-59.055" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY15" gate="G$1" x="553.72" y="-20.32" smashed="yes">
<attribute name="VALUE" x="551.815" y="-17.145" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY16" gate="GND" x="571.5" y="-55.88"/>
<instance part="SUPPLY17" gate="GND" x="571.5" y="-20.32" rot="R180"/>
<instance part="SUPPLY18" gate="G$1" x="589.28" y="-20.32" smashed="yes">
<attribute name="VALUE" x="587.375" y="-17.145" size="1.778" layer="96" rot="R90"/>
</instance>
</instances>
<busses>
<bus name="P_ONE[0..7]">
<segment>
<wire x1="482.6" y1="-149.86" x2="482.6" y2="-167.64" width="0.762" layer="92"/>
<wire x1="482.6" y1="-167.64" x2="439.42" y2="-210.82" width="0.762" layer="92"/>
<wire x1="439.42" y1="-210.82" x2="386.08" y2="-210.82" width="0.762" layer="92"/>
<wire x1="386.08" y1="-210.82" x2="386.08" y2="-198.12" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="P_THREE[0..7]">
<segment>
<wire x1="482.6" y1="-175.26" x2="482.6" y2="-187.96" width="0.762" layer="92"/>
<wire x1="482.6" y1="-187.96" x2="449.58" y2="-220.98" width="0.762" layer="92"/>
<wire x1="449.58" y1="-220.98" x2="388.62" y2="-220.98" width="0.762" layer="92"/>
<wire x1="388.62" y1="-220.98" x2="388.62" y2="-213.36" width="0.762" layer="92"/>
<wire x1="449.58" y1="-220.98" x2="683.26" y2="-220.98" width="0.762" layer="92"/>
<wire x1="683.26" y1="-220.98" x2="683.26" y2="86.36" width="0.762" layer="92"/>
<wire x1="683.26" y1="86.36" x2="320.04" y2="86.36" width="0.762" layer="92"/>
</segment>
</bus>
<bus name="DB[0..7]">
<segment>
<wire x1="530.86" y1="-165.1" x2="530.86" y2="-109.22" width="0.762" layer="92"/>
<wire x1="530.86" y1="-109.22" x2="523.24" y2="-101.6" width="0.762" layer="92"/>
<wire x1="523.24" y1="-101.6" x2="347.98" y2="-101.6" width="0.762" layer="92"/>
<wire x1="347.98" y1="-101.6" x2="347.98" y2="-157.48" width="0.762" layer="92"/>
<label x="449.58" y="-99.06" size="1.778" layer="95" rot="R90"/>
<label x="335.28" y="-119.38" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="ALSBYT[0..7]">
<segment>
<wire x1="607.06" y1="-187.96" x2="607.06" y2="-93.98" width="0.762" layer="92"/>
<wire x1="607.06" y1="-93.98" x2="599.44" y2="-86.36" width="0.762" layer="92"/>
<wire x1="599.44" y1="-86.36" x2="317.5" y2="-86.36" width="0.762" layer="92"/>
<wire x1="317.5" y1="-86.36" x2="312.42" y2="-91.44" width="0.762" layer="92"/>
<wire x1="312.42" y1="-91.44" x2="312.42" y2="-157.48" width="0.762" layer="92"/>
<label x="464.82" y="-83.82" size="1.778" layer="95" rot="R90"/>
<label x="314.96" y="-106.68" size="1.778" layer="95"/>
</segment>
</bus>
<bus name="PERPH[0..7]">
<segment>
<wire x1="650.24" y1="-187.96" x2="650.24" y2="-99.06" width="0.762" layer="92"/>
<wire x1="650.24" y1="-99.06" x2="622.3" y2="-71.12" width="0.762" layer="92"/>
<wire x1="622.3" y1="-71.12" x2="309.88" y2="-71.12" width="0.762" layer="92"/>
<wire x1="309.88" y1="-71.12" x2="297.18" y2="-83.82" width="0.762" layer="92"/>
<wire x1="297.18" y1="-83.82" x2="297.18" y2="-220.98" width="0.762" layer="92"/>
<label x="406.4" y="-68.58" size="1.778" layer="95"/>
</segment>
</bus>
</busses>
<nets>
<net name="P_ONE0" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="OUTA"/>
<wire x1="386.08" y1="-200.66" x2="381" y2="-200.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P10-T2"/>
<wire x1="482.6" y1="-149.86" x2="485.14" y2="-149.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_ONE1" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="OUTB"/>
<wire x1="386.08" y1="-203.2" x2="381" y2="-203.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P11-T2EX"/>
<wire x1="482.6" y1="-152.4" x2="485.14" y2="-152.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_ONE2" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="OUTC"/>
<wire x1="386.08" y1="-205.74" x2="381" y2="-205.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P12"/>
<wire x1="482.6" y1="-154.94" x2="485.14" y2="-154.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_ONE3" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="OUTD"/>
<wire x1="386.08" y1="-208.28" x2="381" y2="-208.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P13"/>
<wire x1="482.6" y1="-157.48" x2="485.14" y2="-157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE2" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="!OE"/>
<wire x1="388.62" y1="-213.36" x2="381" y2="-213.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P32-INT0"/>
<wire x1="482.6" y1="-180.34" x2="485.14" y2="-180.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE3" class="0">
<segment>
<wire x1="393.7" y1="-220.98" x2="393.7" y2="-195.58" width="0.1524" layer="91"/>
<pinref part="KEYPAD" gate="G$1" pin="DATA_AV"/>
<wire x1="393.7" y1="-195.58" x2="381" y2="-195.58" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P33-INT1"/>
<wire x1="482.6" y1="-182.88" x2="485.14" y2="-182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB0" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D0"/>
<wire x1="347.98" y1="-139.7" x2="353.06" y2="-139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P00-AD0"/>
<wire x1="530.86" y1="-165.1" x2="525.78" y2="-165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-165.1" x2="533.4" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-165.1" x2="538.48" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="8D"/>
<wire x1="538.48" y1="-170.18" x2="546.1" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-170.18" x2="574.04" y2="-187.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB0"/>
<wire x1="388.62" y1="-101.6" x2="388.62" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="388.62" y1="-104.14" x2="393.7" y2="-109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="467.36" y1="-101.6" x2="467.36" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D0"/>
<wire x1="467.36" y1="-12.7" x2="497.84" y2="-12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB1" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D1"/>
<wire x1="347.98" y1="-142.24" x2="353.06" y2="-142.24" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P01-AD1"/>
<wire x1="530.86" y1="-162.56" x2="525.78" y2="-162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-162.56" x2="533.4" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-162.56" x2="538.48" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="7D"/>
<wire x1="538.48" y1="-167.64" x2="546.1" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-167.64" x2="574.04" y2="-185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB1"/>
<wire x1="383.54" y1="-101.6" x2="383.54" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="383.54" y1="-104.14" x2="393.7" y2="-114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="469.9" y1="-101.6" x2="469.9" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D1"/>
<wire x1="469.9" y1="-15.24" x2="497.84" y2="-15.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB2" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D2"/>
<wire x1="347.98" y1="-144.78" x2="353.06" y2="-144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P02-AD2"/>
<wire x1="530.86" y1="-160.02" x2="525.78" y2="-160.02" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-160.02" x2="533.4" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-160.02" x2="538.48" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="6D"/>
<wire x1="538.48" y1="-165.1" x2="546.1" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-165.1" x2="574.04" y2="-182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB2"/>
<wire x1="378.46" y1="-101.6" x2="378.46" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="378.46" y1="-104.14" x2="393.7" y2="-119.38" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="472.44" y1="-101.6" x2="472.44" y2="-17.78" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D2"/>
<wire x1="472.44" y1="-17.78" x2="497.84" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB3" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D3"/>
<wire x1="347.98" y1="-147.32" x2="353.06" y2="-147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P03-AD3"/>
<wire x1="530.86" y1="-157.48" x2="525.78" y2="-157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-157.48" x2="533.4" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-157.48" x2="538.48" y2="-162.56" width="0.1524" layer="91"/>
<wire x1="538.48" y1="-162.56" x2="546.1" y2="-162.56" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="5D"/>
<wire x1="546.1" y1="-162.56" x2="574.04" y2="-180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB3"/>
<wire x1="373.38" y1="-101.6" x2="373.38" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="373.38" y1="-104.14" x2="393.7" y2="-124.46" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="474.98" y1="-101.6" x2="474.98" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D3"/>
<wire x1="474.98" y1="-20.32" x2="497.84" y2="-20.32" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB4" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D4"/>
<wire x1="347.98" y1="-149.86" x2="353.06" y2="-149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P04-AD4"/>
<wire x1="530.86" y1="-154.94" x2="525.78" y2="-154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-154.94" x2="533.4" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-154.94" x2="538.48" y2="-160.02" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="4D"/>
<wire x1="538.48" y1="-160.02" x2="546.1" y2="-160.02" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-160.02" x2="574.04" y2="-177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB4"/>
<wire x1="368.3" y1="-101.6" x2="368.3" y2="-104.14" width="0.1524" layer="91"/>
<wire x1="368.3" y1="-104.14" x2="393.7" y2="-129.54" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="477.52" y1="-101.6" x2="477.52" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D4"/>
<wire x1="477.52" y1="-22.86" x2="497.84" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB5" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D5"/>
<wire x1="347.98" y1="-152.4" x2="353.06" y2="-152.4" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P05-AD5"/>
<wire x1="530.86" y1="-152.4" x2="525.78" y2="-152.4" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-152.4" x2="533.4" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-152.4" x2="538.48" y2="-157.48" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="3D"/>
<wire x1="538.48" y1="-157.48" x2="546.1" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-157.48" x2="574.04" y2="-175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB5"/>
<wire x1="365.76" y1="-101.6" x2="365.76" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="365.76" y1="-106.68" x2="393.7" y2="-134.62" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="480.06" y1="-101.6" x2="480.06" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D5"/>
<wire x1="480.06" y1="-25.4" x2="497.84" y2="-25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB6" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D6"/>
<wire x1="347.98" y1="-154.94" x2="353.06" y2="-154.94" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P06-AD6"/>
<wire x1="530.86" y1="-149.86" x2="525.78" y2="-149.86" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-149.86" x2="533.4" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-149.86" x2="538.48" y2="-154.94" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="2D"/>
<wire x1="538.48" y1="-154.94" x2="546.1" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-154.94" x2="574.04" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB6"/>
<wire x1="360.68" y1="-101.6" x2="360.68" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="360.68" y1="-106.68" x2="393.7" y2="-139.7" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="482.6" y1="-101.6" x2="482.6" y2="-27.94" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D6"/>
<wire x1="482.6" y1="-27.94" x2="497.84" y2="-27.94" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DB7" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="D7"/>
<wire x1="347.98" y1="-157.48" x2="353.06" y2="-157.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="8051" gate="G$1" pin="P07-AD7"/>
<wire x1="530.86" y1="-147.32" x2="525.78" y2="-147.32" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="530.86" y1="-147.32" x2="533.4" y2="-147.32" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-147.32" x2="538.48" y2="-152.4" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="1D"/>
<wire x1="538.48" y1="-152.4" x2="546.1" y2="-152.4" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-152.4" x2="574.04" y2="-170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$2" gate="AD558" pin="DB7"/>
<wire x1="355.6" y1="-101.6" x2="355.6" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="355.6" y1="-106.68" x2="393.7" y2="-144.78" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="474.98" y1="-101.6" x2="485.14" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="485.14" y1="-101.6" x2="485.14" y2="-30.48" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="D7"/>
<wire x1="485.14" y1="-30.48" x2="497.84" y2="-30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="OSC"/>
<wire x1="347.98" y1="-190.5" x2="355.6" y2="-190.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="KEYPAD" gate="G$1" pin="KBM"/>
<wire x1="350.52" y1="-218.44" x2="355.6" y2="-218.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="_XIO" gate="A" pin="J"/>
<pinref part="XIO" gate="A" pin="I"/>
<wire x1="568.96" y1="-132.08" x2="586.74" y2="-132.08" width="0.1524" layer="91"/>
<pinref part="XIODEMUX" gate="A" pin="G1"/>
<wire x1="619.76" y1="-182.88" x2="614.68" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="614.68" y1="-182.88" x2="614.68" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="614.68" y1="-132.08" x2="586.74" y2="-132.08" width="0.1524" layer="91"/>
<junction x="586.74" y="-132.08"/>
</segment>
</net>
<net name="P_THREE6" class="0">
<segment>
<wire x1="477.52" y1="-193.04" x2="528.32" y2="-193.04" width="0.1524" layer="91"/>
<wire x1="528.32" y1="-193.04" x2="533.4" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="8051" gate="G$1" pin="P36-WR"/>
<wire x1="533.4" y1="-187.96" x2="525.78" y2="-187.96" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="406.4" y1="-220.98" x2="406.4" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="406.4" y1="-182.88" x2="347.98" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="347.98" y1="-182.88" x2="342.9" y2="-177.8" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-177.8" x2="342.9" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-167.64" x2="345.44" y2="-165.1" width="0.1524" layer="91"/>
<pinref part="8254TIMER" gate="A" pin="WR"/>
<wire x1="345.44" y1="-165.1" x2="353.06" y2="-165.1" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="424.18" y1="-220.98" x2="424.18" y2="-134.62" width="0.1524" layer="91"/>
<pinref part="U$2" gate="AD558" pin="CS"/>
</segment>
<segment>
<pinref part="IC2" gate="1" pin="WR"/>
<wire x1="492.76" y1="-2.54" x2="497.84" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="492.76" y1="86.36" x2="492.76" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE7" class="0">
<segment>
<wire x1="472.44" y1="-198.12" x2="533.4" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="533.4" y1="-198.12" x2="548.64" y2="-182.88" width="0.1524" layer="91"/>
<pinref part="8051" gate="G$1" pin="P37-RD"/>
<wire x1="548.64" y1="-182.88" x2="525.78" y2="-182.88" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="403.86" y1="-220.98" x2="403.86" y2="-193.04" width="0.1524" layer="91"/>
<wire x1="403.86" y1="-193.04" x2="396.24" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="396.24" y1="-185.42" x2="342.9" y2="-185.42" width="0.1524" layer="91"/>
<wire x1="342.9" y1="-185.42" x2="340.36" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-182.88" x2="340.36" y2="-165.1" width="0.1524" layer="91"/>
<wire x1="340.36" y1="-165.1" x2="342.9" y2="-162.56" width="0.1524" layer="91"/>
<pinref part="8254TIMER" gate="A" pin="RD"/>
<wire x1="342.9" y1="-162.56" x2="353.06" y2="-162.56" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC2" gate="1" pin="RD"/>
<wire x1="495.3" y1="0" x2="497.84" y2="0" width="0.1524" layer="91"/>
<wire x1="495.3" y1="86.36" x2="495.3" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE5" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P35-T1"/>
<wire x1="482.6" y1="-187.96" x2="485.14" y2="-187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE4" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P34-T0"/>
<wire x1="482.6" y1="-185.42" x2="485.14" y2="-185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE1" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P31-TXD"/>
<wire x1="482.6" y1="-177.8" x2="485.14" y2="-177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="P_THREE0" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P30-RXD"/>
<wire x1="482.6" y1="-175.26" x2="485.14" y2="-175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="OC"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="566.42" y1="-193.04" x2="574.04" y2="-193.04" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XIODEMUX" gate="A" pin="G2A"/>
<pinref part="XIODEMUX" gate="A" pin="G2B"/>
<wire x1="619.76" y1="-185.42" x2="619.76" y2="-187.96" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="619.76" y1="-187.96" x2="614.68" y2="-193.04" width="0.1524" layer="91"/>
<junction x="619.76" y="-187.96"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND2"/>
<pinref part="IC3" gate="G$1" pin="GND1"/>
<wire x1="574.04" y1="33.02" x2="571.5" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="571.5" y1="33.02" x2="568.96" y2="33.02" width="0.1524" layer="91"/>
<junction x="571.5" y="33.02"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="GND4"/>
<pinref part="IC3" gate="G$1" pin="GND3"/>
<wire x1="571.5" y1="63.5" x2="568.96" y2="63.5" width="0.1524" layer="91"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<junction x="571.5" y="63.5"/>
<wire x1="571.5" y1="63.5" x2="574.04" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND2"/>
<pinref part="IC1" gate="G$1" pin="GND1"/>
<wire x1="617.22" y1="33.02" x2="614.68" y2="33.02" width="0.1524" layer="91"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
<wire x1="614.68" y1="33.02" x2="612.14" y2="33.02" width="0.1524" layer="91"/>
<junction x="614.68" y="33.02"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND4"/>
<pinref part="IC1" gate="G$1" pin="GND3"/>
<wire x1="614.68" y1="63.5" x2="612.14" y2="63.5" width="0.1524" layer="91"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
<junction x="614.68" y="63.5"/>
<wire x1="614.68" y1="63.5" x2="617.22" y2="63.5" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="GND2"/>
<pinref part="IC4" gate="G$1" pin="GND1"/>
<wire x1="574.04" y1="-53.34" x2="571.5" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="SUPPLY16" gate="GND" pin="GND"/>
<wire x1="571.5" y1="-53.34" x2="568.96" y2="-53.34" width="0.1524" layer="91"/>
<junction x="571.5" y="-53.34"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="GND4"/>
<pinref part="IC4" gate="G$1" pin="GND3"/>
<wire x1="571.5" y1="-22.86" x2="568.96" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="SUPPLY17" gate="GND" pin="GND"/>
<junction x="571.5" y="-22.86"/>
<wire x1="571.5" y1="-22.86" x2="574.04" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT0" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="8Q"/>
<wire x1="607.06" y1="-187.96" x2="599.44" y2="-187.96" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="312.42" y1="-149.86" x2="317.5" y2="-149.86" width="0.1524" layer="91"/>
<wire x1="317.5" y1="-149.86" x2="335.28" y2="-167.64" width="0.1524" layer="91"/>
<pinref part="8254TIMER" gate="A" pin="A0"/>
<wire x1="335.28" y1="-167.64" x2="353.06" y2="-167.64" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="462.28" y1="-86.36" x2="462.28" y2="5.08" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="A0"/>
<wire x1="462.28" y1="5.08" x2="497.84" y2="5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT1" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="7Q"/>
<wire x1="607.06" y1="-185.42" x2="599.44" y2="-185.42" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="312.42" y1="-154.94" x2="314.96" y2="-154.94" width="0.1524" layer="91"/>
<wire x1="314.96" y1="-154.94" x2="330.2" y2="-170.18" width="0.1524" layer="91"/>
<pinref part="8254TIMER" gate="A" pin="A1"/>
<wire x1="330.2" y1="-170.18" x2="353.06" y2="-170.18" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="459.74" y1="-86.36" x2="459.74" y2="7.62" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="A1"/>
<wire x1="459.74" y1="7.62" x2="497.84" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT2" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="6Q"/>
<wire x1="607.06" y1="-182.88" x2="599.44" y2="-182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT3" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="5Q"/>
<wire x1="607.06" y1="-180.34" x2="599.44" y2="-180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XIODEMUX" gate="A" pin="A"/>
<wire x1="607.06" y1="-170.18" x2="619.76" y2="-170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT4" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="4Q"/>
<wire x1="607.06" y1="-177.8" x2="599.44" y2="-177.8" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XIODEMUX" gate="A" pin="B"/>
<wire x1="607.06" y1="-172.72" x2="619.76" y2="-172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT5" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="3Q"/>
<wire x1="607.06" y1="-175.26" x2="599.44" y2="-175.26" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="XIODEMUX" gate="A" pin="C"/>
<wire x1="607.06" y1="-175.26" x2="619.76" y2="-175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT6" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="2Q"/>
<wire x1="607.06" y1="-172.72" x2="599.44" y2="-172.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ALSBYT7" class="0">
<segment>
<pinref part="ADDLATCH" gate="A" pin="1Q"/>
<wire x1="607.06" y1="-170.18" x2="599.44" y2="-170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="ALE"/>
<wire x1="525.78" y1="-172.72" x2="546.1" y2="-172.72" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-172.72" x2="556.26" y2="-182.88" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-182.88" x2="556.26" y2="-198.12" width="0.1524" layer="91"/>
<wire x1="556.26" y1="-198.12" x2="563.88" y2="-205.74" width="0.1524" layer="91"/>
<pinref part="ADDLATCH" gate="A" pin="ENC"/>
<wire x1="563.88" y1="-205.74" x2="574.04" y2="-195.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH0" class="0">
<segment>
<pinref part="8254TIMER" gate="A" pin="CS"/>
<wire x1="297.18" y1="-175.26" x2="353.06" y2="-175.26" width="0.1524" layer="91"/>
<label x="317.5" y="-172.72" size="1.778" layer="95" rot="R180"/>
</segment>
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y0"/>
<wire x1="650.24" y1="-170.18" x2="647.7" y2="-170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH1" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y1"/>
<wire x1="650.24" y1="-172.72" x2="647.7" y2="-172.72" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="436.88" y1="-71.12" x2="436.88" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="436.88" y1="-137.16" x2="434.34" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="U$2" gate="AD558" pin="CE"/>
<wire x1="434.34" y1="-139.7" x2="424.18" y2="-139.7" width="0.1524" layer="91"/>
<label x="439.42" y="-142.24" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="PERPH2" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y2"/>
<wire x1="650.24" y1="-175.26" x2="647.7" y2="-175.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH3" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y3"/>
<wire x1="650.24" y1="-177.8" x2="647.7" y2="-177.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH4" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y4"/>
<wire x1="650.24" y1="-180.34" x2="647.7" y2="-180.34" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="464.82" y1="-71.12" x2="464.82" y2="2.54" width="0.1524" layer="91"/>
<pinref part="IC2" gate="1" pin="CS"/>
<wire x1="464.82" y1="2.54" x2="497.84" y2="2.54" width="0.1524" layer="91"/>
<label x="482.6" y="0" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="PERPH5" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y5"/>
<wire x1="650.24" y1="-182.88" x2="647.7" y2="-182.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH6" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y6"/>
<wire x1="650.24" y1="-185.42" x2="647.7" y2="-185.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="PERPH7" class="0">
<segment>
<pinref part="XIODEMUX" gate="A" pin="Y7"/>
<wire x1="650.24" y1="-187.96" x2="647.7" y2="-187.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="U$2" gate="AD558" pin="SLCT"/>
<pinref part="U$2" gate="AD558" pin="SENSE"/>
<wire x1="424.18" y1="-124.46" x2="424.18" y2="-119.38" width="0.1524" layer="91"/>
<pinref part="U$2" gate="AD558" pin="VOUT"/>
<wire x1="424.18" y1="-119.38" x2="424.18" y2="-114.3" width="0.1524" layer="91"/>
<junction x="424.18" y="-119.38"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P27-A15"/>
<pinref part="_XIO" gate="A" pin="I0"/>
<wire x1="525.78" y1="-121.92" x2="553.72" y2="-121.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P26-A14"/>
<pinref part="_XIO" gate="A" pin="I1"/>
<wire x1="525.78" y1="-124.46" x2="553.72" y2="-124.46" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P25-A13"/>
<pinref part="_XIO" gate="A" pin="I2"/>
<wire x1="525.78" y1="-127" x2="553.72" y2="-127" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P24-A12"/>
<pinref part="_XIO" gate="A" pin="I3"/>
<wire x1="525.78" y1="-129.54" x2="553.72" y2="-129.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P23-A11"/>
<wire x1="525.78" y1="-132.08" x2="551.18" y2="-132.08" width="0.1524" layer="91"/>
<wire x1="551.18" y1="-132.08" x2="551.18" y2="-134.62" width="0.1524" layer="91"/>
<pinref part="_XIO" gate="A" pin="I4"/>
<wire x1="551.18" y1="-134.62" x2="553.72" y2="-134.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P22-A10"/>
<wire x1="525.78" y1="-134.62" x2="548.64" y2="-134.62" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-134.62" x2="548.64" y2="-137.16" width="0.1524" layer="91"/>
<pinref part="_XIO" gate="A" pin="I5"/>
<wire x1="548.64" y1="-137.16" x2="553.72" y2="-137.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P21-A9"/>
<wire x1="525.78" y1="-137.16" x2="546.1" y2="-137.16" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-137.16" x2="546.1" y2="-139.7" width="0.1524" layer="91"/>
<pinref part="_XIO" gate="A" pin="I6"/>
<wire x1="546.1" y1="-139.7" x2="553.72" y2="-139.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="8051" gate="G$1" pin="P20-A8"/>
<pinref part="_A8" gate="A" pin="I"/>
<wire x1="525.78" y1="-139.7" x2="535.94" y2="-139.7" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-139.7" x2="535.94" y2="-144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="_A8" gate="A" pin="O"/>
<pinref part="_XIO" gate="A" pin="I7"/>
<wire x1="551.18" y1="-144.78" x2="553.72" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="553.72" y1="-144.78" x2="553.72" y2="-142.24" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VDD" class="0">
<segment>
<pinref part="IC3" gate="G$1" pin="VCC2"/>
<pinref part="SUPPLY2" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="VCC1"/>
<pinref part="SUPPLY3" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="1-2EN"/>
<pinref part="SUPPLY1" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC3" gate="G$1" pin="3-4EN"/>
<pinref part="SUPPLY6" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VCC2"/>
<pinref part="SUPPLY8" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="VCC1"/>
<pinref part="SUPPLY9" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="1-2EN"/>
<pinref part="SUPPLY7" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="3-4EN"/>
<pinref part="SUPPLY12" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="VCC2"/>
<pinref part="SUPPLY14" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="VCC1"/>
<pinref part="SUPPLY15" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="1-2EN"/>
<pinref part="SUPPLY13" gate="G$1" pin="VDD"/>
</segment>
<segment>
<pinref part="IC4" gate="G$1" pin="3-4EN"/>
<pinref part="SUPPLY18" gate="G$1" pin="VDD"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PC1"/>
<wire x1="528.32" y1="-40.64" x2="548.64" y2="-40.64" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-40.64" x2="548.64" y2="-15.24" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-15.24" x2="558.8" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="4A"/>
<wire x1="558.8" y1="-15.24" x2="558.8" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PC0"/>
<wire x1="528.32" y1="-38.1" x2="546.1" y2="-38.1" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-38.1" x2="546.1" y2="-12.7" width="0.1524" layer="91"/>
<wire x1="546.1" y1="-12.7" x2="584.2" y2="-12.7" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="3A"/>
<wire x1="584.2" y1="-12.7" x2="584.2" y2="-22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PC3"/>
<wire x1="528.32" y1="-45.72" x2="535.94" y2="-45.72" width="0.1524" layer="91"/>
<wire x1="535.94" y1="-45.72" x2="535.94" y2="-63.5" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="2A"/>
<wire x1="535.94" y1="-63.5" x2="584.2" y2="-63.5" width="0.1524" layer="91"/>
<wire x1="584.2" y1="-63.5" x2="584.2" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA7"/>
<wire x1="528.32" y1="-10.16" x2="627.38" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="2A"/>
<wire x1="627.38" y1="-10.16" x2="627.38" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA6"/>
<wire x1="528.32" y1="-7.62" x2="601.98" y2="-7.62" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="1A"/>
<wire x1="601.98" y1="-7.62" x2="601.98" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA5"/>
<wire x1="528.32" y1="-5.08" x2="584.2" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="2A"/>
<wire x1="584.2" y1="-5.08" x2="584.2" y2="33.02" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA4"/>
<wire x1="528.32" y1="-2.54" x2="558.8" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="558.8" y1="-2.54" x2="558.8" y2="33.02" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="1A"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA3"/>
<wire x1="528.32" y1="0" x2="548.64" y2="0" width="0.1524" layer="91"/>
<wire x1="548.64" y1="0" x2="548.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="548.64" y1="71.12" x2="558.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="4A"/>
<wire x1="558.8" y1="71.12" x2="558.8" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA2"/>
<wire x1="528.32" y1="2.54" x2="546.1" y2="2.54" width="0.1524" layer="91"/>
<wire x1="546.1" y1="2.54" x2="546.1" y2="73.66" width="0.1524" layer="91"/>
<wire x1="546.1" y1="73.66" x2="584.2" y2="73.66" width="0.1524" layer="91"/>
<pinref part="IC3" gate="G$1" pin="3A"/>
<wire x1="584.2" y1="73.66" x2="584.2" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$25" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA1"/>
<wire x1="528.32" y1="5.08" x2="543.56" y2="5.08" width="0.1524" layer="91"/>
<wire x1="543.56" y1="5.08" x2="543.56" y2="76.2" width="0.1524" layer="91"/>
<wire x1="543.56" y1="76.2" x2="601.98" y2="76.2" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="4A"/>
<wire x1="601.98" y1="76.2" x2="601.98" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PA0"/>
<wire x1="528.32" y1="7.62" x2="541.02" y2="7.62" width="0.1524" layer="91"/>
<wire x1="541.02" y1="7.62" x2="541.02" y2="78.74" width="0.1524" layer="91"/>
<wire x1="541.02" y1="78.74" x2="627.38" y2="78.74" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="3A"/>
<wire x1="627.38" y1="78.74" x2="627.38" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="IC2" gate="1" pin="PC2"/>
<wire x1="528.32" y1="-43.18" x2="548.64" y2="-43.18" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-43.18" x2="548.64" y2="-60.96" width="0.1524" layer="91"/>
<wire x1="548.64" y1="-60.96" x2="558.8" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="IC4" gate="G$1" pin="1A"/>
<wire x1="558.8" y1="-60.96" x2="558.8" y2="-53.34" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
