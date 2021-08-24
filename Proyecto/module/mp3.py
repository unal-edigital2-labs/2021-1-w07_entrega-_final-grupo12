from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class MP3(Module,AutoCSR):
    def __init__(self, salida1):
        self.clk = ClockSignal()   
        self.pasar1 = CSRStorage()
        self.salida1 = salida1

        self.specials +=Instance("MP3",
            i_clk = self.clk,
            i_pasar1 = self.pasar1.storage,
            o_salida1 = self.salida1,
        )
