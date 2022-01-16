create_clock -period 5 up_counter_clk
set_input_delay -clock up_counter_clk -max 0 [get_ports {*}]
set_output_delay -clock up_counter_clk -max 0 [get_ports {*}]
