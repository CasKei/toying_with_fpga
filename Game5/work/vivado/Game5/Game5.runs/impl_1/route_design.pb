
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
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
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
?Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s%s*DRC2W
 "A
display_p1curr_seg[6:0]display_p1curr_seg2default:default2default:default2X
 "B
display_p1curr_seg[2]display_p1curr_seg[2]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px? 
?
?Placement Constraints Check for IO constraints: Partially locked IO Bus is found. Following components of the IO Bus %s are not locked:  %s%s*DRC2W
 "A
display_p1curr_sel[1:0]display_p1curr_sel2default:default2default:default2X
 "B
display_p1curr_sel[1]display_p1curr_sel[1]2default:default2default:default28
  DRC|Implementation|Placement|IOs2default:default8ZPLIO-3h px? 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
C
.Phase 1 Build RT Design | Checksum: 17aa85a58
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:33 . Memory (MB): peak = 1760.305 ; gain = 75.4302default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
B
-Phase 2.1 Create Timer | Checksum: 17aa85a58
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:33 . Memory (MB): peak = 1760.309 ; gain = 75.4342default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 17aa85a58
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:33 . Memory (MB): peak = 1766.324 ; gain = 81.4492default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 17aa85a58
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:35 ; elapsed = 00:00:33 . Memory (MB): peak = 1766.324 ; gain = 81.4492default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
C
.Phase 2.4 Update Timing | Checksum: 2798504bb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:33 . Memory (MB): peak = 1771.941 ; gain = 87.0662default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.237 | TNS=-1.538 | WHS=-0.143 | THS=-4.952 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 22530b57a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:34 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
q

Phase %s%s
101*constraints2
3.1 2default:default2"
Global Routing2default:defaultZ18-101h px? 
D
/Phase 3.1 Global Routing | Checksum: 22530b57a
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:34 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
C
.Phase 3 Initial Routing | Checksum: 12330a11b
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:36 ; elapsed = 00:00:34 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-1.286 | TNS=-12.160| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.1 Global Iteration 0 | Checksum: b60246bb
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:44 ; elapsed = 00:00:40 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.762 | TNS=-6.260 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
G
2Phase 4.2 Global Iteration 1 | Checksum: ab5b60a4
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:48 ; elapsed = 00:00:43 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.726 | TNS=-5.703 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 2b1a58f85
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 2b1a58f85
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:54 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 2b9a7cae0
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.635 | TNS=-4.914 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
B
-Phase 5.1 Delay CleanUp | Checksum: df6f1790
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
L
7Phase 5.2 Clock Skew Optimization | Checksum: df6f1790
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
N
9Phase 5 Delay and Skew Optimization | Checksum: df6f1790
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 6.1.1 Update Timing | Checksum: ebbf69c0
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-0.632 | TNS=-4.887 | WHS=0.117  | THS=0.000  |
2default:defaultZ35-416h px? 
B
-Phase 6.1 Hold Fix Iter | Checksum: ebbf69c0
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
@
+Phase 6 Post Hold Fix | Checksum: ebbf69c0
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
A
,Phase 7 Route finalize | Checksum: f96675d3
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1776.645 ; gain = 91.7702default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
H
3Phase 8 Verifying routed nets | Checksum: f96675d3
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:55 ; elapsed = 00:00:49 . Memory (MB): peak = 1777.383 ; gain = 92.5082default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 12b634934
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:50 . Memory (MB): peak = 1777.383 ; gain = 92.5082default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-0.632 | TNS=-4.887 | WHS=0.117  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 12b634934
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:50 . Memory (MB): peak = 1777.383 ; gain = 92.5082default:defaulth px? 
@
Router Completed Successfully
2*	routeflowZ35-16h px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:56 ; elapsed = 00:00:50 . Memory (MB): peak = 1777.383 ; gain = 92.5082default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3132default:default2
52default:default2
22default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:002default:default2
00:00:522default:default2
1777.3832default:default2
103.9302default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.3132default:default2
1787.2032default:default2
9.8202default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?C:/Users/Lek Jie Wei/Desktop/SUTD/Term 4/Comp Struct/1D/toying_with_fpga/Game5/work/vivado/Game5/Game5.runs/impl_1/au_top_0_routed.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
mExecuting : report_drc -file au_top_0_drc_routed.rpt -pb au_top_0_drc_routed.pb -rpx au_top_0_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2t
`report_drc -file au_top_0_drc_routed.rpt -pb au_top_0_drc_routed.pb -rpx au_top_0_drc_routed.rpx2default:defaultZ4-113h px? 
>
IP Catalog is up to date.1232*coregenZ19-1839h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
586*	vivadotcl2?
?C:/Users/Lek Jie Wei/Desktop/SUTD/Term 4/Comp Struct/1D/toying_with_fpga/Game5/work/vivado/Game5/Game5.runs/impl_1/au_top_0_drc_routed.rpt?C:/Users/Lek Jie Wei/Desktop/SUTD/Term 4/Comp Struct/1D/toying_with_fpga/Game5/work/vivado/Game5/Game5.runs/impl_1/au_top_0_drc_routed.rpt2default:default8Z2-168h px? 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px? 
?
%s4*runtcl2?
?Executing : report_methodology -file au_top_0_methodology_drc_routed.rpt -pb au_top_0_methodology_drc_routed.pb -rpx au_top_0_methodology_drc_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
?report_methodology -file au_top_0_methodology_drc_routed.rpt -pb au_top_0_methodology_drc_routed.pb -rpx au_top_0_methodology_drc_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
609*	vivadotcl2?
?C:/Users/Lek Jie Wei/Desktop/SUTD/Term 4/Comp Struct/1D/toying_with_fpga/Game5/work/vivado/Game5/Game5.runs/impl_1/au_top_0_methodology_drc_routed.rpt?C:/Users/Lek Jie Wei/Desktop/SUTD/Term 4/Comp Struct/1D/toying_with_fpga/Game5/work/vivado/Game5/Game5.runs/impl_1/au_top_0_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px? 
?
%s4*runtcl2?
}Executing : report_power -file au_top_0_power_routed.rpt -pb au_top_0_power_summary_routed.pb -rpx au_top_0_power_routed.rpx
2default:defaulth px? 
?
Command: %s
53*	vivadotcl2?
preport_power -file au_top_0_power_routed.rpt -pb au_top_0_power_summary_routed.pb -rpx au_top_0_power_routed.rpx2default:defaultZ4-113h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3252default:default2
52default:default2
22default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 
?
%s4*runtcl2q
]Executing : report_route_status -file au_top_0_route_status.rpt -pb au_top_0_route_status.pb
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_timing_summary -max_paths 10 -report_unconstrained -file au_top_0_timing_summary_routed.rpt -pb au_top_0_timing_summary_routed.pb -rpx au_top_0_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
%s4*runtcl2e
QExecuting : report_incremental_reuse -file au_top_0_incremental_reuse_routed.rpt
2default:defaulth px? 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px? 
?
%s4*runtcl2e
QExecuting : report_clock_utilization -file au_top_0_clock_utilization_routed.rpt
2default:defaulth px? 
?
%s4*runtcl2?
?Executing : report_bus_skew -warn_on_violation -file au_top_0_bus_skew_routed.rpt -pb au_top_0_bus_skew_routed.pb -rpx au_top_0_bus_skew_routed.rpx
2default:defaulth px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 


End Record