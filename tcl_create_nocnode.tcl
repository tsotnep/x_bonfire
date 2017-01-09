create_project nocnode_proj /home/tsotnep/ownCloud/workspace/vivado/nocnode_proj -part xc7z020clg484-1 -force
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property  ip_repo_paths  /home/tsotnep/ownCloud/workspace/vivado/ip_repo [current_project]
set_property target_language VHDL [current_project]


add_files -norecurse -scan_for_includes {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mult.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/control.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pipeline.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/alu.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pc_next.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mem_ctrl.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/shifter.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/bus_mux.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/reg_bank.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_cpu.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/eth_dma.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/uart.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/cache.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NI.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/plasma.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NoC_Node.vhd}

import_files -norecurse {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mult.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/control.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pipeline.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/alu.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/pc_next.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mem_ctrl.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/shifter.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/bus_mux.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/reg_bank.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_cpu.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/eth_dma.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/uart.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/cache.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NI.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/plasma.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/NoC_Node.vhd}

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 2
wait_on_run synth_1
close_project