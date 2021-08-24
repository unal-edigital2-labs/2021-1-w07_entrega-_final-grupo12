from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class PWM(Module,AutoCSR):
    def __init__(self, pwm):
        self.clk = ClockSignal()   
        self.orden = CSRStorage(3)
        self.pwm = pwm

        self.specials +=Instance("BloquePWM",
            i_clk = self.clk,
            i_orden = self.orden.storage,
            o_pwm = self.pwm,
        )

	
