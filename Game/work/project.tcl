set projDir "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/vivado"
set projName "Game"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/au_top_0.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/sevensegment_1.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/beta_2.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/reset_conditioner_3.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/edge_detector_4.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/button_conditioner_5.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/alu_16_6.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/game_CU_7.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/regfile_8.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/randomnumber_9.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/pipeline_10.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/adder_16_11.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/boolean_16_12.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/shifter_16_13.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/compare_16_14.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/edge_detector_15.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/counter_16.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/verilog/pn_gen_17.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/cassi/Downloads/Apps/library/components/au.xdc" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/Game/work/constraint/custom.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
