create_project nocnet_proj /home/tsotnep/ownCloud/workspace/vivado/nocnet_proj -part xc7z020clg484-1 -force
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property  ip_repo_paths  /home/tsotnep/ownCloud/workspace/vivado/ip_repo [current_project]
set_property target_language VHDL [current_project]

add_files -norecurse -scan_for_includes {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/TB_Package_32_bit_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/plasma.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NoC_Node.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/network_2x2_NI_credit_based_tb.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/arbiter_in.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/network_2x2_NI_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/alu.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/shifter.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/LBDR.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/Router_32_bit_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/bus_mux.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/reg_bank.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/arbiter_out.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_cpu.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/noc2x2_v1_0.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/noc2x2_v1_0_S00_AXI.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/allocator.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/eth_dma.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mult.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/control.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/xbar.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pipeline.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pc_next.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mem_ctrl.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NI.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/uart.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/cache.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/FIFO_one_hot_credit_based.vhd}

import_files -norecurse {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/TB_Package_32_bit_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/plasma.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NoC_Node.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/network_2x2_NI_credit_based_tb.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/arbiter_in.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/network_2x2_NI_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/alu.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/shifter.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/LBDR.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/Router_32_bit_credit_based.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/bus_mux.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/reg_bank.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/arbiter_out.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_cpu.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/noc2x2_v1_0.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/noc2x2_v1_0_S00_AXI.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/allocator.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/eth_dma.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mult.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/control.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/xbar.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pipeline.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pc_next.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mem_ctrl.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NI.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/uart.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/cache.vhd
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/FIFO_one_hot_credit_based.vhd}


update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1

ipx::package_project -root_dir /home/tsotnep/ownCloud/workspace/vivado/ip_repo/nocnet -vendor user.org -library user -taxonomy /UserIP -import_files -set_current false
ipx::unload_core /home/tsotnep/ownCloud/workspace/vivado/ip_repo/nocnet/component.xml
ipx::edit_ip_in_project -upgrade true -name tmp_edit_project -directory /home/tsotnep/ownCloud/workspace/vivado/ip_repo/nocnet /home/tsotnep/ownCloud/workspace/vivado/ip_repo/nocnet/component.xml
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
ipx::infer_bus_interfaces xilinx.com:signal:clock_rtl:1.0 [ipx::current_core]
set_property core_revision 2 [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]
ipx::update_checksums [ipx::current_core]
ipx::save_core [ipx::current_core]
close_project -delete
set_property  ip_repo_paths  /home/tsotnep/ownCloud/workspace/vivado/ip_repo/nocnet [current_project]
update_ip_catalog
puts "Project was created and Packaged as IP : successfully"
close_project
