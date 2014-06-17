#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Jun  2 11:53:45 2014                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v13.10-p003_1 (64bit) 04/17/2013 15:43 (Linux 2.6)
#@(#)CDS: NanoRoute v13.10-p002 NR130329-0035/13_10-UB (database version 2.30, 190.4.1) {superthreading v1.19}
#@(#)CDS: CeltIC v13.10-p007_1 (64bit) 04/10/2013 12:20:57 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 13.10-p003 (64bit) 04/17/2013 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 13.10-p009_1 (64bit) Apr 10 2013 05:43:58 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v13.10-p010
#@(#)CDS: IQRC/TQRC 12.1.0-s388 (64bit) Fri Mar 29 14:11:58 PDT 2013 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
setMultiCpuUsage -localCpu 4
set init_verilog fpu.vh
set init_design_settop 0
set init_top_cell fpu
set init_lef_file {/data/research/encounter/ASIC_project/NangateOpenCellLibrary/Back_End/lef/NangateOpenCellLibrary.tech.lef /data/research/encounter/ASIC_project/NangateOpenCellLibrary/Back_End/lef/NangateOpenCellLibrary.macro.lef}
set init_pwr_net VDD
set init_gnd_net VSS
set init_mmmc_file definitions.tcl
init_design
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1 0.9 20 20 20 20
uiSetTool select
getIoFlowFlag
fit
fit
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -center 1 -stacked_via_top_layer metal10 -around core -jog_distance 0.095 -threshold 0.095 -nets {VDD VSS} -stacked_via_bottom_layer metal1 -layer {bottom metal1 top metal1 right metal2 left metal2} -width 5 -spacing 2 -offset 0.095
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000 -warning 50
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
setPlaceMode -fp false
placeDesign -prePlaceOpt
createClockTreeSpec -bufferList {CLKBUF_X1 CLKBUF_X2 CLKBUF_X3 INV_X1 INV_X16 INV_X2 INV_X32 INV_X4 INV_X8} -file Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
report_timing
saveDesign fpu.enc
report_timing > timing.rep
report_power
report_power > power.rep
report_power >> power.rep
report_power > power.rep
report_power
report_design 
man reportFootPrint
queryPlaceDensity
getIoFlowFlag
uiSetTool ruler
fit
fit
fit
fit
