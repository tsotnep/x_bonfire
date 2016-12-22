# ####FOR XMD

set PROJ_PATH       /home/tsotnep/ownCloud/workspace/vivado/
set PROJ_NAME       noc_zynq_proj
set BLOCK_DESIGN    design_1
set APP_NAME        zapp_1
set FSBL_NAME       fsbl
set HW_PLATFORM_N   ${BLOCK_DESIGN}_wrapper_hw_platform_0
set IP_NAME         MMULT_AXI_STREAM
set IP_LOC          /home/tsotne/workspaceVivado/ip_repo
set SRC_LOC         /home/tsotne/git/ETSE_GDSP/src/hdl
set git_diff        /home/tsotne/git/ETSE_GDSP/src/git_diff

xdisconnect -cable
connect arm hw
rst -srst

#fpga -f ${PROJ_PATH}/${PROJ_NAME}/${PROJ_NAME}.sdk/${HW_PLATFORM_N}/${BLOCK_DESIGN}_wrapper.bit
fpga -f /home/tsotnep/ownCloud/workspace/vivado/REPORTS/download.bit

source ${PROJ_PATH}/${PROJ_NAME}/${PROJ_NAME}.sdk/${HW_PLATFORM_N}/ps7_init.tcl
ps7_init
ps7_post_config

dow ${PROJ_PATH}/${PROJ_NAME}/${PROJ_NAME}.sdk/${APP_NAME}/Debug/${APP_NAME}.elf
run
