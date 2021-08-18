#!/usr/bin/env python3

from migen import *
from migen.genlib.io import CRG
from migen.genlib.cdc import MultiReg

import nexys4ddr as tarjeta
#import c4e6e10 as tarjeta

from litex.soc.integration.soc_core import *
from litex.soc.integration.builder import *
from litex.soc.interconnect.csr import *

from litex.soc.cores import gpio
from module import rgbled
from module import sevensegment
from module import camara
from module import pwm
from module import infrarrojo
from module import ultrasonido
from module import mp3
from module import motor





# BaseSoC ------------------------------------------------------------------------------------------

class BaseSoC(SoCCore):
	def __init__(self):
		platform = tarjeta.Platform()
		
		## add source verilog

		
		#platform.add_source("module/verilog/camara.v")

                #PWM
		platform.add_source("module/verilog/BloquePWM.v")
		platform.add_source("module/verilog/PWM.v")
		platform.add_source("module/verilog/MaquinaEstadosPWM.v")
		platform.add_source("module/verilog/DivFreqPWM.v")
		
		#UltraSonido
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/bloqueultrasonido.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/contador.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/divisor.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/divisorfrec.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/divisorfrecd.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/divisorfrecgen.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/divisorfrecme.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/genpulsos.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/maquinadeestados.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/meultrasonido.v")
		platform.add_source("module/verilog/UltraSonido/Ultrasonido/ultrasonido.v")
		
		#Camara
		platform.add_source("module/verilog/Camara/test_cam.v")
		platform.add_source("module/verilog/Camara/cam_read.v")
		platform.add_source("module/verilog/Camara/buffer_ram_dp.v")
		platform.add_source("module/verilog/Camara/clk24_25_nexys4.v")
		platform.add_source("module/verilog/Camara/clk_32MHZ_to_25M_24M.v")
		platform.add_source("module/verilog/Camara/clk_nexys2.v")
		platform.add_source("module/verilog/Camara/VGA_driver.v")
	
		#IR
		platform.add_source("module/verilog/modulo_ir.v")
		
		#MP3
		platform.add_source("module/verilog/MP3/MP3.v")
		
		#MOTOR
		platform.add_source("module/verilog/Motor/motores.v")
		
		# SoC with CPU
		SoCCore.__init__(self, platform,
 		cpu_type="picorv32",
#		cpu_type="vexriscv",
		clk_freq=100e6,
		integrated_rom_size=0x8000,
		integrated_main_ram_size=16*1024)

		# Clock Reset Generation
		self.submodules.crg = CRG(platform.request("clk"), ~platform.request("cpu_reset"))

		# Leds
		SoCCore.add_csr(self,"leds")
		user_leds = Cat(*[platform.request("led", i) for i in range(10)])
		self.submodules.leds = gpio.GPIOOut(user_leds)
		
		# Switchs
		SoCCore.add_csr(self,"switchs")
		user_switchs = Cat(*[platform.request("sw", i) for i in range(8)])
		self.submodules.switchs = gpio.GPIOIn(user_switchs)
		
		# Buttons
		SoCCore.add_csr(self,"buttons")
		user_buttons = Cat(*[platform.request("btn%c" %c) for c in ['c','r','l']])
		self.submodules.buttons = gpio.GPIOIn(user_buttons)
		
		# 7segments Display
		SoCCore.add_csr(self,"display")
		display_segments = Cat(*[platform.request("display_segment", i) for i in range(8)])
		display_digits = Cat(*[platform.request("display_digit", i) for i in range(8)])
		self.submodules.display = sevensegment.SevenSegment(display_segments,display_digits)

		# RGB leds
		SoCCore.add_csr(self,"ledRGB_1")
		self.submodules.ledRGB_1 = rgbled.RGBLed(platform.request("ledRGB",1))
		
		SoCCore.add_csr(self,"ledRGB_2")
		self.submodules.ledRGB_2 = rgbled.RGBLed(platform.request("ledRGB",2))
		
				
		# VGA
		#SoCCore.add_csr(self,"vga_cntrl")
		#vga_red = Cat(*[platform.request("vga_red", i) for i in range(4)])
		#vga_green = Cat(*[platform.request("vga_green", i) for i in range(4)])
		#vga_blue = Cat(*[platform.request("vga_blue", i) for i in range(4)])
		#self.submodules.vga_cntrl = vgacontroller.VGAcontroller(platform.request("hsync"),platform.request("vsync"), vga_red, 			#vga_green, vga_blue)
		
		#PWM
		SoCCore.add_csr(self,"pwm_cntrl")
		self.submodules.pwm_cntrl = pwm.PWM(platform.request("pwm"))
		
		#Infrarrojo
		SoCCore.add_csr(self,"infrarrojo_cntrl")
		self.submodules.infrarrojo_cntrl = infrarrojo.Infrarrojo(platform.request("ir_inout"))
		
		#Ultrasonido
		SoCCore.add_csr(self, "ultrasonido")
		self.submodules.ultrasonido = ultrasonido.Ultrasonido(platform.request("us_trigger"), platform.request("us_echo"))
		
		#Mp3
		SoCCore.add_csr(self, "mp3_cntrl")
		self.submodules.mp3 = mp3.MP3(platform.request("salida1"))
		
		#Motor
		
		SoCCore.add_csr(self, "motor_cntrl")
		motor_carro = Cat(*[platform.request("motor_carro", i) for i in range(4)])
		self.submodules.motor = motor.Motor(motor_carro)
		
        
		#camara
		SoCCore.add_csr(self,"camara_cntrl")
		vga_red = Cat(*[platform.request("vga_red", i) for i in range(4)])
		vga_green = Cat(*[platform.request("vga_green", i) for i in range(4)])
		vga_blue = Cat(*[platform.request("vga_blue", i) for i in range(4)])
		#SoCCore.add_interrupt(self,"camara_cntrl")
		cam_data_in = Cat(*[platform.request("cam_data_in", i) for i in range(8)])	
		self.submodules.camara_cntrl=camara.Camara(platform.request("cam_xclk"),platform.request("cam_pclk"),cam_data_in,platform.request("vga_hsync"),platform.request("vga_vsync"), vga_red,vga_green, vga_blue,platform.request("cam_href"),platform.request("cam_vsync"))

# Build --------------------------------------------------------------------------------------------
if __name__ == "__main__":
	builder = Builder(BaseSoC(),csr_csv="Soc_MemoryMap.csv")
	builder.build()

