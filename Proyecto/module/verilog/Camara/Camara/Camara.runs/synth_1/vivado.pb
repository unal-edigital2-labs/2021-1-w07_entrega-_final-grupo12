
v
Command: %s
53*	vivadotcl2E
1synth_design -top test_cam -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
575792default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2426.117 ; gain = 0.000 ; free physical = 121 ; free virtual = 3488
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
test_cam2default:default2
 2default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/test_cam.v2default:default2
212default:default8@Z8-6157h px? 
c
%s
*synth2K
7	Parameter CAM_SCREEN_X bound to: 160 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CAM_SCREEN_Y bound to: 120 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter AW bound to: 17 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter DW bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter RED_VGA bound to: 8'b11100000 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter GREEN_VGA bound to: 8'b00011100 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter BLUE_VGA bound to: 8'b00000011 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2#
clk24_25_nexys42default:default2
 2default:default2p
Z/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/PLL/clk24_25_nexys4.v2default:default2
692default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
12default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

MMCME2_ADV2default:default2
 2default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
399982default:default8@Z8-6157h px? 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 12.000000 - type: double 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 48.000000 - type: double 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 50 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT1_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT2_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT3_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT4_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT5_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
m
%s
*synth2U
A	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter CLKOUT6_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter IS_PSEN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter IS_PSINCDEC_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter REF_JITTER2 bound to: 0.010000 - type: double 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SS_EN bound to: FALSE - type: string 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter SS_MODE bound to: CENTER_HIGH - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter SS_MOD_PERIOD bound to: 10000 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MMCME2_ADV2default:default2
 2default:default2
22default:default2
12default:default2O
9/tools/Xilinx/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
399982default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2#
clk24_25_nexys42default:default2
 2default:default2
32default:default2
12default:default2p
Z/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/PLL/clk24_25_nexys4.v2default:default2
692default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
LOCKED2default:default2#
clk24_25_nexys42default:default2
clk25_242default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/test_cam.v2default:default2
1102default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
clk25_242default:default2#
clk24_25_nexys42default:default2
52default:default2
42default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/test_cam.v2default:default2
1102default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2!
buffer_ram_dp2default:default2
 2default:default2j
T/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/buffer_ram_dp.v2default:default2
192default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter AW bound to: 17 - type: integer 
2default:defaulth p
x
? 
W
%s
*synth2?
+	Parameter DW bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
%s
*synth2?
?	Parameter imageFILE bound to: /home/juan/Documentos/Digital_II/Nexys4/Proyectos/Camara/wp02_drivercamara-grupo11/src/image.men - type: string 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NPOS bound to: 131072 - type: integer 
2default:defaulth p
x
? 
?
%s, ignoring3604*oasys2?
?could not open $readmem data file '/home/juan/Documentos/Digital_II/Nexys4/Proyectos/Camara/wp02_drivercamara-grupo11/src/image.men'; please make sure the file is added to project and has read permission2default:default2j
T/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/buffer_ram_dp.v2default:default2
532default:default8@Z8-4445h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
buffer_ram_dp2default:default2
 2default:default2
42default:default2
12default:default2j
T/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/buffer_ram_dp.v2default:default2
192default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
VGA_Driver640x4802default:default2
 2default:default2g
Q/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/VGA_driver.v2default:default2
182default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter SCREEN_X bound to: 640 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter FRONT_PORCH_X bound to: 16 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter SYNC_PULSE_X bound to: 96 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter BACK_PORCH_X bound to: 28 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter TOTAL_SCREEN_X bound to: 780 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter SCREEN_Y bound to: 480 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter FRONT_PORCH_Y bound to: 10 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter SYNC_PULSE_Y bound to: 2 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter BACK_PORCH_Y bound to: 33 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter TOTAL_SCREEN_Y bound to: 525 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
VGA_Driver640x4802default:default2
 2default:default2
52default:default2
12default:default2g
Q/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/VGA_driver.v2default:default2
182default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cam_read2default:default2
 2default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/cam_read.v2default:default2
212default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter AW bound to: 17 - type: integer 
2default:defaulth p
x
? 
?
index %s out of range324*oasys2
82default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/cam_read.v2default:default2
612default:default8@Z8-324h px? 
?
-case statement is not full and has no default155*oasys2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/cam_read.v2default:default2
462default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cam_read2default:default2
 2default:default2
62default:default2
12default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/cam_read.v2default:default2
212default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
test_cam2default:default2
 2default:default2
72default:default2
12default:default2e
O/home/esteban/Descargas/Camara2/Camara/wp02_drivercamara-grupo11/src/test_cam.v2default:default2
212default:default8@Z8-6155h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2426.117 ; gain = 0.000 ; free physical = 953 ; free virtual = 4217
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2426.117 ; gain = 0.000 ; free physical = 973 ; free virtual = 4238
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2426.117 ; gain = 0.000 ; free physical = 973 ; free virtual = 4238
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2426.1172default:default2
0.0002default:default2
9642default:default2
42302default:defaultZ17-722h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default8Z20-179h px? 
?
No nets matched '%s'.
507*	planAhead2!
CAM_pclk_IBUF2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
162default:default8@Z12-507h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CAM_btn2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
732default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
CAM_btn2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
742default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2
742default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2@
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2>
*/home/esteban/Descargas/Nexys-4-Master.xdc2default:default2.
.Xil/test_cam_propImpl.xdc2default:defaultZ1-236h px? 
8
Deriving generated clocks
2*timingZ38-2h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2542.8522default:default2
0.0002default:default2
8642default:default2
41452default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2542.8522default:default2
0.0002default:default2
8642default:default2
41452default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 934 ; free virtual = 4213
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 934 ; free virtual = 4213
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:12 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 937 ; free virtual = 4216
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
cs_reg2default:default2
cam_read2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                              001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                              010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                              100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
cs_reg2default:default2
one-hot2default:default2
cam_read2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:13 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 923 ; free virtual = 4206
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
l
%s
*synth2T
@	            1024K Bit	(131072 X 8 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   17 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:14 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 903 ; free virtual = 4197
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
d
%s*synth2L
8
Block RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name | RTL Object     | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|test_cam    | DP_RAM/ram_reg | 128 K x 8(NO_CHANGE)   | W |   | 128 K x 8(WRITE_FIRST) |   | R | Port A and B     | 0      | 32     | 
2default:defaulth px? 
?
%s*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 771 ; free virtual = 4072
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 767 ; free virtual = 4069
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!
Block RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Object     | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|test_cam    | DP_RAM/ram_reg | 128 K x 8(NO_CHANGE)   | W |   | 128 K x 8(WRITE_FIRST) |   | R | Port A and B     | 0      | 32     | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+----------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_42default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_52default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_62default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_1_72default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_02default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_12default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_22default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_32default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_42default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_52default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_62default:default2
Block2default:defaultZ8-7052h px? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2&
DP_RAM/ram_reg_3_72default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 768 ; free virtual = 4069
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |BUFG       |     5|
2default:defaulth px? 
H
%s*synth20
|2     |CARRY4     |    10|
2default:defaulth px? 
H
%s*synth20
|3     |LUT1       |     5|
2default:defaulth px? 
H
%s*synth20
|4     |LUT2       |    65|
2default:defaulth px? 
H
%s*synth20
|5     |LUT3       |     9|
2default:defaulth px? 
H
%s*synth20
|6     |LUT4       |    10|
2default:defaulth px? 
H
%s*synth20
|7     |LUT5       |     8|
2default:defaulth px? 
H
%s*synth20
|8     |LUT6       |    24|
2default:defaulth px? 
H
%s*synth20
|9     |MMCME2_ADV |     1|
2default:defaulth px? 
H
%s*synth20
|10    |RAMB36E1   |    32|
2default:defaulth px? 
H
%s*synth20
|13    |FDRE       |    57|
2default:defaulth px? 
H
%s*synth20
|14    |FDSE       |     9|
2default:defaulth px? 
H
%s*synth20
|15    |IBUF       |    12|
2default:defaulth px? 
H
%s*synth20
|16    |OBUF       |    17|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 759 ; free virtual = 4062
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 2542.852 ; gain = 0.000 ; free physical = 811 ; free virtual = 4113
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2542.852 ; gain = 116.734 ; free physical = 811 ; free virtual = 4113
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:052default:default2
00:00:002default:default2
2542.8522default:default2
0.0002default:default2
8952default:default2
41972default:defaultZ17-722h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
432default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2542.8522default:default2
0.0002default:default2
8372default:default2
41382default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
512default:default2
62default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:292default:default2
00:00:272default:default2
2542.8522default:default2
116.8122default:default2
9812default:default2
42832default:defaultZ17-722h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2l
X/home/esteban/Escritorio/pProyect_digt_2/Camara3/Camara/Camara.runs/synth_1/test_cam.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2z
fExecuting : report_utilization -file test_cam_utilization_synth.rpt -pb test_cam_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jul 14 20:39:25 20212default:defaultZ17-206h px? 


End Record