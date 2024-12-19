from migen import *
from litex.soc.integration.soc_core import SoCCore
from litex.soc.integration.builder import Builder
from litex.soc.cores.cpu.vexriscv import VexRiscv
from litex.build.generic_platform import *
from litex_boards.platforms import digilent_arty
from litex.soc.cores.gpio import GPIOOut

# Define the LED in terms of LiteX pins
_io = [
    ("user_led", 0, Pins("user_led:0"), IOStandard("LVCMOS33")),
    ("gpio", 0, Pins("P1 P2 P3 P4"), IOStandard("LVCMOS33"))
]

class LEDSoC(SoCCore):
    def __init__(self):
        # Load the Arty platform as the base (you can adjust based on your FPGA)
        platform = digilent_arty.Platform()
        
        # Add the LED
        platform.add_extension(_io)
        
        # Initialize the SoC with a VexRiscv CPU and default peripherals
        SoCCore.__init__(self, platform, clk_freq=50e6, cpu_type="naxriscv", integrated_rom_size=0x8000)

        # Add the LED to the SoC
        led = platform.request("user_led")
        self.comb += led.eq(1)  # Turn on the LED

        gpio_pads = platform.request("gpio")
        self.submodules.gpio = GPIOOut(gpio_pads)
        self.add_csr("gpio")

# Build the SoC
soc = LEDSoC()
builder = Builder(soc)
builder.build()