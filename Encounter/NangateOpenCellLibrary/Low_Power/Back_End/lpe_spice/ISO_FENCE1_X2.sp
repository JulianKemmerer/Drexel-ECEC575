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
* Local time is now Tue, 4 Jan 2011, 14:44:43.
* Main process id is 1680.
*
********************************************************************************
*                                                                              *
* Cellname:   ISO_FENCE1_X2.                                                   *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:43 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE1_X2 VDD VSS A EN Z 
*.PININFO VDD:P VSS:G A:I EN:I Z:O 
*.EQN Z=(A + EN)
M_M3 7 N_A_M0_g N_3_M0_s VDD PMOS_VTL W=0.250000U L=0.050000U
M_M4 N_VDD_M1_d N_EN_M1_g 7 VDD PMOS_VTL W=0.250000U L=0.050000U
M_M5 N_Z_M2_d N_3_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.415000U L=0.050000U
M_M0 N_3_M3_d N_A_M3_g N_VSS_M3_s VSS NMOS_VTL W=0.155000U L=0.050000U
M_M1 N_VSS_M4_d N_EN_M4_g N_3_M3_d VSS NMOS_VTL W=0.155000U L=0.050000U
M_M2 N_Z_M5_d N_3_M5_g N_VSS_M4_d VSS NMOS_VTL W=0.305000U L=0.050000U
C_x_PM_ISO_FENCE1_X2%VDD_c0 VSS x_PM_ISO_FENCE1_X2%VDD_35 2.37943e-17
C_x_PM_ISO_FENCE1_X2%VDD_c1 VSS x_PM_ISO_FENCE1_X2%VDD_32 2.93109e-18
C_x_PM_ISO_FENCE1_X2%VDD_c2 VSS x_PM_ISO_FENCE1_X2%VDD_31 1.06425e-17
C_x_PM_ISO_FENCE1_X2%VDD_c3 VSS x_PM_ISO_FENCE1_X2%VDD_30 2.334e-16
C_x_PM_ISO_FENCE1_X2%VDD_c4 VSS x_PM_ISO_FENCE1_X2%VDD_21 2.61519e-16
C_x_PM_ISO_FENCE1_X2%VDD_c5 VSS N_VDD_M1_d 3.52509e-17
C_x_PM_ISO_FENCE1_X2%VDD_c6 VSS x_PM_ISO_FENCE1_X2%VDD_13 4.19334e-17
C_x_PM_ISO_FENCE1_X2%VDD_c7 VSS x_PM_ISO_FENCE1_X2%VDD_12 1.92462e-17
C_x_PM_ISO_FENCE1_X2%VDD_c8 VSS x_PM_ISO_FENCE1_X2%VDD_8 5.77955e-16
R_x_PM_ISO_FENCE1_X2%VDD_r9 x_PM_ISO_FENCE1_X2%VDD_35 VDD 0.13879
R_x_PM_ISO_FENCE1_X2%VDD_r10 x_PM_ISO_FENCE1_X2%VDD_31 VDD 0.138595
R_x_PM_ISO_FENCE1_X2%VDD_r11 x_PM_ISO_FENCE1_X2%VDD_30 VDD 0.138985
R_x_PM_ISO_FENCE1_X2%VDD_r12 x_PM_ISO_FENCE1_X2%VDD_21 VDD 0.13879
R_x_PM_ISO_FENCE1_X2%VDD_r13 VDD x_PM_ISO_FENCE1_X2%VDD_21 3.84471
R_x_PM_ISO_FENCE1_X2%VDD_r14 x_PM_ISO_FENCE1_X2%VDD_32 x_PM_ISO_FENCE1_X2%VDD_20 0.073144
R_x_PM_ISO_FENCE1_X2%VDD_r15 x_PM_ISO_FENCE1_X2%VDD_20 x_PM_ISO_FENCE1_X2%VDD_35 0.659412
R_x_PM_ISO_FENCE1_X2%VDD_r16 x_PM_ISO_FENCE1_X2%VDD_32 x_PM_ISO_FENCE1_X2%VDD_15 0.145286
R_x_PM_ISO_FENCE1_X2%VDD_r17 N_VDD_M1_d x_PM_ISO_FENCE1_X2%VDD_15 0.556429
R_x_PM_ISO_FENCE1_X2%VDD_r18 x_PM_ISO_FENCE1_X2%VDD_32 x_PM_ISO_FENCE1_X2%VDD_13 0.073144
R_x_PM_ISO_FENCE1_X2%VDD_r19 x_PM_ISO_FENCE1_X2%VDD_31 x_PM_ISO_FENCE1_X2%VDD_13 1.08412
R_x_PM_ISO_FENCE1_X2%VDD_r20 VDD x_PM_ISO_FENCE1_X2%VDD_12 0.140282
R_x_PM_ISO_FENCE1_X2%VDD_r21 x_PM_ISO_FENCE1_X2%VDD_12 x_PM_ISO_FENCE1_X2%VDD_30 7.68941
R_x_PM_ISO_FENCE1_X2%VDD_r22 VDD x_PM_ISO_FENCE1_X2%VDD_8 8.94118
C_x_PM_ISO_FENCE1_X2%VSS_c0 VSS x_PM_ISO_FENCE1_X2%VSS_40 2.35261e-17
C_x_PM_ISO_FENCE1_X2%VSS_c1 VSS x_PM_ISO_FENCE1_X2%VSS_37 2.95878e-18
C_x_PM_ISO_FENCE1_X2%VSS_c2 VSS VSS 2.61469e-16
C_x_PM_ISO_FENCE1_X2%VSS_c3 VSS N_VSS_M4_d 3.32781e-17
C_x_PM_ISO_FENCE1_X2%VSS_c4 VSS x_PM_ISO_FENCE1_X2%VSS_19 2.11918e-17
C_x_PM_ISO_FENCE1_X2%VSS_c5 VSS x_PM_ISO_FENCE1_X2%VSS_18 2.18361e-17
C_x_PM_ISO_FENCE1_X2%VSS_c6 VSS N_VSS_M3_s 2.14816e-17
C_x_PM_ISO_FENCE1_X2%VSS_c7 VSS x_PM_ISO_FENCE1_X2%VSS_11 5.77955e-16
C_x_PM_ISO_FENCE1_X2%VSS_c8 VSS x_PM_ISO_FENCE1_X2%VSS_10 1.92462e-17
C_x_PM_ISO_FENCE1_X2%VSS_c9 VSS x_PM_ISO_FENCE1_X2%VSS_9 2.334e-16
R_x_PM_ISO_FENCE1_X2%VSS_r10 x_PM_ISO_FENCE1_X2%VSS_40 VSS 0.13879
R_x_PM_ISO_FENCE1_X2%VSS_r11 x_PM_ISO_FENCE1_X2%VSS_36 VSS 0.457684
R_x_PM_ISO_FENCE1_X2%VSS_r12 x_PM_ISO_FENCE1_X2%VSS_37 x_PM_ISO_FENCE1_X2%VSS_27 0.073144
R_x_PM_ISO_FENCE1_X2%VSS_r13 x_PM_ISO_FENCE1_X2%VSS_27 x_PM_ISO_FENCE1_X2%VSS_40 0.659412
R_x_PM_ISO_FENCE1_X2%VSS_r14 x_PM_ISO_FENCE1_X2%VSS_37 x_PM_ISO_FENCE1_X2%VSS_22 0.145286
R_x_PM_ISO_FENCE1_X2%VSS_r15 N_VSS_M4_d x_PM_ISO_FENCE1_X2%VSS_22 0.936429
R_x_PM_ISO_FENCE1_X2%VSS_r16 x_PM_ISO_FENCE1_X2%VSS_36 x_PM_ISO_FENCE1_X2%VSS_19 0.075426
R_x_PM_ISO_FENCE1_X2%VSS_r17 VSS x_PM_ISO_FENCE1_X2%VSS_19 0.536471
R_x_PM_ISO_FENCE1_X2%VSS_r18 x_PM_ISO_FENCE1_X2%VSS_37 x_PM_ISO_FENCE1_X2%VSS_18 0.073144
R_x_PM_ISO_FENCE1_X2%VSS_r19 VSS x_PM_ISO_FENCE1_X2%VSS_18 0.134118
R_x_PM_ISO_FENCE1_X2%VSS_r20 N_VSS_M3_s x_PM_ISO_FENCE1_X2%VSS_36 0.936429
R_x_PM_ISO_FENCE1_X2%VSS_r21 VSS x_PM_ISO_FENCE1_X2%VSS_11 8.94118
R_x_PM_ISO_FENCE1_X2%VSS_r22 VSS x_PM_ISO_FENCE1_X2%VSS_10 0.140282
R_x_PM_ISO_FENCE1_X2%VSS_r23 VSS x_PM_ISO_FENCE1_X2%VSS_9 0.144058
R_x_PM_ISO_FENCE1_X2%VSS_r24 x_PM_ISO_FENCE1_X2%VSS_10 x_PM_ISO_FENCE1_X2%VSS_9 7.68941
C_x_PM_ISO_FENCE1_X2%3_c0 VSS x_PM_ISO_FENCE1_X2%3_28 1.26908e-17
C_x_PM_ISO_FENCE1_X2%3_c1 VSS x_PM_ISO_FENCE1_X2%3_24 1.27891e-16
C_x_PM_ISO_FENCE1_X2%3_c2 VSS x_PM_ISO_FENCE1_X2%3_20 9.4783e-18
C_x_PM_ISO_FENCE1_X2%3_c3 VSS x_PM_ISO_FENCE1_X2%3_19 3.64601e-17
C_x_PM_ISO_FENCE1_X2%3_c4 VSS N_3_M3_d 3.56094e-17
C_x_PM_ISO_FENCE1_X2%3_c5 VSS x_PM_ISO_FENCE1_X2%3_11 7.77689e-17
C_x_PM_ISO_FENCE1_X2%3_c6 VSS N_3_M2_g 6.76617e-17
C_x_PM_ISO_FENCE1_X2%3_c7 VSS N_3_M5_g 4.48433e-17
R_x_PM_ISO_FENCE1_X2%3_r8 x_PM_ISO_FENCE1_X2%3_28 x_PM_ISO_FENCE1_X2%3_26 4.42
R_x_PM_ISO_FENCE1_X2%3_r9 x_PM_ISO_FENCE1_X2%3_26 x_PM_ISO_FENCE1_X2%3_24 25.0012
R_x_PM_ISO_FENCE1_X2%3_r10 x_PM_ISO_FENCE1_X2%3_24 x_PM_ISO_FENCE1_X2%3_22 2.15786
R_x_PM_ISO_FENCE1_X2%3_r11 x_PM_ISO_FENCE1_X2%3_24 x_PM_ISO_FENCE1_X2%3_21 0.583571
R_x_PM_ISO_FENCE1_X2%3_r12 x_PM_ISO_FENCE1_X2%3_21 x_PM_ISO_FENCE1_X2%3_19 0.212317
R_x_PM_ISO_FENCE1_X2%3_r13 x_PM_ISO_FENCE1_X2%3_20 x_PM_ISO_FENCE1_X2%3_19 0.895714
R_x_PM_ISO_FENCE1_X2%3_r14 x_PM_ISO_FENCE1_X2%3_20 x_PM_ISO_FENCE1_X2%3_15 0.212317
R_x_PM_ISO_FENCE1_X2%3_r15 N_3_M3_d x_PM_ISO_FENCE1_X2%3_15 0.773571
R_x_PM_ISO_FENCE1_X2%3_r16 x_PM_ISO_FENCE1_X2%3_22 x_PM_ISO_FENCE1_X2%3_11 0.212317
R_x_PM_ISO_FENCE1_X2%3_r17 N_3_M0_s x_PM_ISO_FENCE1_X2%3_11 2.13071
R_x_PM_ISO_FENCE1_X2%3_r18 x_PM_ISO_FENCE1_X2%3_28 x_PM_ISO_FENCE1_X2%3_5 1.95
R_x_PM_ISO_FENCE1_X2%3_r19 N_3_M2_g x_PM_ISO_FENCE1_X2%3_5 61.23
R_x_PM_ISO_FENCE1_X2%3_r20 x_PM_ISO_FENCE1_X2%3_28 x_PM_ISO_FENCE1_X2%3_1 1.95
R_x_PM_ISO_FENCE1_X2%3_r21 N_3_M5_g x_PM_ISO_FENCE1_X2%3_1 31.59
C_x_PM_ISO_FENCE1_X2%A_c0 VSS x_PM_ISO_FENCE1_X2%A_18 8.60294e-18
C_x_PM_ISO_FENCE1_X2%A_c1 VSS x_PM_ISO_FENCE1_X2%A_12 1.51045e-17
C_x_PM_ISO_FENCE1_X2%A_c2 VSS N_A_M0_g 6.1244e-17
C_x_PM_ISO_FENCE1_X2%A_c3 VSS N_A_M3_g 4.21759e-17
R_x_PM_ISO_FENCE1_X2%A_r4 x_PM_ISO_FENCE1_X2%A_18 x_PM_ISO_FENCE1_X2%A_14 4.42
R_x_PM_ISO_FENCE1_X2%A_r5 x_PM_ISO_FENCE1_X2%A_14 x_PM_ISO_FENCE1_X2%A_12 25.0012
R_x_PM_ISO_FENCE1_X2%A_r6 x_PM_ISO_FENCE1_X2%A_12 A 0.156071
R_x_PM_ISO_FENCE1_X2%A_r7 x_PM_ISO_FENCE1_X2%A_18 x_PM_ISO_FENCE1_X2%A_5 1.95
R_x_PM_ISO_FENCE1_X2%A_r8 N_A_M0_g x_PM_ISO_FENCE1_X2%A_5 71.76
R_x_PM_ISO_FENCE1_X2%A_r9 x_PM_ISO_FENCE1_X2%A_18 x_PM_ISO_FENCE1_X2%A_1 1.95
R_x_PM_ISO_FENCE1_X2%A_r10 N_A_M3_g x_PM_ISO_FENCE1_X2%A_1 45.63
C_x_PM_ISO_FENCE1_X2%EN_c0 VSS x_PM_ISO_FENCE1_X2%EN_14 8.40838e-18
C_x_PM_ISO_FENCE1_X2%EN_c1 VSS x_PM_ISO_FENCE1_X2%EN_12 4.12859e-17
C_x_PM_ISO_FENCE1_X2%EN_c2 VSS N_EN_M1_g 5.32346e-17
C_x_PM_ISO_FENCE1_X2%EN_c3 VSS N_EN_M4_g 5.99512e-17
R_x_PM_ISO_FENCE1_X2%EN_r4 x_PM_ISO_FENCE1_X2%EN_18 x_PM_ISO_FENCE1_X2%EN_14 4.7687
R_x_PM_ISO_FENCE1_X2%EN_r5 x_PM_ISO_FENCE1_X2%EN_17 x_PM_ISO_FENCE1_X2%EN_14 4.7687
R_x_PM_ISO_FENCE1_X2%EN_r6 x_PM_ISO_FENCE1_X2%EN_14 x_PM_ISO_FENCE1_X2%EN_12 25.0012
R_x_PM_ISO_FENCE1_X2%EN_r7 x_PM_ISO_FENCE1_X2%EN_12 EN 0.2375
R_x_PM_ISO_FENCE1_X2%EN_r8 N_EN_M1_g x_PM_ISO_FENCE1_X2%EN_18 49.92
R_x_PM_ISO_FENCE1_X2%EN_r9 N_EN_M4_g x_PM_ISO_FENCE1_X2%EN_17 67.47
C_x_PM_ISO_FENCE1_X2%Z_c0 VSS N_Z_M5_d 1.48466e-16
R_x_PM_ISO_FENCE1_X2%Z_r1 N_Z_M2_d Z 2.07643
R_x_PM_ISO_FENCE1_X2%Z_r2 Z N_Z_M5_d 0.773571
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
