#**************************************************/
#* Script for Cadence RTL Compiler synthesis      */
#*                                                */
#* To run: rc < script.tcl                        */
#*                                                */
#* Author: Leo					                  */
#* 								                  */
#**************************************************/

# Enable super-threading for the 4 CPUs on localhost (be sure you can rsh localhost without be prompted for the password)
set_attribute super_thread_servers {localhost localhost localhost localhost} /

set PDK /data/research/encounter/ASIC_project
set_attr hdl_search_path "${PDK}/design/rtl ${PDK}/design/include ${PDK}/design/lib ${PDK}/design/common ${PDK}/design/srams ${PDK}/design/pr_macro"

set_attribute lib_search_path "${PDK}/NangateOpenCellLibrary/Front_End/Liberty ${PDK}/NangateOpenCellLibrary/Front_End/Liberty/ECSM ${PDK}/NangateOpenCellLibrary/Back_End/lef"

set_attribute information_level 6 /

# Load the technology library for worst case
set_attribute library NangateOpenCellLibrary_typical_ecsm.lib /

# Read your hdl files
read_hdl {cluster_header.v \
swrvr_clib.v \
swrvr_dlib.v \
synchronizer_asr.v \
bw_clk_cl_fpu_cmp.v \
fpu_add_ctl.v \
fpu_add_exp_dp.v \
fpu_add_frac_dp.v \
fpu_add.v \
fpu_cnt_lead0_53b.v \
fpu_cnt_lead0_64b.v \
fpu_cnt_lead0_lvl1.v \
fpu_cnt_lead0_lvl2.v \
fpu_cnt_lead0_lvl3.v \
fpu_cnt_lead0_lvl4.v \
fpu_denorm_3b.v \
fpu_denorm_3to1.v \
fpu_denorm_frac.v \
fpu_div_ctl.v \
fpu_div_exp_dp.v \
fpu_div_frac_dp.v \
fpu_div.v \
fpu_in2_gt_in1_2b.v \
fpu_in2_gt_in1_3b.v \
fpu_in2_gt_in1_3to1.v \
fpu_in2_gt_in1_frac.v \
fpu_in_ctl.v \
fpu_in_dp.v \
fpu_in.v \
fpu_mul_ctl.v \
fpu_mul_exp_dp.v \
fpu_mul_frac_dp.v \
fpu_mul.v \
fpu_out_ctl.v \
fpu_out_dp.v \
fpu_out.v \
fpu_rptr_groups.v \
fpu_rptr_macros.v \
fpu_rptr_min_global.v \
mul64.v \
test_stub_scan.v \
bw_r_rf16x160.v \
fpu.v}


# Create design
elaborate fpu

# define a clock on every clocked port of the design
#define_clock -name clk1 -period 10000 [clock_ports]

# define a clock on gclk input port
define_clock -name clk1 -period 4000 [find / -port gclk]
dc::set_clock_transition -max 0.1 clk1

# Input/output delay
#external_delay -input 100 -clock clk1 [find / -port ports_in/*]
#external_delay -output  100 -clock clk1 [find / -port ports_out/*]

# Set load cap of 5fF
set_attribute external_pin_cap 2 [find / -port ports_out/*]
# Set input slew of 100ps
set_attribute fixed_slew 100 [find / -port ports_in/*]

report timing -lint

# find the best logic implementation, it doesn't map to the technology
#synthesize -to_generic
# build accurate power models (might take a while)
#build_rtl_power_models -clean_up_netlist

# map to the technology
synthesize -to_mapped


# Report power and area of cells
report timing > timing.rep
report power -depth 1 > power.rep
report area -depth 2 > area.rep

write_hdl -mapped >  fpu.vh
write_sdc >  fpu.sdc
