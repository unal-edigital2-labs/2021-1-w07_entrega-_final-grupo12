from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class Infrarrojo(Module,AutoCSR):
    def __init__(self, ir_io):
        self.clk = ClockSignal()   
        self.rst = ResetSignal()  

        self.ir_io = ir_io

        #self.descarga = descarga
        self.distancia = CSRStatus(8)

        self.specials +=Instance("modulo_ir",
            i_clk = self.clk,
            i_rst = self.rst,
            io_ir_io = self.ir_io,
            o_distancia = self.distancia.status,
        )
