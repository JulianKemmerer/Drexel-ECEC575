#**************************************************/
#* MMMC file for Cadence Encounter				  */
#*                                                */
#* 								                  */
#*                                                */
#* Author: Leo					                  */
#* 								                  */
#**************************************************/

#set PDK /data/research/encounter/ASIC_project





create_library_set -name my_fast_library_set -timing ${PDK}/NangateOpenCellLibrary/Front_End/Liberty/ECSM/NangateOpenCellLibrary_fast_ecsm.lib
create_library_set -name my_typ_library_set -timing ${PDK}/NangateOpenCellLibrary/Front_End/Liberty/ECSM/NangateOpenCellLibrary_typical_ecsm.lib


create_constraint_mode -name my_constraint_mode -sdc_files fpu.sdc

create_rc_corner -name my_rc_corner_typ -T 25
create_delay_corner -name my_delay_corner_fast -library_set my_fast_library_set -rc_corner my_rc_corner_typ
create_delay_corner -name my_delay_corner_typ -library_set my_typ_library_set -rc_corner my_rc_corner_typ

create_analysis_view -name my_analysis_view_hold -constraint_mode my_constraint_mode -delay_corner my_delay_corner_fast
create_analysis_view -name my_analysis_view_setup -constraint_mode my_constraint_mode -delay_corner my_delay_corner_typ


set_analysis_view -setup my_analysis_view_setup -hold  my_analysis_view_hold
