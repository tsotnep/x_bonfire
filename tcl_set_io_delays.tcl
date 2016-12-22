#launch_runs synth_1 -jobs 2
#launch_runs impl_1 -jobs 2
#wait_on_run impl_1
#open_run impl_1

#setting timing constraints, input and output delays

#set my_input uart_read
#set_input_delay -clock [get_clocks sys_clock] -max 3 $my_input
#set_input_delay -clock [get_clocks sys_clock] -min 1 $my_input
#report_timing -from [all_inputs]
#report_timing -from $my_input -setup
#report_timing -from $my_input -hold

#set my_input reset_rtl_0
#set_input_delay -clock [get_clocks sys_clock] -max 3 $my_input
#set_input_delay -clock [get_clocks sys_clock] -min 1 $my_input
#report_timing -from [all_inputs]
#report_timing -from $my_input -setup
#report_timing -from $my_input -hold

#set my_output uart_write
#set_output_delay -clock [get_clocks sys_clock] -max 3 $my_output
#set_output_delay -clock [get_clocks sys_clock] -min 1 $my_output
#report_timing -from [all_outputs]
#report_timing -from $my_output -setup
#report_timing -from $my_output -hold

#set_property target_constrs_file /home/tsotnep/ownCloud/workspace/vivado/noc_jtag_proj/noc_jtag_proj.srcs/constrs_1/imports/src/constr.xdc [current_fileset -constrset]
#save_constraints -force
#close_design
