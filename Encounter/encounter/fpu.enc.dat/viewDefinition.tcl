create_library_set -name my_fast_library_set\
   -timing\
    [list /data/research/encounter/ASIC_project/NangateOpenCellLibrary/Front_End/Liberty/ECSM/NangateOpenCellLibrary_fast_ecsm.lib]
create_library_set -name my_typ_library_set\
   -timing\
    [list /data/research/encounter/ASIC_project/NangateOpenCellLibrary/Front_End/Liberty/ECSM/NangateOpenCellLibrary_typical_ecsm.lib]
create_rc_corner -name my_rc_corner_typ\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name my_delay_corner_typ\
   -library_set my_typ_library_set\
   -rc_corner my_rc_corner_typ
create_delay_corner -name my_delay_corner_fast\
   -library_set my_fast_library_set\
   -rc_corner my_rc_corner_typ
create_constraint_mode -name my_constraint_mode\
   -sdc_files\
    [list fpu.enc.dat/mmmc/modes/my_constraint_mode/my_constraint_mode.sdc]
create_analysis_view -name my_analysis_view_hold -constraint_mode my_constraint_mode -delay_corner my_delay_corner_fast
create_analysis_view -name my_analysis_view_setup -constraint_mode my_constraint_mode -delay_corner my_delay_corner_typ
set_analysis_view -setup [list my_analysis_view_setup] -hold [list my_analysis_view_hold]
