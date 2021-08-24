
# Create Project

create_project -force -name nexys4ddr -part xc7a100t-CSG324-1
set_msg_config -id {Common 17-55} -new_severity {Warning}

# Add Sources

read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Servomotor/BloquePWM.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Servomotor/PWM.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Servomotor/MaquinaEstadosPWM.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Servomotor/DivFreqPWM.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/bloqueultrasonido.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/contador.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/divisor.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/divisorfrec.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/divisorfrecd.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/divisorfrecgen.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/divisorfrecme.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/genpulsos.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/maquinadeestados.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/meultrasonido.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/UltraSonido/Ultrasonido/ultrasonido.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/test_cam.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/cam_read.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/buffer_ram_dp.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/clk24_25_nexys4.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/clk_32MHZ_to_25M_24M.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/clk_nexys2.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Camara/VGA_driver.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Infrarrojo/modulo_ir.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/MP3/MP3.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/module/verilog/Motor/motores.v}
read_verilog {/home/camilo/install_litex/pythondata-cpu-picorv32/pythondata_cpu_picorv32/verilog/picorv32.v}
read_verilog {/home/camilo/Escritorio/Proyecto_Definitivo/Proyecto_Dig2Fine/SoC_project_includeVerilog/build/nexys4ddr/gateware/nexys4ddr.v}

# Add EDIFs


# Add IPs


# Add constraints

read_xdc nexys4ddr.xdc
set_property PROCESSING_ORDER EARLY [get_files nexys4ddr.xdc]

# Add pre-synthesis commands


# Synthesis

synth_design -directive default -top nexys4ddr -part xc7a100t-CSG324-1

# Synthesis report

report_timing_summary -file nexys4ddr_timing_synth.rpt
report_utilization -hierarchical -file nexys4ddr_utilization_hierarchical_synth.rpt
report_utilization -file nexys4ddr_utilization_synth.rpt

# Optimize design

opt_design -directive default

# Add pre-placement commands


# Placement

place_design -directive default

# Placement report

report_utilization -hierarchical -file nexys4ddr_utilization_hierarchical_place.rpt
report_utilization -file nexys4ddr_utilization_place.rpt
report_io -file nexys4ddr_io.rpt
report_control_sets -verbose -file nexys4ddr_control_sets.rpt
report_clock_utilization -file nexys4ddr_clock_utilization.rpt

# Add pre-routing commands


# Routing

route_design -directive default
phys_opt_design -directive default
write_checkpoint -force nexys4ddr_route.dcp

# Routing report

report_timing_summary -no_header -no_detailed_paths
report_route_status -file nexys4ddr_route_status.rpt
report_drc -file nexys4ddr_drc.rpt
report_timing_summary -datasheet -max_paths 10 -file nexys4ddr_timing.rpt
report_power -file nexys4ddr_power.rpt

# Bitstream generation

write_bitstream -force nexys4ddr.bit 

# End

quit