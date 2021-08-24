from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class Camara(Module,AutoCSR):
    def __init__(self, CAM_xclk,CAM_pclk,CAM_px_data,VGA_Hsync_n,VGA_Vsync_n,VGA_R,VGA_G,VGA_B,CAM_href,CAM_vsync):
        self.clk = ClockSignal()   
        self.rst = ResetSignal() 
        self.CAM_xclk = CAM_xclk
        self.VGA_R = VGA_R
        self.VGA_G = VGA_G
        self.VGA_B = VGA_B
        self.VGA_Vsync_n = VGA_Vsync_n
        self.VGA_Hsync_n = VGA_Hsync_n
        self.CAM_pclk = CAM_pclk
        self.CAM_vsync= CAM_vsync
        self.CAM_href= CAM_href
        self.CAM_px_data = CAM_px_data
        self.specials +=Instance("test_cam",
            i_clk = self.clk,
            i_rst = self.rst,
            o_CAM_xclk = self.CAM_xclk,
            i_CAM_pclk = self.CAM_pclk,
            i_CAM_px_data=self.CAM_px_data,
            o_VGA_R = self.VGA_R,
            o_VGA_G = self.VGA_G,
            o_VGA_B = self.VGA_B,
            o_VGA_Vsync_n = self.VGA_Vsync_n,
            o_VGA_Hsync_n = self.VGA_Hsync_n,
            o_CAM_vsync =self.CAM_vsync,
            o_CAM_href =self.CAM_href,  
        )
        
          #o_done =self.done.status,
            #i_mem_px_addr=self.mem_px_addr.storage,
            #o_mem_px_data= self.mem_px_data.status,
       
        #self.submodules.ev = EventManager()
        #self.ev.ok = EventSourceProcess()
        #self.ev.finalize()
 
        #self.ev.ok.trigger.eq(self.done.status)
