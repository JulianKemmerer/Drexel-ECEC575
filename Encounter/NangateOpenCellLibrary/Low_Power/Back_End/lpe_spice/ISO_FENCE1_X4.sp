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
* Cellname:   ISO_FENCE1_X4.                                                   *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:43 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE1_X4 VDD VSS A EN Z 
*.PININFO VDD:P VSS:G A:I EN:I Z:O 
*.EQN Z=(A + EN)
M_M4 7 N_A_M0_g N_3_M0_s VDD PMOS_VTL W=0.460000U L=0.050000U
M_M5 N_VDD_M1_d N_EN_M1_g 7 VDD PMOS_VTL W=0.460000U L=0.050000U
M_M6 N_Z_M2_d N_3_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.415000U L=0.050000U
M_M7 N_VDD_M3_d N_3_M3_g N_Z_M2_d VDD PMOS_VTL W=0.415000U L=0.050000U
M_M0 N_3_M4_d N_A_M4_g N_VSS_M4_s VSS NMOS_VTL W=0.280000U L=0.050000U
M_M1 N_VSS_M5_d N_EN_M5_g N_3_M4_d VSS NMOS_VTL W=0.280000U L=0.050000U
M_M2 N_Z_M6_d N_3_M6_g N_VSS_M5_d VSS NMOS_VTL W=0.305000U L=0.050000U
M_M3 N_VSS_M7_d N_3_M7_g N_Z_M6_d VSS NMOS_VTL W=0.305000U L=0.050000U
C_x_PM_ISO_FENCE1_X4%VDD_c0 VSS x_PM_ISO_FENCE1_X4%VDD_37 2.90088e-18
C_x_PM_ISO_FENCE1_X4%VDD_c1 VSS x_PM_ISO_FENCE1_X4%VDD_36 1.07541e-17
C_x_PM_ISO_FENCE1_X4%VDD_c2 VSS x_PM_ISO_FENCE1_X4%VDD_35 2.334e-16
C_x_PM_ISO_FENCE1_X4%VDD_c3 VSS x_PM_ISO_FENCE1_X4%VDD_26 2.73197e-16
C_x_PM_ISO_FENCE1_X4%VDD_c4 VSS N_VDD_M3_d 2.89798e-17
C_x_PM_ISO_FENCE1_X4%VDD_c5 VSS x_PM_ISO_FENCE1_X4%VDD_20 2.17779e-17
C_x_PM_ISO_FENCE1_X4%VDD_c6 VSS N_VDD_M1_d 3.65168e-17
C_x_PM_ISO_FENCE1_X4%VDD_c7 VSS x_PM_ISO_FENCE1_X4%VDD_14 3.72673e-17
C_x_PM_ISO_FENCE1_X4%VDD_c8 VSS x_PM_ISO_FENCE1_X4%VDD_13 1.92462e-17
C_x_PM_ISO_FENCE1_X4%VDD_c9 VSS x_PM_ISO_FENCE1_X4%VDD_9 5.90809e-16
R_x_PM_ISO_FENCE1_X4%VDD_r10 VDD x_PM_ISO_FENCE1_X4%VDD_38 0.490833
R_x_PM_ISO_FENCE1_X4%VDD_r11 x_PM_ISO_FENCE1_X4%VDD_36 VDD 0.138595
R_x_PM_ISO_FENCE1_X4%VDD_r12 x_PM_ISO_FENCE1_X4%VDD_35 VDD 0.138985
R_x_PM_ISO_FENCE1_X4%VDD_r13 VDD x_PM_ISO_FENCE1_X4%VDD_26 0.144103
R_x_PM_ISO_FENCE1_X4%VDD_r14 VDD x_PM_ISO_FENCE1_X4%VDD_26 3.84471
R_x_PM_ISO_FENCE1_X4%VDD_r15 N_VDD_M3_d x_PM_ISO_FENCE1_X4%VDD_38 0.610714
R_x_PM_ISO_FENCE1_X4%VDD_r16 x_PM_ISO_FENCE1_X4%VDD_37 x_PM_ISO_FENCE1_X4%VDD_21 0.073144
R_x_PM_ISO_FENCE1_X4%VDD_r17 x_PM_ISO_FENCE1_X4%VDD_38 x_PM_ISO_FENCE1_X4%VDD_20 0.075492
R_x_PM_ISO_FENCE1_X4%VDD_r18 x_PM_ISO_FENCE1_X4%VDD_21 x_PM_ISO_FENCE1_X4%VDD_20 0.692941
R_x_PM_ISO_FENCE1_X4%VDD_r19 x_PM_ISO_FENCE1_X4%VDD_37 x_PM_ISO_FENCE1_X4%VDD_16 0.145286
R_x_PM_ISO_FENCE1_X4%VDD_r20 N_VDD_M1_d x_PM_ISO_FENCE1_X4%VDD_16 0.610714
R_x_PM_ISO_FENCE1_X4%VDD_r21 x_PM_ISO_FENCE1_X4%VDD_37 x_PM_ISO_FENCE1_X4%VDD_14 0.073144
R_x_PM_ISO_FENCE1_X4%VDD_r22 x_PM_ISO_FENCE1_X4%VDD_36 x_PM_ISO_FENCE1_X4%VDD_14 1.02824
R_x_PM_ISO_FENCE1_X4%VDD_r23 VDD x_PM_ISO_FENCE1_X4%VDD_13 0.140282
R_x_PM_ISO_FENCE1_X4%VDD_r24 x_PM_ISO_FENCE1_X4%VDD_13 x_PM_ISO_FENCE1_X4%VDD_35 7.68941
R_x_PM_ISO_FENCE1_X4%VDD_r25 VDD x_PM_ISO_FENCE1_X4%VDD_9 9.15353
C_x_PM_ISO_FENCE1_X4%VSS_c0 VSS VSS 2.73114e-16
C_x_PM_ISO_FENCE1_X4%VSS_c1 VSS x_PM_ISO_FENCE1_X4%VSS_42 2.7779e-18
C_x_PM_ISO_FENCE1_X4%VSS_c2 VSS N_VSS_M7_d 3.35624e-17
C_x_PM_ISO_FENCE1_X4%VSS_c3 VSS x_PM_ISO_FENCE1_X4%VSS_27 4.2276e-17
C_x_PM_ISO_FENCE1_X4%VSS_c4 VSS VSS 2.45028e-17
C_x_PM_ISO_FENCE1_X4%VSS_c5 VSS x_PM_ISO_FENCE1_X4%VSS_20 1.90479e-17
C_x_PM_ISO_FENCE1_X4%VSS_c6 VSS x_PM_ISO_FENCE1_X4%VSS_19 3.10176e-17
C_x_PM_ISO_FENCE1_X4%VSS_c7 VSS N_VSS_M4_s 3.4333e-17
C_x_PM_ISO_FENCE1_X4%VSS_c8 VSS x_PM_ISO_FENCE1_X4%VSS_12 5.90809e-16
C_x_PM_ISO_FENCE1_X4%VSS_c9 VSS x_PM_ISO_FENCE1_X4%VSS_11 1.92462e-17
C_x_PM_ISO_FENCE1_X4%VSS_c10 VSS x_PM_ISO_FENCE1_X4%VSS_10 2.334e-16
R_x_PM_ISO_FENCE1_X4%VSS_r11 VSS x_PM_ISO_FENCE1_X4%VSS_43 0.490833
R_x_PM_ISO_FENCE1_X4%VSS_r12 x_PM_ISO_FENCE1_X4%VSS_41 VSS 0.392137
R_x_PM_ISO_FENCE1_X4%VSS_r13 N_VSS_M7_d x_PM_ISO_FENCE1_X4%VSS_43 1.09929
R_x_PM_ISO_FENCE1_X4%VSS_r14 x_PM_ISO_FENCE1_X4%VSS_42 x_PM_ISO_FENCE1_X4%VSS_28 0.073144
R_x_PM_ISO_FENCE1_X4%VSS_r15 x_PM_ISO_FENCE1_X4%VSS_43 x_PM_ISO_FENCE1_X4%VSS_27 0.075492
R_x_PM_ISO_FENCE1_X4%VSS_r16 x_PM_ISO_FENCE1_X4%VSS_28 x_PM_ISO_FENCE1_X4%VSS_27 0.692941
R_x_PM_ISO_FENCE1_X4%VSS_r17 N_VSS_M5_d VSS 0.067857
R_x_PM_ISO_FENCE1_X4%VSS_r18 x_PM_ISO_FENCE1_X4%VSS_42 x_PM_ISO_FENCE1_X4%VSS_21 0.145286
R_x_PM_ISO_FENCE1_X4%VSS_r19 VSS x_PM_ISO_FENCE1_X4%VSS_21 0.271429
R_x_PM_ISO_FENCE1_X4%VSS_r20 x_PM_ISO_FENCE1_X4%VSS_41 x_PM_ISO_FENCE1_X4%VSS_20 0.0753
R_x_PM_ISO_FENCE1_X4%VSS_r21 x_PM_ISO_FENCE1_X4%VSS_42 x_PM_ISO_FENCE1_X4%VSS_19 0.073144
R_x_PM_ISO_FENCE1_X4%VSS_r22 x_PM_ISO_FENCE1_X4%VSS_20 x_PM_ISO_FENCE1_X4%VSS_19 0.681765
R_x_PM_ISO_FENCE1_X4%VSS_r23 N_VSS_M4_s x_PM_ISO_FENCE1_X4%VSS_41 1.09929
R_x_PM_ISO_FENCE1_X4%VSS_r24 VSS x_PM_ISO_FENCE1_X4%VSS_12 9.15353
R_x_PM_ISO_FENCE1_X4%VSS_r25 VSS x_PM_ISO_FENCE1_X4%VSS_11 0.140282
R_x_PM_ISO_FENCE1_X4%VSS_r26 VSS x_PM_ISO_FENCE1_X4%VSS_10 0.143516
R_x_PM_ISO_FENCE1_X4%VSS_r27 x_PM_ISO_FENCE1_X4%VSS_11 x_PM_ISO_FENCE1_X4%VSS_10 7.68941
C_x_PM_ISO_FENCE1_X4%3_c0 VSS x_PM_ISO_FENCE1_X4%3_35 9.05496e-17
C_x_PM_ISO_FENCE1_X4%3_c1 VSS x_PM_ISO_FENCE1_X4%3_28 7.82856e-17
C_x_PM_ISO_FENCE1_X4%3_c2 VSS x_PM_ISO_FENCE1_X4%3_27 6.99878e-18
C_x_PM_ISO_FENCE1_X4%3_c3 VSS x_PM_ISO_FENCE1_X4%3_26 5.06457e-17
C_x_PM_ISO_FENCE1_X4%3_c4 VSS N_3_M0_s 2.50606e-17
C_x_PM_ISO_FENCE1_X4%3_c5 VSS x_PM_ISO_FENCE1_X4%3_19 3.30952e-18
C_x_PM_ISO_FENCE1_X4%3_c6 VSS N_3_M3_g 5.24093e-17
C_x_PM_ISO_FENCE1_X4%3_c7 VSS N_3_M7_g 3.85077e-17
C_x_PM_ISO_FENCE1_X4%3_c8 VSS x_PM_ISO_FENCE1_X4%3_10 7.16207e-18
C_x_PM_ISO_FENCE1_X4%3_c9 VSS x_PM_ISO_FENCE1_X4%3_9 1.26095e-17
C_x_PM_ISO_FENCE1_X4%3_c10 VSS N_3_M2_g 4.88809e-17
C_x_PM_ISO_FENCE1_X4%3_c11 VSS N_3_M6_g 3.20174e-17
R_x_PM_ISO_FENCE1_X4%3_r12 x_PM_ISO_FENCE1_X4%3_39 x_PM_ISO_FENCE1_X4%3_37 3.9
R_x_PM_ISO_FENCE1_X4%3_r13 x_PM_ISO_FENCE1_X4%3_37 x_PM_ISO_FENCE1_X4%3_35 25.0012
R_x_PM_ISO_FENCE1_X4%3_r14 x_PM_ISO_FENCE1_X4%3_35 x_PM_ISO_FENCE1_X4%3_33 0.963571
R_x_PM_ISO_FENCE1_X4%3_r15 x_PM_ISO_FENCE1_X4%3_35 x_PM_ISO_FENCE1_X4%3_32 1.01786
R_x_PM_ISO_FENCE1_X4%3_r16 x_PM_ISO_FENCE1_X4%3_32 x_PM_ISO_FENCE1_X4%3_28 0.212317
R_x_PM_ISO_FENCE1_X4%3_r17 N_3_M4_d x_PM_ISO_FENCE1_X4%3_28 1.12643
R_x_PM_ISO_FENCE1_X4%3_r18 x_PM_ISO_FENCE1_X4%3_33 x_PM_ISO_FENCE1_X4%3_26 0.212317
R_x_PM_ISO_FENCE1_X4%3_r19 x_PM_ISO_FENCE1_X4%3_27 x_PM_ISO_FENCE1_X4%3_26 1.95429
R_x_PM_ISO_FENCE1_X4%3_r20 x_PM_ISO_FENCE1_X4%3_27 x_PM_ISO_FENCE1_X4%3_22 0.212317
R_x_PM_ISO_FENCE1_X4%3_r21 N_3_M0_s x_PM_ISO_FENCE1_X4%3_22 1.20786
R_x_PM_ISO_FENCE1_X4%3_r22 x_PM_ISO_FENCE1_X4%3_19 x_PM_ISO_FENCE1_X4%3_15 4.56151
R_x_PM_ISO_FENCE1_X4%3_r23 N_3_M3_g x_PM_ISO_FENCE1_X4%3_15 70.59
R_x_PM_ISO_FENCE1_X4%3_r24 x_PM_ISO_FENCE1_X4%3_19 x_PM_ISO_FENCE1_X4%3_11 4.56151
R_x_PM_ISO_FENCE1_X4%3_r25 N_3_M7_g x_PM_ISO_FENCE1_X4%3_11 37.83
R_x_PM_ISO_FENCE1_X4%3_r26 x_PM_ISO_FENCE1_X4%3_39 x_PM_ISO_FENCE1_X4%3_10 2.6
R_x_PM_ISO_FENCE1_X4%3_r27 x_PM_ISO_FENCE1_X4%3_19 x_PM_ISO_FENCE1_X4%3_9 0.043368
R_x_PM_ISO_FENCE1_X4%3_r28 x_PM_ISO_FENCE1_X4%3_10 x_PM_ISO_FENCE1_X4%3_9 14.56
R_x_PM_ISO_FENCE1_X4%3_r29 x_PM_ISO_FENCE1_X4%3_39 x_PM_ISO_FENCE1_X4%3_5 1.95
R_x_PM_ISO_FENCE1_X4%3_r30 N_3_M2_g x_PM_ISO_FENCE1_X4%3_5 70.59
R_x_PM_ISO_FENCE1_X4%3_r31 x_PM_ISO_FENCE1_X4%3_39 x_PM_ISO_FENCE1_X4%3_1 1.95
R_x_PM_ISO_FENCE1_X4%3_r32 N_3_M6_g x_PM_ISO_FENCE1_X4%3_1 37.83
C_x_PM_ISO_FENCE1_X4%A_c0 VSS x_PM_ISO_FENCE1_X4%A_14 7.37455e-18
C_x_PM_ISO_FENCE1_X4%A_c1 VSS x_PM_ISO_FENCE1_X4%A_12 4.76385e-17
C_x_PM_ISO_FENCE1_X4%A_c2 VSS N_A_M0_g 8.44835e-17
C_x_PM_ISO_FENCE1_X4%A_c3 VSS N_A_M4_g 4.43993e-17
R_x_PM_ISO_FENCE1_X4%A_r4 x_PM_ISO_FENCE1_X4%A_18 x_PM_ISO_FENCE1_X4%A_14 4.74714
R_x_PM_ISO_FENCE1_X4%A_r5 x_PM_ISO_FENCE1_X4%A_17 x_PM_ISO_FENCE1_X4%A_14 4.74714
R_x_PM_ISO_FENCE1_X4%A_r6 x_PM_ISO_FENCE1_X4%A_14 x_PM_ISO_FENCE1_X4%A_12 25.0012
R_x_PM_ISO_FENCE1_X4%A_r7 x_PM_ISO_FENCE1_X4%A_12 A 0.156071
R_x_PM_ISO_FENCE1_X4%A_r8 N_A_M0_g x_PM_ISO_FENCE1_X4%A_18 82.68
R_x_PM_ISO_FENCE1_X4%A_r9 N_A_M4_g x_PM_ISO_FENCE1_X4%A_17 31.2
C_x_PM_ISO_FENCE1_X4%EN_c0 VSS x_PM_ISO_FENCE1_X4%EN_14 8.77233e-18
C_x_PM_ISO_FENCE1_X4%EN_c1 VSS x_PM_ISO_FENCE1_X4%EN_12 7.34632e-17
C_x_PM_ISO_FENCE1_X4%EN_c2 VSS N_EN_M1_g 8.4143e-17
C_x_PM_ISO_FENCE1_X4%EN_c3 VSS N_EN_M5_g 4.41696e-17
R_x_PM_ISO_FENCE1_X4%EN_r4 x_PM_ISO_FENCE1_X4%EN_18 x_PM_ISO_FENCE1_X4%EN_14 4.7687
R_x_PM_ISO_FENCE1_X4%EN_r5 x_PM_ISO_FENCE1_X4%EN_17 x_PM_ISO_FENCE1_X4%EN_14 4.7687
R_x_PM_ISO_FENCE1_X4%EN_r6 x_PM_ISO_FENCE1_X4%EN_14 x_PM_ISO_FENCE1_X4%EN_12 25.0012
R_x_PM_ISO_FENCE1_X4%EN_r7 x_PM_ISO_FENCE1_X4%EN_12 EN 0.169643
R_x_PM_ISO_FENCE1_X4%EN_r8 N_EN_M1_g x_PM_ISO_FENCE1_X4%EN_18 82.68
R_x_PM_ISO_FENCE1_X4%EN_r9 N_EN_M5_g x_PM_ISO_FENCE1_X4%EN_17 31.2
C_x_PM_ISO_FENCE1_X4%Z_c0 VSS N_Z_M6_d 2.26994e-16
R_x_PM_ISO_FENCE1_X4%Z_r1 N_Z_M2_d Z 1.76278
R_x_PM_ISO_FENCE1_X4%Z_r2 Z N_Z_M6_d 1.15056
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
