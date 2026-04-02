# =========================================================
# PWM DESIGN - ULTRAZED MINIMAL CONSTRAINTS
# =========================================================

# -------------------------
# CLOCK INPUT (use P side)
# -------------------------
set_property PACKAGE_PIN N4 [get_ports clk]
set_property IOSTANDARD LVCMOS18 [get_ports clk]

create_clock -period 10.000 [get_ports clk]


# -------------------------
# PWM OUTPUT ? LED1
# -------------------------
set_property PACKAGE_PIN R7 [get_ports Outport]
set_property IOSTANDARD LVCMOS18 [get_ports Outport]


# -------------------------
# RESET (optional - tie to push button)
# -------------------------
set_property PACKAGE_PIN R2 [get_ports reset]
set_property IOSTANDARD LVCMOS18 [get_ports reset]


# -------------------------
# CLK ENABLE (simplify design)
# -------------------------
# OPTION A (recommended):
# Comment this out and modify VHDL:
#enb <= '1';

# OPTION B (if kept):
#set_property PACKAGE_PIN R1 [get_ports clk_enable]
#set_property IOSTANDARD LVCMOS18 [get_ports clk_enable]