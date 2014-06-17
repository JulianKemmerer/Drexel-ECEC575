#**************************************************/
#* Script for Cadence Encounter				      */
#*                                                */
#* To run: encounter < script.tcl                 */
#*                                                */
#* Author: Leo					                  */
#* 								                  */
#**************************************************/

# Enable multi-threading
setMultiCpuUsage -localCpu 4


set PDK /data/research/encounter/ASIC_project


set init_verilog fpu.vh
# User select top cell name
set init_design_settop {0}
set init_top_cell fpu

# Load lef technology file (which defines layout layers and so on)
set init_lef_file [list ${PDK}/NangateOpenCellLibrary/Back_End/lef/NangateOpenCellLibrary.tech.lef ${PDK}/NangateOpenCellLibrary/Back_End/lef/NangateOpenCellLibrary.macro.lef]
# Load cells' lef file (it's a macro file containing all the single cell lef files)

# Power nets
set init_pwr_net VDD
set init_gnd_net VSS

# Files used to set timing constraints etc.
set init_mmmc_file definitions.tcl


#init_design
