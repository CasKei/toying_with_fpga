
r
Command: %s
53*	vivadotcl2A
-write_bitstream -force au_top_0.bit -bin_file2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Unspecified I/O Standard: 8 out of 62 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2?
 "=
display_dice_seg[6:0]display_dice_seg2default:default";
display_dice_sel[0]display_dice_sel2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px? 
?	
?Unconstrained Logical Port: 10 out of 62 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2?
 "=
display_dice_seg[6:0]display_dice_seg2default:default";
display_dice_sel[0]display_dice_sel2default:default"B
display_p1curr_seg[2]display_p1curr_seg[2]2default:default"B
display_p1curr_sel[1]display_p1curr_sel[1]2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2X
 "B
game/gamealu/adder/s0	game/gamealu/adder/s02default:default2default:default2b
 "L
game/gamealu/adder/s0/A[29:0]game/gamealu/adder/s0/A2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2X
 "B
game/gamealu/adder/s0	game/gamealu/adder/s02default:default2default:default2b
 "L
game/gamealu/adder/s0/B[17:0]game/gamealu/adder/s0/B2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPIP-1h px? 
?
?PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2X
 "B
game/gamealu/adder/s0	game/gamealu/adder/s02default:default2default:default2b
 "L
game/gamealu/adder/s0/P[47:0]game/gamealu/adder/s0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-1h px? 
?
?MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2X
 "B
game/gamealu/adder/s0	game/gamealu/adder/s02default:default2default:default2b
 "L
game/gamealu/adder/s0/P[47:0]game/gamealu/adder/s0/P2default:default2default:default2=
 %DRC|Netlist|Instance|Pipeline|DSP48E12default:default8ZDPOP-2h px? 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 4 Warnings2default:defaultZ12-3199h px? 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px? 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
92default:default2
42default:default2
02default:default2
32default:defaultZ4-41h px? 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Apr 18 01:36:32 20222default:defaultZ17-206h px? 


End Record