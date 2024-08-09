create_clock -name clk_i -period 2.0 -waveform {0 1} [get_ports clk_i]
set_max_transition 0.3 [current_design]

set_clock_uncertainty 0.025 [get_clocks clk_i]
set_clock_transition -rise 0.04 [get_clocks clk_i]
set_clock_transition -fall 0.04 [get_clocks clk_i]

set_dont_touch clk_i
set_dont_touch rst_ni

set_clock_latency -max -source 0.4 [get_clocks clk_i]
set_output_delay -max -clock clk_i 0.05 [all_outputs]
set_false_path -from [get_ports rst_ni]

check_timing
check_design

