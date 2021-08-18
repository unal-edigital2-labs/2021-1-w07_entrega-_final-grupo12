from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class Motor(Module,AutoCSR):
    def __init__(self, salida):
        self.clk = ClockSignal()   
        self.entrada = CSRStorage(4)
        self.salida = salida

        self.specials +=Instance("motores",
            i_clk = self.clk,
            i_entrada = self.entrada.storage,
            o_salida = self.salida,
        )

	
