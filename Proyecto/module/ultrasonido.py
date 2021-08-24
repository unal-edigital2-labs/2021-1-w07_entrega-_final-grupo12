from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class Ultrasonido(Module,AutoCSR):
    def __init__(self, trigger, echo):
        self.clk = ClockSignal()   
        self.rst = ResetSignal()

        self.trigger = trigger
        self.echo = echo

        self.orden = CSRStorage(1)
        self.done = CSRStatus(1)
        self.d = CSRStatus(8)

        self.specials +=Instance("bloqueultrasonido",
            i_clk = self.clk,
            i_rst = self.rst,
            i_orden = self.orden.storage,
            i_echo = self.echo,
            o_trigger = self.trigger,
            o_done = self.done.status,
            o_d = self.d.status,
        )
