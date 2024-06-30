derive_pll_clocks -create_base_clocks

#250 MHz from conf clock
create_clock -period 4 [get_ports u0/clk_int]
