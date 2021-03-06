create_project unittest_proj /home/tsotnep/ownCloud/workspace/vivado/unittest_proj -part xc7z020clg484-1 -force
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property  ip_repo_paths  /home/tsotnep/ownCloud/workspace/vivado/ip_repo [current_project]
set_property target_language VHDL [current_project]


add_files -norecurse -scan_for_includes {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd 
}

import_files -norecurse {
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/mlite_pack.vhd 
/home/tsotnep/ownCloud/git/x_bonfire/hardlinks/ram_xilinx_0.vhd 
}

update_compile_order -fileset sources_1
update_compile_order -fileset sim_1
update_compile_order -fileset sources_1

launch_runs synth_1 -jobs 2
# wait_on_run synth_1
# close_project