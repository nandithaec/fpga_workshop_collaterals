set_property IOSTANDARD LVCMOS33 [get_ports {counter_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {counter_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {counter_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {counter_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
set_property PACKAGE_PIN L1 [get_ports {counter_out[3]}]
set_property PACKAGE_PIN P1 [get_ports {counter_out[2]}]
set_property PACKAGE_PIN N3 [get_ports {counter_out[1]}]
set_property PACKAGE_PIN P3 [get_ports {counter_out[0]}]
set_property PACKAGE_PIN W5 [get_ports clk]
set_property PACKAGE_PIN R2 [get_ports rst]





create_clock -period 10.000 -name clk -waveform {0.000 5.000} [get_ports clk]
