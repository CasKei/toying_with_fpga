set projDir "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/vivado"
set projName "LearningFPGA"
set topName top
set device xc7a35tftg256-1
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/verilog/au_top_0.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/verilog/full_adder_1.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/verilog/eight_bit_adder_2.v" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/verilog/reset_conditioner_3.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set xdcSources [list "C:/Users/cassi/Downloads/Apps/library/components/au.xdc" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/constraint/io.xdc" "C:/Users/cassi/Workspace/repostorage/toying_with_fpga/LearningFPGA/work/constraint/alchitry.xdc" ]
read_xdc $xdcSources
set_property STEPS.WRITE_BITSTREAM.ARGS.BIN_FILE true [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1 -jobs 8
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 8
wait_on_run impl_1
