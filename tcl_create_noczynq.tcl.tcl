create_project noczynq_proj /home/tsotnep/ownCloud/workspace/vivado/noczynq_proj -part xc7z020clg484-1 -force
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property  ip_repo_paths  /home/tsotnep/ownCloud/workspace/vivado/ip_repo [current_project]
set_property target_language VHDL [current_project]
create_bd_design "design_1"
update_compile_order -fileset sources_1
update_ip_catalog
startgroup
create_bd_cell -type ip -vlnv user.org:user:noc2x2_v1_0:1.0 noc2x2_v1_0_0
endgroup




startgroup
create_bd_port -dir I uart_read
connect_bd_net [get_bd_pins /noc2x2_v1_0_0/uart_read] [get_bd_ports uart_read]
endgroup
startgroup
create_bd_port -dir O uart_write
connect_bd_net [get_bd_pins /noc2x2_v1_0_0/uart_write] [get_bd_ports uart_write]
endgroup


#add GPIO
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0
endgroup
startgroup
set_property -dict [list CONFIG.GPIO_BOARD_INTERFACE {leds_8bits} CONFIG.C_GPIO_WIDTH {8} CONFIG.C_ALL_OUTPUTS {1}] [get_bd_cells axi_gpio_0]
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:board -config {Board_Interface "leds_8bits ( LED ) " }  [get_bd_intf_pins axi_gpio_0/GPIO]
endgroup


#zynq
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0
endgroup
startgroup
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins noc2x2_v1_0_0/s00_axi]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config {Master "/processing_system7_0/M_AXI_GP0" Clk "Auto" }  [get_bd_intf_pins axi_gpio_0/S_AXI]
endgroup
apply_bd_automation -rule xilinx.com:bd_rule:processing_system7 -config {make_external "FIXED_IO, DDR" apply_board_preset "1" Master "Disable" Slave "Disable" }  [get_bd_cells processing_system7_0]
startgroup
set_property -dict [list CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {25.000000}] [get_bd_cells processing_system7_0]
endgroup

add_files -fileset constrs_1 -norecurse /home/tsotnep/ownCloud/git/x_bonfire/src/constr.xdc

import_files -fileset constrs_1 /home/tsotnep/ownCloud/git/x_bonfire/src/constr.xdc
make_wrapper -files [get_files /home/tsotnep/ownCloud/workspace/vivado/noczynq_proj/noczynq_proj.srcs/sources_1/bd/design_1/design_1.bd] -top
add_files -norecurse /home/tsotnep/ownCloud/workspace/vivado/noczynq_proj/noczynq_proj.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1


# launch_runs synth_1 -jobs 2
# wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream -jobs 2
# wait_on_run impl_1

# close_project