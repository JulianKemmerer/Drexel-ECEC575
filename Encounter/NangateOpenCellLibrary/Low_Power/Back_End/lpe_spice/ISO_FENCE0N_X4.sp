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
* Local time is now Tue, 4 Jan 2011, 14:44:42.
* Main process id is 1680.
*
********************************************************************************
*                                                                              *
* Cellname:   ISO_FENCE0N_X4.                                                  *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE0N_X4 VDD VSS A EN Z 
*.PININFO VDD:P VSS:G A:I EN:I Z:O 
*.EQN Z=(A * EN)
M_M4 N_3_M0_d N_A_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.390000U L=0.050000U
M_M5 N_VDD_M1_d N_EN_M1_g N_3_M0_d VDD PMOS_VTL W=0.390000U L=0.050000U
M_M6 N_Z_M2_d N_3_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.415000U L=0.050000U
M_M7 N_VDD_M3_d N_3_M3_g N_Z_M2_d VDD PMOS_VTL W=0.415000U L=0.050000U
M_M0 7 N_A_M4_g N_3_M4_s VSS NMOS_VTL W=0.340000U L=0.050000U
M_M1 N_VSS_M5_d N_EN_M5_g 7 VSS NMOS_VTL W=0.340000U L=0.050000U
M_M2 N_Z_M6_d N_3_M6_g N_VSS_M5_d VSS NMOS_VTL W=0.305000U L=0.050000U
M_M3 N_VSS_M7_d N_3_M7_g N_Z_M6_d VSS NMOS_VTL W=0.305000U L=0.050000U
C_x_PM_ISO_FENCE0N_X4%VDD_c0 VSS x_PM_ISO_FENCE0N_X4%VDD_41 2.99637e-18
C_x_PM_ISO_FENCE0N_X4%VDD_c1 VSS x_PM_ISO_FENCE0N_X4%VDD_31 2.71473e-16
C_x_PM_ISO_FENCE0N_X4%VDD_c2 VSS N_VDD_M3_d 2.5536e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c3 VSS x_PM_ISO_FENCE0N_X4%VDD_25 2.08323e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c4 VSS N_VDD_M1_d 5.22989e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c5 VSS x_PM_ISO_FENCE0N_X4%VDD_20 2.08555e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c6 VSS x_PM_ISO_FENCE0N_X4%VDD_19 2.03395e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c7 VSS N_VDD_M0_s 2.96629e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c8 VSS x_PM_ISO_FENCE0N_X4%VDD_14 1.92462e-17
C_x_PM_ISO_FENCE0N_X4%VDD_c9 VSS x_PM_ISO_FENCE0N_X4%VDD_13 2.334e-16
C_x_PM_ISO_FENCE0N_X4%VDD_c10 VSS x_PM_ISO_FENCE0N_X4%VDD_10 5.90809e-16
R_x_PM_ISO_FENCE0N_X4%VDD_r11 VDD x_PM_ISO_FENCE0N_X4%VDD_42 0.436117
R_x_PM_ISO_FENCE0N_X4%VDD_r12 x_PM_ISO_FENCE0N_X4%VDD_40 VDD 0.446663
R_x_PM_ISO_FENCE0N_X4%VDD_r13 VDD x_PM_ISO_FENCE0N_X4%VDD_31 0.143697
R_x_PM_ISO_FENCE0N_X4%VDD_r14 VDD x_PM_ISO_FENCE0N_X4%VDD_31 3.84471
R_x_PM_ISO_FENCE0N_X4%VDD_r15 N_VDD_M3_d x_PM_ISO_FENCE0N_X4%VDD_42 0.665
R_x_PM_ISO_FENCE0N_X4%VDD_r16 x_PM_ISO_FENCE0N_X4%VDD_41 x_PM_ISO_FENCE0N_X4%VDD_26 0.073144
R_x_PM_ISO_FENCE0N_X4%VDD_r17 x_PM_ISO_FENCE0N_X4%VDD_42 x_PM_ISO_FENCE0N_X4%VDD_25 0.075389
R_x_PM_ISO_FENCE0N_X4%VDD_r18 x_PM_ISO_FENCE0N_X4%VDD_26 x_PM_ISO_FENCE0N_X4%VDD_25 0.692941
R_x_PM_ISO_FENCE0N_X4%VDD_r19 x_PM_ISO_FENCE0N_X4%VDD_41 x_PM_ISO_FENCE0N_X4%VDD_21 0.145286
R_x_PM_ISO_FENCE0N_X4%VDD_r20 N_VDD_M1_d x_PM_ISO_FENCE0N_X4%VDD_21 0.800714
R_x_PM_ISO_FENCE0N_X4%VDD_r21 x_PM_ISO_FENCE0N_X4%VDD_40 x_PM_ISO_FENCE0N_X4%VDD_20 0.075401
R_x_PM_ISO_FENCE0N_X4%VDD_r22 x_PM_ISO_FENCE0N_X4%VDD_41 x_PM_ISO_FENCE0N_X4%VDD_19 0.073144
R_x_PM_ISO_FENCE0N_X4%VDD_r23 x_PM_ISO_FENCE0N_X4%VDD_20 x_PM_ISO_FENCE0N_X4%VDD_19 0.681765
R_x_PM_ISO_FENCE0N_X4%VDD_r24 N_VDD_M0_s x_PM_ISO_FENCE0N_X4%VDD_40 0.800714
R_x_PM_ISO_FENCE0N_X4%VDD_r25 VDD x_PM_ISO_FENCE0N_X4%VDD_14 0.140282
R_x_PM_ISO_FENCE0N_X4%VDD_r26 VDD x_PM_ISO_FENCE0N_X4%VDD_13 0.143957
R_x_PM_ISO_FENCE0N_X4%VDD_r27 x_PM_ISO_FENCE0N_X4%VDD_14 x_PM_ISO_FENCE0N_X4%VDD_13 7.68941
R_x_PM_ISO_FENCE0N_X4%VDD_r28 VDD x_PM_ISO_FENCE0N_X4%VDD_10 9.15353
C_x_PM_ISO_FENCE0N_X4%VSS_c0 VSS x_PM_ISO_FENCE0N_X4%VSS_36 2.334e-16
C_x_PM_ISO_FENCE0N_X4%VSS_c1 VSS VSS 2.71327e-16
C_x_PM_ISO_FENCE0N_X4%VSS_c2 VSS N_VSS_M7_d 2.68306e-17
C_x_PM_ISO_FENCE0N_X4%VSS_c3 VSS x_PM_ISO_FENCE0N_X4%VSS_22 3.95242e-17
C_x_PM_ISO_FENCE0N_X4%VSS_c4 VSS N_VSS_M5_d 2.33722e-17
C_x_PM_ISO_FENCE0N_X4%VSS_c5 VSS VSS 2.68952e-18
C_x_PM_ISO_FENCE0N_X4%VSS_c6 VSS x_PM_ISO_FENCE0N_X4%VSS_15 1.07522e-17
C_x_PM_ISO_FENCE0N_X4%VSS_c7 VSS x_PM_ISO_FENCE0N_X4%VSS_14 4.82868e-17
C_x_PM_ISO_FENCE0N_X4%VSS_c8 VSS x_PM_ISO_FENCE0N_X4%VSS_11 5.90809e-16
C_x_PM_ISO_FENCE0N_X4%VSS_c9 VSS x_PM_ISO_FENCE0N_X4%VSS_10 1.92462e-17
R_x_PM_ISO_FENCE0N_X4%VSS_r10 VSS x_PM_ISO_FENCE0N_X4%VSS_39 0.436117
R_x_PM_ISO_FENCE0N_X4%VSS_r11 x_PM_ISO_FENCE0N_X4%VSS_36 VSS 0.138985
R_x_PM_ISO_FENCE0N_X4%VSS_r12 N_VSS_M7_d x_PM_ISO_FENCE0N_X4%VSS_39 1.01786
R_x_PM_ISO_FENCE0N_X4%VSS_r13 x_PM_ISO_FENCE0N_X4%VSS_39 x_PM_ISO_FENCE0N_X4%VSS_22 0.075389
R_x_PM_ISO_FENCE0N_X4%VSS_r14 x_PM_ISO_FENCE0N_X4%VSS_23 x_PM_ISO_FENCE0N_X4%VSS_22 0.692941
R_x_PM_ISO_FENCE0N_X4%VSS_r15 N_VSS_M5_d VSS 0.257857
R_x_PM_ISO_FENCE0N_X4%VSS_r16 VSS x_PM_ISO_FENCE0N_X4%VSS_23 0.073144
R_x_PM_ISO_FENCE0N_X4%VSS_r17 x_PM_ISO_FENCE0N_X4%VSS_15 VSS 0.138595
R_x_PM_ISO_FENCE0N_X4%VSS_r18 VSS x_PM_ISO_FENCE0N_X4%VSS_14 0.073144
R_x_PM_ISO_FENCE0N_X4%VSS_r19 x_PM_ISO_FENCE0N_X4%VSS_15 x_PM_ISO_FENCE0N_X4%VSS_14 1.08412
R_x_PM_ISO_FENCE0N_X4%VSS_r20 VSS x_PM_ISO_FENCE0N_X4%VSS_11 9.15353
R_x_PM_ISO_FENCE0N_X4%VSS_r21 VSS x_PM_ISO_FENCE0N_X4%VSS_10 0.140282
R_x_PM_ISO_FENCE0N_X4%VSS_r22 x_PM_ISO_FENCE0N_X4%VSS_10 x_PM_ISO_FENCE0N_X4%VSS_36 7.68941
C_x_PM_ISO_FENCE0N_X4%3_c0 VSS x_PM_ISO_FENCE0N_X4%3_35 1.12929e-16
C_x_PM_ISO_FENCE0N_X4%3_c1 VSS x_PM_ISO_FENCE0N_X4%3_31 1.20429e-17
C_x_PM_ISO_FENCE0N_X4%3_c2 VSS x_PM_ISO_FENCE0N_X4%3_30 4.23554e-17
C_x_PM_ISO_FENCE0N_X4%3_c3 VSS N_3_M0_d 3.52734e-17
C_x_PM_ISO_FENCE0N_X4%3_c4 VSS x_PM_ISO_FENCE0N_X4%3_22 7.42936e-17
C_x_PM_ISO_FENCE0N_X4%3_c5 VSS x_PM_ISO_FENCE0N_X4%3_19 3.30952e-18
C_x_PM_ISO_FENCE0N_X4%3_c6 VSS N_3_M3_g 4.42329e-17
C_x_PM_ISO_FENCE0N_X4%3_c7 VSS N_3_M7_g 4.62699e-17
C_x_PM_ISO_FENCE0N_X4%3_c8 VSS x_PM_ISO_FENCE0N_X4%3_10 8.06468e-18
C_x_PM_ISO_FENCE0N_X4%3_c9 VSS x_PM_ISO_FENCE0N_X4%3_9 1.21687e-17
C_x_PM_ISO_FENCE0N_X4%3_c10 VSS N_3_M2_g 4.0601e-17
C_x_PM_ISO_FENCE0N_X4%3_c11 VSS N_3_M6_g 4.08072e-17
R_x_PM_ISO_FENCE0N_X4%3_r12 x_PM_ISO_FENCE0N_X4%3_39 x_PM_ISO_FENCE0N_X4%3_37 4.94
R_x_PM_ISO_FENCE0N_X4%3_r13 x_PM_ISO_FENCE0N_X4%3_37 x_PM_ISO_FENCE0N_X4%3_35 25.0012
R_x_PM_ISO_FENCE0N_X4%3_r14 x_PM_ISO_FENCE0N_X4%3_35 x_PM_ISO_FENCE0N_X4%3_33 0.855
R_x_PM_ISO_FENCE0N_X4%3_r15 x_PM_ISO_FENCE0N_X4%3_35 x_PM_ISO_FENCE0N_X4%3_32 1.69643
R_x_PM_ISO_FENCE0N_X4%3_r16 x_PM_ISO_FENCE0N_X4%3_33 x_PM_ISO_FENCE0N_X4%3_30 0.212317
R_x_PM_ISO_FENCE0N_X4%3_r17 x_PM_ISO_FENCE0N_X4%3_31 x_PM_ISO_FENCE0N_X4%3_30 0.868571
R_x_PM_ISO_FENCE0N_X4%3_r18 x_PM_ISO_FENCE0N_X4%3_31 x_PM_ISO_FENCE0N_X4%3_26 0.212317
R_x_PM_ISO_FENCE0N_X4%3_r19 N_3_M0_d x_PM_ISO_FENCE0N_X4%3_26 0.746429
R_x_PM_ISO_FENCE0N_X4%3_r20 x_PM_ISO_FENCE0N_X4%3_32 x_PM_ISO_FENCE0N_X4%3_22 0.212317
R_x_PM_ISO_FENCE0N_X4%3_r21 N_3_M4_s x_PM_ISO_FENCE0N_X4%3_22 2.10357
R_x_PM_ISO_FENCE0N_X4%3_r22 x_PM_ISO_FENCE0N_X4%3_19 x_PM_ISO_FENCE0N_X4%3_15 4.56151
R_x_PM_ISO_FENCE0N_X4%3_r23 N_3_M3_g x_PM_ISO_FENCE0N_X4%3_15 49.53
R_x_PM_ISO_FENCE0N_X4%3_r24 x_PM_ISO_FENCE0N_X4%3_19 x_PM_ISO_FENCE0N_X4%3_11 4.56151
R_x_PM_ISO_FENCE0N_X4%3_r25 N_3_M7_g x_PM_ISO_FENCE0N_X4%3_11 59.67
R_x_PM_ISO_FENCE0N_X4%3_r26 x_PM_ISO_FENCE0N_X4%3_39 x_PM_ISO_FENCE0N_X4%3_10 2.6
R_x_PM_ISO_FENCE0N_X4%3_r27 x_PM_ISO_FENCE0N_X4%3_19 x_PM_ISO_FENCE0N_X4%3_9 0.043368
R_x_PM_ISO_FENCE0N_X4%3_r28 x_PM_ISO_FENCE0N_X4%3_10 x_PM_ISO_FENCE0N_X4%3_9 14.56
R_x_PM_ISO_FENCE0N_X4%3_r29 x_PM_ISO_FENCE0N_X4%3_39 x_PM_ISO_FENCE0N_X4%3_5 1.95
R_x_PM_ISO_FENCE0N_X4%3_r30 N_3_M2_g x_PM_ISO_FENCE0N_X4%3_5 49.53
R_x_PM_ISO_FENCE0N_X4%3_r31 x_PM_ISO_FENCE0N_X4%3_39 x_PM_ISO_FENCE0N_X4%3_1 1.95
R_x_PM_ISO_FENCE0N_X4%3_r32 N_3_M6_g x_PM_ISO_FENCE0N_X4%3_1 59.67
C_x_PM_ISO_FENCE0N_X4%A_c0 VSS x_PM_ISO_FENCE0N_X4%A_18 9.19188e-18
C_x_PM_ISO_FENCE0N_X4%A_c1 VSS x_PM_ISO_FENCE0N_X4%A_12 3.91953e-17
C_x_PM_ISO_FENCE0N_X4%A_c2 VSS N_A_M0_g 6.03881e-17
C_x_PM_ISO_FENCE0N_X4%A_c3 VSS N_A_M4_g 5.4076e-17
R_x_PM_ISO_FENCE0N_X4%A_r4 x_PM_ISO_FENCE0N_X4%A_18 x_PM_ISO_FENCE0N_X4%A_14 4.42
R_x_PM_ISO_FENCE0N_X4%A_r5 x_PM_ISO_FENCE0N_X4%A_14 x_PM_ISO_FENCE0N_X4%A_12 25.0012
R_x_PM_ISO_FENCE0N_X4%A_r6 x_PM_ISO_FENCE0N_X4%A_12 A 0.156071
R_x_PM_ISO_FENCE0N_X4%A_r7 x_PM_ISO_FENCE0N_X4%A_18 x_PM_ISO_FENCE0N_X4%A_5 1.95
R_x_PM_ISO_FENCE0N_X4%A_r8 N_A_M0_g x_PM_ISO_FENCE0N_X4%A_5 53.04
R_x_PM_ISO_FENCE0N_X4%A_r9 x_PM_ISO_FENCE0N_X4%A_18 x_PM_ISO_FENCE0N_X4%A_1 1.95
R_x_PM_ISO_FENCE0N_X4%A_r10 N_A_M4_g x_PM_ISO_FENCE0N_X4%A_1 51.48
C_x_PM_ISO_FENCE0N_X4%EN_c0 VSS x_PM_ISO_FENCE0N_X4%EN_14 8.95588e-18
C_x_PM_ISO_FENCE0N_X4%EN_c1 VSS x_PM_ISO_FENCE0N_X4%EN_12 6.45485e-17
C_x_PM_ISO_FENCE0N_X4%EN_c2 VSS N_EN_M1_g 6.24395e-17
C_x_PM_ISO_FENCE0N_X4%EN_c3 VSS N_EN_M5_g 5.82741e-17
R_x_PM_ISO_FENCE0N_X4%EN_r4 x_PM_ISO_FENCE0N_X4%EN_18 x_PM_ISO_FENCE0N_X4%EN_14 4.7687
R_x_PM_ISO_FENCE0N_X4%EN_r5 x_PM_ISO_FENCE0N_X4%EN_17 x_PM_ISO_FENCE0N_X4%EN_14 4.7687
R_x_PM_ISO_FENCE0N_X4%EN_r6 x_PM_ISO_FENCE0N_X4%EN_14 x_PM_ISO_FENCE0N_X4%EN_12 25.0012
R_x_PM_ISO_FENCE0N_X4%EN_r7 x_PM_ISO_FENCE0N_X4%EN_12 EN 0.2375
R_x_PM_ISO_FENCE0N_X4%EN_r8 N_EN_M1_g x_PM_ISO_FENCE0N_X4%EN_18 53.04
R_x_PM_ISO_FENCE0N_X4%EN_r9 N_EN_M5_g x_PM_ISO_FENCE0N_X4%EN_17 51.48
C_x_PM_ISO_FENCE0N_X4%Z_c0 VSS N_Z_M6_d 2.06047e-16
R_x_PM_ISO_FENCE0N_X4%Z_r1 N_Z_M2_d Z 2.13071
R_x_PM_ISO_FENCE0N_X4%Z_r2 Z N_Z_M6_d 1.47929
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
