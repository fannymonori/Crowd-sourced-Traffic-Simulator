# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000

create_project -in_memory -part xc7z010clg400-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/misi/xildemo/project_1/project_1.cache/wt [current_project]
set_property parent.project_path /home/misi/xildemo/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths /home/misi/xildemo/ov7670_ip_core [current_project]
add_files /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/design_1_rst_processing_system7_0_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_1_0/design_1_axi_uartlite_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_1_0/design_1_axi_uartlite_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_1_0/design_1_axi_uartlite_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_axi_vdma_0_0/design_1_axi_vdma_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_proc_sys_reset_0_0/design_1_proc_sys_reset_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib /home/misi/xildemo/project_1/project_1.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc /home/misi/xildemo/ZYBO_Master.xdc
set_property used_in_implementation false [get_files /home/misi/xildemo/ZYBO_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file design_1_wrapper.hwdef }
synth_design -top design_1_wrapper -part xc7z010clg400-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }