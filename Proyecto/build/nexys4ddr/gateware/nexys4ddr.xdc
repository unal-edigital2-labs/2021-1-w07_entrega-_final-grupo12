################################################################################
# IO constraints
################################################################################
# serial:0.tx
set_property LOC D4 [get_ports {serial_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_tx}]

# serial:0.rx
set_property LOC C4 [get_ports {serial_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {serial_rx}]

# clk:0
set_property LOC E3 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]

# cpu_reset:0
set_property LOC C12 [get_ports {cpu_reset}]
set_property IOSTANDARD LVCMOS33 [get_ports {cpu_reset}]

# led:0
set_property LOC H17 [get_ports {led0}]
set_property IOSTANDARD LVCMOS33 [get_ports {led0}]

# led:1
set_property LOC K15 [get_ports {led1}]
set_property IOSTANDARD LVCMOS33 [get_ports {led1}]

# led:2
set_property LOC J13 [get_ports {led2}]
set_property IOSTANDARD LVCMOS33 [get_ports {led2}]

# led:3
set_property LOC N14 [get_ports {led3}]
set_property IOSTANDARD LVCMOS33 [get_ports {led3}]

# led:4
set_property LOC R18 [get_ports {led4}]
set_property IOSTANDARD LVCMOS33 [get_ports {led4}]

# led:5
set_property LOC V17 [get_ports {led5}]
set_property IOSTANDARD LVCMOS33 [get_ports {led5}]

# led:6
set_property LOC U17 [get_ports {led6}]
set_property IOSTANDARD LVCMOS33 [get_ports {led6}]

# led:7
set_property LOC U16 [get_ports {led7}]
set_property IOSTANDARD LVCMOS33 [get_ports {led7}]

# led:8
set_property LOC V16 [get_ports {led8}]
set_property IOSTANDARD LVCMOS33 [get_ports {led8}]

# led:9
set_property LOC T15 [get_ports {led9}]
set_property IOSTANDARD LVCMOS33 [get_ports {led9}]

# btnc:0
set_property LOC N17 [get_ports {btnc}]
set_property IOSTANDARD LVCMOS33 [get_ports {btnc}]

# btnr:0
set_property LOC M17 [get_ports {btnr}]
set_property IOSTANDARD LVCMOS33 [get_ports {btnr}]

# btnl:0
set_property LOC P17 [get_ports {btnl}]
set_property IOSTANDARD LVCMOS33 [get_ports {btnl}]

# pwm:0
set_property LOC H16 [get_ports {pwm}]
set_property IOSTANDARD LVCMOS33 [get_ports {pwm}]

# ir_inout:0
set_property LOC H14 [get_ports {ir_inout}]
set_property IOSTANDARD LVCMOS33 [get_ports {ir_inout}]

# us_trigger:0
set_property LOC J2 [get_ports {us_trigger}]
set_property IOSTANDARD LVCMOS33 [get_ports {us_trigger}]

# us_echo:0
set_property LOC G6 [get_ports {us_echo}]
set_property IOSTANDARD LVCMOS33 [get_ports {us_echo}]

# salida1:0
set_property LOC F6 [get_ports {salida1}]
set_property IOSTANDARD LVCMOS33 [get_ports {salida1}]

# motor_carro:0
set_property LOC E7 [get_ports {motor_carro0}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_carro0}]

# motor_carro:1
set_property LOC J3 [get_ports {motor_carro1}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_carro1}]

# motor_carro:2
set_property LOC K1 [get_ports {motor_carro2}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_carro2}]

# motor_carro:3
set_property LOC H4 [get_ports {motor_carro3}]
set_property IOSTANDARD LVCMOS33 [get_ports {motor_carro3}]

# vga_red:0
set_property LOC A3 [get_ports {vga_red0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red0}]

# vga_red:1
set_property LOC B4 [get_ports {vga_red1}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red1}]

# vga_red:2
set_property LOC C5 [get_ports {vga_red2}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red2}]

# vga_red:3
set_property LOC A4 [get_ports {vga_red3}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_red3}]

# vga_green:0
set_property LOC C6 [get_ports {vga_green0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green0}]

# vga_green:1
set_property LOC A5 [get_ports {vga_green1}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green1}]

# vga_green:2
set_property LOC B6 [get_ports {vga_green2}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green2}]

# vga_green:3
set_property LOC A6 [get_ports {vga_green3}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_green3}]

# vga_blue:0
set_property LOC B7 [get_ports {vga_blue0}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue0}]

# vga_blue:1
set_property LOC C7 [get_ports {vga_blue1}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue1}]

# vga_blue:2
set_property LOC D7 [get_ports {vga_blue2}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue2}]

# vga_blue:3
set_property LOC D8 [get_ports {vga_blue3}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_blue3}]

# cam_data_in:0
set_property LOC C17 [get_ports {cam_data_in0}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in0}]

# cam_data_in:1
set_property LOC G18 [get_ports {cam_data_in1}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in1}]

# cam_data_in:2
set_property LOC D18 [get_ports {cam_data_in2}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in2}]

# cam_data_in:3
set_property LOC G13 [get_ports {cam_data_in3}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in3}]

# cam_data_in:4
set_property LOC E17 [get_ports {cam_data_in4}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in4}]

# cam_data_in:5
set_property LOC F16 [get_ports {cam_data_in5}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in5}]

# cam_data_in:6
set_property LOC E18 [get_ports {cam_data_in6}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in6}]

# cam_data_in:7
set_property LOC F13 [get_ports {cam_data_in7}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_data_in7}]

# cam_xclk:0
set_property LOC F18 [get_ports {cam_xclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_xclk}]

# cam_pclk:0
set_property LOC G16 [get_ports {cam_pclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_pclk}]

# vga_hsync:0
set_property LOC B11 [get_ports {vga_hsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_hsync}]

# vga_vsync:0
set_property LOC B12 [get_ports {vga_vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {vga_vsync}]

# cam_href:0
set_property LOC D14 [get_ports {cam_href}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_href}]

# cam_vsync:0
set_property LOC E16 [get_ports {cam_vsync}]
set_property IOSTANDARD LVCMOS33 [get_ports {cam_vsync}]

################################################################################
# Design constraints
################################################################################

set_property INTERNAL_VREF 0.750 [get_iobanks 34]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets cam_pclk_IBUF]

################################################################################
# Clock constraints
################################################################################


################################################################################
# False path constraints
################################################################################


set_false_path -quiet -through [get_nets -hierarchical -filter {mr_ff == TRUE}]

set_false_path -quiet -to [get_pins -filter {REF_PIN_NAME == PRE} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE || ars_ff2 == TRUE}]]

set_max_delay 2 -quiet -from [get_pins -filter {REF_PIN_NAME == C} -of_objects [get_cells -hierarchical -filter {ars_ff1 == TRUE}]] -to [get_pins -filter {REF_PIN_NAME == D} -of_objects [get_cells -hierarchical -filter {ars_ff2 == TRUE}]]