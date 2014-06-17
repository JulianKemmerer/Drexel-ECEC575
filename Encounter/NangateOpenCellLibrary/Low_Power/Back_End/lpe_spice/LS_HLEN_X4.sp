* 
* ******************************************************************************
* *                                                                            *
* *                   Copyright (C) 2004-2011, Nangate Inc.                    *
* *                           All rights reserved.                             *
* *                                                                            *
* * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
* *                                                                            *
* * All trademarks, logos, software marks, and trade names (collectively the   *
* * "Marks") in this program are proprietary to Nangate or other respective    *
* * owners that have granted Nangate the right and license to use such Marks.  *
* * You are not permitted to use the Marks without the prior written consent   *
* * of Nangate or such third party that may own the Marks.                     *
* *                                                                            *
* * This file has been provided pursuant to a License Agreement containing     *
* * restrictions on its use. This file contains valuable trade secrets and     *
* * proprietary information of Nangate Inc., and is protected by U.S. and      *
* * international laws and/or treaties.                                        *
* *                                                                            *
* * The copyright notice(s) in this file does not indicate actual or intended  *
* * publication of this file.                                                  *
* *                                                                            *
* *     NGLibraryCreator, v2010.08-HR32-SP3-2010-08-05 - build 1009061800      *
* *                                                                            *
* ******************************************************************************
* 
* 
* Running on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr).
* Local time is now Tue, 4 Jan 2011, 14:44:41.
* Main process id is 1680.
*
********************************************************************************
*                                                                              *
* Cellname:   LS_HLEN_X4.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_HLEN_X4 VDDL VSS A ISOLN Z
*.PININFO VDDL:P VSS:G A:I ISOLN:I Z:O 
*.EQN Z=(A * ISOLN)
M_M4 N_3_M0_d N_A_M0_g N_VDDL_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=3.9e-07
M_M5 N_VDDL_M1_d N_ISOLN_M1_g N_3_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=3.9e-07
M_M6 N_Z_M2_d N_3_M2_g N_VDDL_M1_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M7 N_VDDL_M3_d N_3_M3_g N_Z_M2_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M0 7 N_A_M4_g N_3_M4_s N_VSS_M4_b NMOS_VTL L=5e-08 W=3.4e-07
M_M1 N_VSS_M5_d N_ISOLN_M5_g 7 N_VSS_M4_b NMOS_VTL L=5e-08 W=3.4e-07
M_M2 N_Z_M6_d N_3_M6_g N_VSS_M5_d N_VSS_M4_b NMOS_VTL L=5e-08 W=3.05e-07
M_M3 N_VSS_M7_d N_3_M7_g N_Z_M6_d N_VSS_M4_b NMOS_VTL L=5e-08 W=3.05e-07
C_x_PM_LS_HLEN_X4%VDDL_c0 x_PM_LS_HLEN_X4%VDDL_54 VSS 0.00304048f
C_x_PM_LS_HLEN_X4%VDDL_c1 VDDL VSS 0.254713f
C_x_PM_LS_HLEN_X4%VDDL_c2 x_PM_LS_HLEN_X4%VDDL_48 VSS 0.0111802f
C_x_PM_LS_HLEN_X4%VDDL_c3 N_VDDL_M3_d VSS 0.0301458f
C_x_PM_LS_HLEN_X4%VDDL_c4 x_PM_LS_HLEN_X4%VDDL_38 VSS 0.019185f
C_x_PM_LS_HLEN_X4%VDDL_c5 N_VDDL_M1_d VSS 0.0588115f
C_x_PM_LS_HLEN_X4%VDDL_c6 x_PM_LS_HLEN_X4%VDDL_33 VSS 0.0114118f
C_x_PM_LS_HLEN_X4%VDDL_c7 x_PM_LS_HLEN_X4%VDDL_32 VSS 0.0186978f
C_x_PM_LS_HLEN_X4%VDDL_c8 N_VDDL_M0_s VSS 0.0351693f
C_x_PM_LS_HLEN_X4%VDDL_c9 x_PM_LS_HLEN_X4%VDDL_23 VSS 0.0120441f
C_x_PM_LS_HLEN_X4%VDDL_c10 x_PM_LS_HLEN_X4%VDDL_22 VSS 0.240864f
C_x_PM_LS_HLEN_X4%VDDL_c11 VDDL VSS 0.601844f
C_x_PM_LS_HLEN_X4%VDDL_c12 N_VDDL_M0_b VSS 0.0362568f
R_x_PM_LS_HLEN_X4%VDDL_r13 x_PM_LS_HLEN_X4%VDDL_55 x_PM_LS_HLEN_X4%VDDL_56 0.413529 
R_x_PM_LS_HLEN_X4%VDDL_r14 x_PM_LS_HLEN_X4%VDDL_52 x_PM_LS_HLEN_X4%VDDL_53 0.424706 
R_x_PM_LS_HLEN_X4%VDDL_r15 x_PM_LS_HLEN_X4%VDDL_48 x_PM_LS_HLEN_X4%VDDL_56 0.0782353 
R_x_PM_LS_HLEN_X4%VDDL_r16 x_PM_LS_HLEN_X4%VDDL_48 VDDL 8.03588 
R_x_PM_LS_HLEN_X4%VDDL_r17 x_PM_LS_HLEN_X4%VDDL_44 x_PM_LS_HLEN_X4%VDDL_56 0.095 
R_x_PM_LS_HLEN_X4%VDDL_r18 x_PM_LS_HLEN_X4%VDDL_40 x_PM_LS_HLEN_X4%VDDL_55 0.095 
R_x_PM_LS_HLEN_X4%VDDL_r19 x_PM_LS_HLEN_X4%VDDL_40 N_VDDL_M3_d 1.58786 
R_x_PM_LS_HLEN_X4%VDDL_r20 x_PM_LS_HLEN_X4%VDDL_39 x_PM_LS_HLEN_X4%VDDL_54 0.0731438 
R_x_PM_LS_HLEN_X4%VDDL_r21 x_PM_LS_HLEN_X4%VDDL_38 x_PM_LS_HLEN_X4%VDDL_55 0.0782353 
R_x_PM_LS_HLEN_X4%VDDL_r22 x_PM_LS_HLEN_X4%VDDL_38 x_PM_LS_HLEN_X4%VDDL_39 0.692941 
R_x_PM_LS_HLEN_X4%VDDL_r23 x_PM_LS_HLEN_X4%VDDL_34 x_PM_LS_HLEN_X4%VDDL_54 0.145286 
R_x_PM_LS_HLEN_X4%VDDL_r24 x_PM_LS_HLEN_X4%VDDL_34 N_VDDL_M1_d 1.72357 
R_x_PM_LS_HLEN_X4%VDDL_r25 x_PM_LS_HLEN_X4%VDDL_33 x_PM_LS_HLEN_X4%VDDL_53 0.0782353 
R_x_PM_LS_HLEN_X4%VDDL_r26 x_PM_LS_HLEN_X4%VDDL_32 x_PM_LS_HLEN_X4%VDDL_54 0.0731438 
R_x_PM_LS_HLEN_X4%VDDL_r27 x_PM_LS_HLEN_X4%VDDL_32 x_PM_LS_HLEN_X4%VDDL_33 0.681765 
R_x_PM_LS_HLEN_X4%VDDL_r28 x_PM_LS_HLEN_X4%VDDL_28 x_PM_LS_HLEN_X4%VDDL_53 0.095 
R_x_PM_LS_HLEN_X4%VDDL_r29 x_PM_LS_HLEN_X4%VDDL_28 N_VDDL_M0_s 1.72357 
R_x_PM_LS_HLEN_X4%VDDL_r30 x_PM_LS_HLEN_X4%VDDL_24 x_PM_LS_HLEN_X4%VDDL_52 0.095 
R_x_PM_LS_HLEN_X4%VDDL_r31 x_PM_LS_HLEN_X4%VDDL_22 x_PM_LS_HLEN_X4%VDDL_52 0.0782353 
R_x_PM_LS_HLEN_X4%VDDL_r32 x_PM_LS_HLEN_X4%VDDL_22 x_PM_LS_HLEN_X4%VDDL_23 7.93529 
R_x_PM_LS_HLEN_X4%VDDL_r33 x_PM_LS_HLEN_X4%VDDL_14 x_PM_LS_HLEN_X4%VDDL_23 0.264221 
R_x_PM_LS_HLEN_X4%VDDL_r34 x_PM_LS_HLEN_X4%VDDL_44 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HLEN_X4%VDDL_r35 x_PM_LS_HLEN_X4%VDDL_24 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HLEN_X4%VDDL_r36 x_PM_LS_HLEN_X4%VDDL_14 N_VDDL_M0_b 0.827857 
C_x_PM_LS_HLEN_X4%VSS_c0 x_PM_LS_HLEN_X4%VSS_50 VSS 0.265628f
C_x_PM_LS_HLEN_X4%VSS_c1 x_PM_LS_HLEN_X4%VSS_48 VSS 0.00268952f
C_x_PM_LS_HLEN_X4%VSS_c2 x_PM_LS_HLEN_X4%VSS_47 VSS 0.00292673f
C_x_PM_LS_HLEN_X4%VSS_c3 N_VSS_M7_d VSS 0.0248178f
C_x_PM_LS_HLEN_X4%VSS_c4 x_PM_LS_HLEN_X4%VSS_35 VSS 0.0395753f
C_x_PM_LS_HLEN_X4%VSS_c5 VSS VSS 0.020813f
C_x_PM_LS_HLEN_X4%VSS_c6 x_PM_LS_HLEN_X4%VSS_27 VSS 0.0489705f
C_x_PM_LS_HLEN_X4%VSS_c7 N_VSS_M4_b VSS 0.0309261f
C_x_PM_LS_HLEN_X4%VSS_c8 VSS VSS 0.57532f
C_x_PM_LS_HLEN_X4%VSS_c9 x_PM_LS_HLEN_X4%VSS_19 VSS 0.011992f
C_x_PM_LS_HLEN_X4%VSS_c10 x_PM_LS_HLEN_X4%VSS_18 VSS 0.0120195f
C_x_PM_LS_HLEN_X4%VSS_c11 x_PM_LS_HLEN_X4%VSS_17 VSS 0.240864f
C_x_PM_LS_HLEN_X4%VSS_c12 x_PM_LS_HLEN_X4%VSS_13 VSS 0.0110902f
R_x_PM_LS_HLEN_X4%VSS_r13 x_PM_LS_HLEN_X4%VSS_49 x_PM_LS_HLEN_X4%VSS_50 0.413529 
R_x_PM_LS_HLEN_X4%VSS_r14 x_PM_LS_HLEN_X4%VSS_41 x_PM_LS_HLEN_X4%VSS_50 0.095 
R_x_PM_LS_HLEN_X4%VSS_r15 x_PM_LS_HLEN_X4%VSS_37 x_PM_LS_HLEN_X4%VSS_49 0.095 
R_x_PM_LS_HLEN_X4%VSS_r16 x_PM_LS_HLEN_X4%VSS_37 N_VSS_M7_d 1.01786 
R_x_PM_LS_HLEN_X4%VSS_r17 x_PM_LS_HLEN_X4%VSS_36 x_PM_LS_HLEN_X4%VSS_48 0.0731438 
R_x_PM_LS_HLEN_X4%VSS_r18 x_PM_LS_HLEN_X4%VSS_35 x_PM_LS_HLEN_X4%VSS_49 0.0782353 
R_x_PM_LS_HLEN_X4%VSS_r19 x_PM_LS_HLEN_X4%VSS_35 x_PM_LS_HLEN_X4%VSS_36 0.692941 
R_x_PM_LS_HLEN_X4%VSS_r20 VSS N_VSS_M5_d 0.0271429 
R_x_PM_LS_HLEN_X4%VSS_r21 x_PM_LS_HLEN_X4%VSS_29 x_PM_LS_HLEN_X4%VSS_48 0.145286 
R_x_PM_LS_HLEN_X4%VSS_r22 x_PM_LS_HLEN_X4%VSS_29 VSS 0.230714 
R_x_PM_LS_HLEN_X4%VSS_r23 x_PM_LS_HLEN_X4%VSS_28 x_PM_LS_HLEN_X4%VSS_47 0.0731438 
R_x_PM_LS_HLEN_X4%VSS_r24 x_PM_LS_HLEN_X4%VSS_27 x_PM_LS_HLEN_X4%VSS_48 0.0731438 
R_x_PM_LS_HLEN_X4%VSS_r25 x_PM_LS_HLEN_X4%VSS_27 x_PM_LS_HLEN_X4%VSS_28 1.10647 
R_x_PM_LS_HLEN_X4%VSS_r26 x_PM_LS_HLEN_X4%VSS_41 N_VSS_M4_b 0.502143 
R_x_PM_LS_HLEN_X4%VSS_r27 x_PM_LS_HLEN_X4%VSS_23 x_PM_LS_HLEN_X4%VSS_47 0.145286 
R_x_PM_LS_HLEN_X4%VSS_r28 x_PM_LS_HLEN_X4%VSS_23 N_VSS_M4_b 0.502143 
R_x_PM_LS_HLEN_X4%VSS_r29 x_PM_LS_HLEN_X4%VSS_19 VSS 18.62 
R_x_PM_LS_HLEN_X4%VSS_r30 x_PM_LS_HLEN_X4%VSS_17 x_PM_LS_HLEN_X4%VSS_47 0.0731438 
R_x_PM_LS_HLEN_X4%VSS_r31 x_PM_LS_HLEN_X4%VSS_17 x_PM_LS_HLEN_X4%VSS_18 7.93529 
R_x_PM_LS_HLEN_X4%VSS_r32 x_PM_LS_HLEN_X4%VSS_13 x_PM_LS_HLEN_X4%VSS_19 0.264221 
R_x_PM_LS_HLEN_X4%VSS_r33 x_PM_LS_HLEN_X4%VSS_9 x_PM_LS_HLEN_X4%VSS_18 0.264221 
R_x_PM_LS_HLEN_X4%VSS_r34 x_PM_LS_HLEN_X4%VSS_9 N_VSS_M4_b 0.5016 
C_x_PM_LS_HLEN_X4%3_c0 x_PM_LS_HLEN_X4%3_35 VSS 0.0822856f
C_x_PM_LS_HLEN_X4%3_c1 x_PM_LS_HLEN_X4%3_31 VSS 0.0208599f
C_x_PM_LS_HLEN_X4%3_c2 x_PM_LS_HLEN_X4%3_30 VSS 0.0487686f
C_x_PM_LS_HLEN_X4%3_c3 N_3_M0_d VSS 0.0339546f
C_x_PM_LS_HLEN_X4%3_c4 x_PM_LS_HLEN_X4%3_22 VSS 0.107892f
C_x_PM_LS_HLEN_X4%3_c5 x_PM_LS_HLEN_X4%3_19 VSS 0.00330952f
C_x_PM_LS_HLEN_X4%3_c6 N_3_M3_g VSS 0.0413496f
C_x_PM_LS_HLEN_X4%3_c7 N_3_M7_g VSS 0.0390928f
C_x_PM_LS_HLEN_X4%3_c8 x_PM_LS_HLEN_X4%3_10 VSS 0.00819931f
C_x_PM_LS_HLEN_X4%3_c9 x_PM_LS_HLEN_X4%3_9 VSS 0.0122074f
C_x_PM_LS_HLEN_X4%3_c10 N_3_M2_g VSS 0.0374343f
C_x_PM_LS_HLEN_X4%3_c11 N_3_M6_g VSS 0.0334073f
R_x_PM_LS_HLEN_X4%3_r12 x_PM_LS_HLEN_X4%3_37 x_PM_LS_HLEN_X4%3_39 4.94 
R_x_PM_LS_HLEN_X4%3_r13 x_PM_LS_HLEN_X4%3_35 x_PM_LS_HLEN_X4%3_37 25.0012 
R_x_PM_LS_HLEN_X4%3_r14 x_PM_LS_HLEN_X4%3_33 x_PM_LS_HLEN_X4%3_35 0.610714 
R_x_PM_LS_HLEN_X4%3_r15 x_PM_LS_HLEN_X4%3_32 x_PM_LS_HLEN_X4%3_35 1.01786 
R_x_PM_LS_HLEN_X4%3_r16 x_PM_LS_HLEN_X4%3_30 x_PM_LS_HLEN_X4%3_33 0.212317 
R_x_PM_LS_HLEN_X4%3_r17 x_PM_LS_HLEN_X4%3_30 x_PM_LS_HLEN_X4%3_31 0.868571 
R_x_PM_LS_HLEN_X4%3_r18 x_PM_LS_HLEN_X4%3_26 x_PM_LS_HLEN_X4%3_31 0.212317 
R_x_PM_LS_HLEN_X4%3_r19 x_PM_LS_HLEN_X4%3_26 N_3_M0_d 0.746429 
R_x_PM_LS_HLEN_X4%3_r20 x_PM_LS_HLEN_X4%3_22 x_PM_LS_HLEN_X4%3_32 0.212317 
R_x_PM_LS_HLEN_X4%3_r21 x_PM_LS_HLEN_X4%3_22 N_3_M4_s 2.10357 
R_x_PM_LS_HLEN_X4%3_r22 x_PM_LS_HLEN_X4%3_15 x_PM_LS_HLEN_X4%3_19 4.56151 
R_x_PM_LS_HLEN_X4%3_r23 x_PM_LS_HLEN_X4%3_15 N_3_M3_g 42.51 
R_x_PM_LS_HLEN_X4%3_r24 x_PM_LS_HLEN_X4%3_11 x_PM_LS_HLEN_X4%3_19 4.56151 
R_x_PM_LS_HLEN_X4%3_r25 x_PM_LS_HLEN_X4%3_11 N_3_M7_g 40.17 
R_x_PM_LS_HLEN_X4%3_r26 x_PM_LS_HLEN_X4%3_10 x_PM_LS_HLEN_X4%3_39 2.6 
R_x_PM_LS_HLEN_X4%3_r27 x_PM_LS_HLEN_X4%3_9 x_PM_LS_HLEN_X4%3_19 0.043368 
R_x_PM_LS_HLEN_X4%3_r28 x_PM_LS_HLEN_X4%3_9 x_PM_LS_HLEN_X4%3_10 14.56 
R_x_PM_LS_HLEN_X4%3_r29 x_PM_LS_HLEN_X4%3_5 x_PM_LS_HLEN_X4%3_39 1.95 
R_x_PM_LS_HLEN_X4%3_r30 x_PM_LS_HLEN_X4%3_5 N_3_M2_g 42.51 
R_x_PM_LS_HLEN_X4%3_r31 x_PM_LS_HLEN_X4%3_1 x_PM_LS_HLEN_X4%3_39 1.95 
R_x_PM_LS_HLEN_X4%3_r32 x_PM_LS_HLEN_X4%3_1 N_3_M6_g 40.17 
C_x_PM_LS_HLEN_X4%A_c0 x_PM_LS_HLEN_X4%A_18 VSS 0.00948225f
C_x_PM_LS_HLEN_X4%A_c1 x_PM_LS_HLEN_X4%A_12 VSS 0.0654632f
C_x_PM_LS_HLEN_X4%A_c2 N_A_M0_g VSS 0.0550724f
C_x_PM_LS_HLEN_X4%A_c3 N_A_M4_g VSS 0.0467392f
R_x_PM_LS_HLEN_X4%A_r4 x_PM_LS_HLEN_X4%A_14 x_PM_LS_HLEN_X4%A_18 4.42 
R_x_PM_LS_HLEN_X4%A_r5 x_PM_LS_HLEN_X4%A_12 x_PM_LS_HLEN_X4%A_14 25.0012 
R_x_PM_LS_HLEN_X4%A_r6 A x_PM_LS_HLEN_X4%A_12 0.128529 
R_x_PM_LS_HLEN_X4%A_r7 x_PM_LS_HLEN_X4%A_5 x_PM_LS_HLEN_X4%A_18 1.95 
R_x_PM_LS_HLEN_X4%A_r8 x_PM_LS_HLEN_X4%A_5 N_A_M0_g 43.68 
R_x_PM_LS_HLEN_X4%A_r9 x_PM_LS_HLEN_X4%A_1 x_PM_LS_HLEN_X4%A_18 1.95 
R_x_PM_LS_HLEN_X4%A_r10 x_PM_LS_HLEN_X4%A_1 N_A_M4_g 34.32 
C_x_PM_LS_HLEN_X4%ISOLN_c0 x_PM_LS_HLEN_X4%ISOLN_14 VSS 0.00934368f
C_x_PM_LS_HLEN_X4%ISOLN_c1 x_PM_LS_HLEN_X4%ISOLN_12 VSS 0.116421f
C_x_PM_LS_HLEN_X4%ISOLN_c2 N_ISOLN_M1_g VSS 0.0565552f
C_x_PM_LS_HLEN_X4%ISOLN_c3 N_ISOLN_M5_g VSS 0.0481641f
R_x_PM_LS_HLEN_X4%ISOLN_r4 x_PM_LS_HLEN_X4%ISOLN_14 x_PM_LS_HLEN_X4%ISOLN_18 4.7687 
R_x_PM_LS_HLEN_X4%ISOLN_r5 x_PM_LS_HLEN_X4%ISOLN_14 x_PM_LS_HLEN_X4%ISOLN_17 4.7687 
R_x_PM_LS_HLEN_X4%ISOLN_r6 x_PM_LS_HLEN_X4%ISOLN_12 x_PM_LS_HLEN_X4%ISOLN_14 25.0012 
R_x_PM_LS_HLEN_X4%ISOLN_r7 ISOLN x_PM_LS_HLEN_X4%ISOLN_12 0.195588 
R_x_PM_LS_HLEN_X4%ISOLN_r8 x_PM_LS_HLEN_X4%ISOLN_18 N_ISOLN_M1_g 43.68 
R_x_PM_LS_HLEN_X4%ISOLN_r9 x_PM_LS_HLEN_X4%ISOLN_17 N_ISOLN_M5_g 34.32 
C_x_PM_LS_HLEN_X4%Z_c0 N_Z_M6_d VSS 0.166864f
R_x_PM_LS_HLEN_X4%Z_r1 Z N_Z_M2_d 1.96786 
R_x_PM_LS_HLEN_X4%Z_r2 N_Z_M6_d Z 0.719286 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
