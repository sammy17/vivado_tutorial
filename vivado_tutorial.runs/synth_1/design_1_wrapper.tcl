# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir F:/Medium/vivado_tutorial/vivado_tutorial.cache/wt [current_project]
set_property parent.project_path F:/Medium/vivado_tutorial/vivado_tutorial.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zc702:part0:1.2 [current_project]
set_property ip_repo_paths f:/Medium/vivado_hls [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files F:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_1/design_1_processing_system7_0_1.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_conv_0_2/constraints/conv_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_1/design_1_rst_processing_system7_0_50M_1_board.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_1/design_1_rst_processing_system7_0_50M_1.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_rst_processing_system7_0_50M_1/design_1_rst_processing_system7_0_50M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/design_1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_ooc.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_auto_us_1/design_1_auto_us_1_clocks.xdc]
set_property used_in_implementation false [get_files -all f:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_2/design_1_auto_pc_2_ooc.xdc]
set_property used_in_implementation false [get_files -all F:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files F:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib F:/Medium/vivado_tutorial/vivado_tutorial.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top design_1_wrapper -part xc7z020clg484-1
write_checkpoint -noxdef design_1_wrapper.dcp
catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
