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
* Cellname:   ISO_FENCE0N_X1.                                                  *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE0N_X1 VDD VSS A EN Z 
*.PININFO VDD:P VSS:G A:I EN:I Z:O 
*.EQN Z=(A * EN)
M_M3 N_3_M0_d N_A_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.205000U L=0.050000U
M_M4 N_VDD_M1_d N_EN_M1_g N_3_M0_d VDD PMOS_VTL W=0.205000U L=0.050000U
M_M5 N_Z_M2_d N_3_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.205000U L=0.050000U
M_M0 7 N_A_M3_g N_3_M3_s VSS NMOS_VTL W=0.180000U L=0.050000U
M_M1 N_VSS_M4_d N_EN_M4_g 7 VSS NMOS_VTL W=0.180000U L=0.050000U
M_M2 N_Z_M5_d N_3_M5_g N_VSS_M4_d VSS NMOS_VTL W=0.155000U L=0.050000U
C_x_PM_ISO_FENCE0N_X1%VDD_c0 VSS x_PM_ISO_FENCE0N_X1%VDD_39 2.66608e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c1 VSS x_PM_ISO_FENCE0N_X1%VDD_36 2.96417e-18
C_x_PM_ISO_FENCE0N_X1%VDD_c2 VSS x_PM_ISO_FENCE0N_X1%VDD_26 2.61481e-16
C_x_PM_ISO_FENCE0N_X1%VDD_c3 VSS N_VDD_M1_d 2.60772e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c4 VSS x_PM_ISO_FENCE0N_X1%VDD_19 1.90967e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c5 VSS x_PM_ISO_FENCE0N_X1%VDD_18 1.97804e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c6 VSS N_VDD_M0_s 1.52488e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c7 VSS x_PM_ISO_FENCE0N_X1%VDD_13 1.92462e-17
C_x_PM_ISO_FENCE0N_X1%VDD_c8 VSS x_PM_ISO_FENCE0N_X1%VDD_12 2.334e-16
C_x_PM_ISO_FENCE0N_X1%VDD_c9 VSS x_PM_ISO_FENCE0N_X1%VDD_9 5.77955e-16
R_x_PM_ISO_FENCE0N_X1%VDD_r10 x_PM_ISO_FENCE0N_X1%VDD_39 VDD 0.13879
R_x_PM_ISO_FENCE0N_X1%VDD_r11 x_PM_ISO_FENCE0N_X1%VDD_35 VDD 0.392137
R_x_PM_ISO_FENCE0N_X1%VDD_r12 x_PM_ISO_FENCE0N_X1%VDD_26 VDD 0.13879
R_x_PM_ISO_FENCE0N_X1%VDD_r13 VDD x_PM_ISO_FENCE0N_X1%VDD_26 3.84471
R_x_PM_ISO_FENCE0N_X1%VDD_r14 x_PM_ISO_FENCE0N_X1%VDD_36 x_PM_ISO_FENCE0N_X1%VDD_25 0.073144
R_x_PM_ISO_FENCE0N_X1%VDD_r15 x_PM_ISO_FENCE0N_X1%VDD_25 x_PM_ISO_FENCE0N_X1%VDD_39 0.715294
R_x_PM_ISO_FENCE0N_X1%VDD_r16 x_PM_ISO_FENCE0N_X1%VDD_36 x_PM_ISO_FENCE0N_X1%VDD_20 0.145286
R_x_PM_ISO_FENCE0N_X1%VDD_r17 N_VDD_M1_d x_PM_ISO_FENCE0N_X1%VDD_20 1.01786
R_x_PM_ISO_FENCE0N_X1%VDD_r18 x_PM_ISO_FENCE0N_X1%VDD_35 x_PM_ISO_FENCE0N_X1%VDD_19 0.0753
R_x_PM_ISO_FENCE0N_X1%VDD_r19 x_PM_ISO_FENCE0N_X1%VDD_36 x_PM_ISO_FENCE0N_X1%VDD_18 0.073144
R_x_PM_ISO_FENCE0N_X1%VDD_r20 x_PM_ISO_FENCE0N_X1%VDD_19 x_PM_ISO_FENCE0N_X1%VDD_18 0.681765
R_x_PM_ISO_FENCE0N_X1%VDD_r21 N_VDD_M0_s x_PM_ISO_FENCE0N_X1%VDD_35 1.01786
R_x_PM_ISO_FENCE0N_X1%VDD_r22 VDD x_PM_ISO_FENCE0N_X1%VDD_13 0.140282
R_x_PM_ISO_FENCE0N_X1%VDD_r23 VDD x_PM_ISO_FENCE0N_X1%VDD_12 0.143516
R_x_PM_ISO_FENCE0N_X1%VDD_r24 x_PM_ISO_FENCE0N_X1%VDD_13 x_PM_ISO_FENCE0N_X1%VDD_12 7.68941
R_x_PM_ISO_FENCE0N_X1%VDD_r25 VDD x_PM_ISO_FENCE0N_X1%VDD_9 8.94118
C_x_PM_ISO_FENCE0N_X1%VSS_c0 VSS x_PM_ISO_FENCE0N_X1%VSS_36 3.62977e-17
C_x_PM_ISO_FENCE0N_X1%VSS_c1 VSS x_PM_ISO_FENCE0N_X1%VSS_33 2.80728e-18
C_x_PM_ISO_FENCE0N_X1%VSS_c2 VSS x_PM_ISO_FENCE0N_X1%VSS_31 2.334e-16
C_x_PM_ISO_FENCE0N_X1%VSS_c3 VSS VSS 2.61603e-16
C_x_PM_ISO_FENCE0N_X1%VSS_c4 VSS N_VSS_M4_d 3.1623e-17
C_x_PM_ISO_FENCE0N_X1%VSS_c5 VSS x_PM_ISO_FENCE0N_X1%VSS_14 1.07541e-17
C_x_PM_ISO_FENCE0N_X1%VSS_c6 VSS x_PM_ISO_FENCE0N_X1%VSS_13 4.82501e-17
C_x_PM_ISO_FENCE0N_X1%VSS_c7 VSS x_PM_ISO_FENCE0N_X1%VSS_10 5.77955e-16
C_x_PM_ISO_FENCE0N_X1%VSS_c8 VSS x_PM_ISO_FENCE0N_X1%VSS_9 1.92462e-17
R_x_PM_ISO_FENCE0N_X1%VSS_r9 x_PM_ISO_FENCE0N_X1%VSS_36 VSS 0.13879
R_x_PM_ISO_FENCE0N_X1%VSS_r10 x_PM_ISO_FENCE0N_X1%VSS_31 VSS 0.138985
R_x_PM_ISO_FENCE0N_X1%VSS_r11 x_PM_ISO_FENCE0N_X1%VSS_33 x_PM_ISO_FENCE0N_X1%VSS_22 0.073144
R_x_PM_ISO_FENCE0N_X1%VSS_r12 x_PM_ISO_FENCE0N_X1%VSS_22 x_PM_ISO_FENCE0N_X1%VSS_36 0.715294
R_x_PM_ISO_FENCE0N_X1%VSS_r13 x_PM_ISO_FENCE0N_X1%VSS_33 x_PM_ISO_FENCE0N_X1%VSS_17 0.145286
R_x_PM_ISO_FENCE0N_X1%VSS_r14 N_VSS_M4_d x_PM_ISO_FENCE0N_X1%VSS_17 0.366429
R_x_PM_ISO_FENCE0N_X1%VSS_r15 x_PM_ISO_FENCE0N_X1%VSS_14 VSS 0.138595
R_x_PM_ISO_FENCE0N_X1%VSS_r16 VSS x_PM_ISO_FENCE0N_X1%VSS_14 0.95
R_x_PM_ISO_FENCE0N_X1%VSS_r17 x_PM_ISO_FENCE0N_X1%VSS_33 x_PM_ISO_FENCE0N_X1%VSS_13 0.073144
R_x_PM_ISO_FENCE0N_X1%VSS_r18 VSS x_PM_ISO_FENCE0N_X1%VSS_13 0.078235
R_x_PM_ISO_FENCE0N_X1%VSS_r19 VSS x_PM_ISO_FENCE0N_X1%VSS_10 8.94118
R_x_PM_ISO_FENCE0N_X1%VSS_r20 VSS x_PM_ISO_FENCE0N_X1%VSS_9 0.140282
R_x_PM_ISO_FENCE0N_X1%VSS_r21 x_PM_ISO_FENCE0N_X1%VSS_9 x_PM_ISO_FENCE0N_X1%VSS_31 7.68941
C_x_PM_ISO_FENCE0N_X1%3_c0 VSS x_PM_ISO_FENCE0N_X1%3_30 1.26691e-17
C_x_PM_ISO_FENCE0N_X1%3_c1 VSS x_PM_ISO_FENCE0N_X1%3_26 1.13553e-16
C_x_PM_ISO_FENCE0N_X1%3_c2 VSS x_PM_ISO_FENCE0N_X1%3_22 7.80211e-18
C_x_PM_ISO_FENCE0N_X1%3_c3 VSS x_PM_ISO_FENCE0N_X1%3_21 3.18073e-17
C_x_PM_ISO_FENCE0N_X1%3_c4 VSS N_3_M0_d 1.96711e-17
C_x_PM_ISO_FENCE0N_X1%3_c5 VSS x_PM_ISO_FENCE0N_X1%3_16 5.45413e-18
C_x_PM_ISO_FENCE0N_X1%3_c6 VSS x_PM_ISO_FENCE0N_X1%3_15 8.21492e-17
C_x_PM_ISO_FENCE0N_X1%3_c7 VSS N_3_M3_s 1.4575e-17
C_x_PM_ISO_FENCE0N_X1%3_c8 VSS N_3_M2_g 7.04725e-17
C_x_PM_ISO_FENCE0N_X1%3_c9 VSS N_3_M5_g 4.89384e-17
R_x_PM_ISO_FENCE0N_X1%3_r10 x_PM_ISO_FENCE0N_X1%3_30 x_PM_ISO_FENCE0N_X1%3_28 4.42
R_x_PM_ISO_FENCE0N_X1%3_r11 x_PM_ISO_FENCE0N_X1%3_28 x_PM_ISO_FENCE0N_X1%3_26 25.0012
R_x_PM_ISO_FENCE0N_X1%3_r12 x_PM_ISO_FENCE0N_X1%3_26 x_PM_ISO_FENCE0N_X1%3_24 1.64214
R_x_PM_ISO_FENCE0N_X1%3_r13 x_PM_ISO_FENCE0N_X1%3_26 x_PM_ISO_FENCE0N_X1%3_23 1.01786
R_x_PM_ISO_FENCE0N_X1%3_r14 x_PM_ISO_FENCE0N_X1%3_24 x_PM_ISO_FENCE0N_X1%3_21 0.212317
R_x_PM_ISO_FENCE0N_X1%3_r15 x_PM_ISO_FENCE0N_X1%3_22 x_PM_ISO_FENCE0N_X1%3_21 0.895714
R_x_PM_ISO_FENCE0N_X1%3_r16 x_PM_ISO_FENCE0N_X1%3_22 x_PM_ISO_FENCE0N_X1%3_17 0.212317
R_x_PM_ISO_FENCE0N_X1%3_r17 N_3_M0_d x_PM_ISO_FENCE0N_X1%3_17 0.447857
R_x_PM_ISO_FENCE0N_X1%3_r18 x_PM_ISO_FENCE0N_X1%3_23 x_PM_ISO_FENCE0N_X1%3_15 0.212317
R_x_PM_ISO_FENCE0N_X1%3_r19 x_PM_ISO_FENCE0N_X1%3_16 x_PM_ISO_FENCE0N_X1%3_15 1.92714
R_x_PM_ISO_FENCE0N_X1%3_r20 x_PM_ISO_FENCE0N_X1%3_16 x_PM_ISO_FENCE0N_X1%3_11 0.212317
R_x_PM_ISO_FENCE0N_X1%3_r21 N_3_M3_s x_PM_ISO_FENCE0N_X1%3_11 0.149286
R_x_PM_ISO_FENCE0N_X1%3_r22 x_PM_ISO_FENCE0N_X1%3_30 x_PM_ISO_FENCE0N_X1%3_5 1.95
R_x_PM_ISO_FENCE0N_X1%3_r23 N_3_M2_g x_PM_ISO_FENCE0N_X1%3_5 75.27
R_x_PM_ISO_FENCE0N_X1%3_r24 x_PM_ISO_FENCE0N_X1%3_30 x_PM_ISO_FENCE0N_X1%3_1 1.95
R_x_PM_ISO_FENCE0N_X1%3_r25 N_3_M5_g x_PM_ISO_FENCE0N_X1%3_1 48.75
C_x_PM_ISO_FENCE0N_X1%A_c0 VSS x_PM_ISO_FENCE0N_X1%A_14 6.98642e-18
C_x_PM_ISO_FENCE0N_X1%A_c1 VSS x_PM_ISO_FENCE0N_X1%A_12 1.6438e-17
C_x_PM_ISO_FENCE0N_X1%A_c2 VSS N_A_M0_g 5.07797e-17
C_x_PM_ISO_FENCE0N_X1%A_c3 VSS N_A_M3_g 5.64124e-17
R_x_PM_ISO_FENCE0N_X1%A_r4 x_PM_ISO_FENCE0N_X1%A_18 x_PM_ISO_FENCE0N_X1%A_14 4.74714
R_x_PM_ISO_FENCE0N_X1%A_r5 x_PM_ISO_FENCE0N_X1%A_17 x_PM_ISO_FENCE0N_X1%A_14 4.74714
R_x_PM_ISO_FENCE0N_X1%A_r6 x_PM_ISO_FENCE0N_X1%A_14 x_PM_ISO_FENCE0N_X1%A_12 25.0012
R_x_PM_ISO_FENCE0N_X1%A_r7 x_PM_ISO_FENCE0N_X1%A_12 A 0.136562
R_x_PM_ISO_FENCE0N_X1%A_r8 N_A_M0_g x_PM_ISO_FENCE0N_X1%A_18 58.11
R_x_PM_ISO_FENCE0N_X1%A_r9 N_A_M3_g x_PM_ISO_FENCE0N_X1%A_17 63.96
C_x_PM_ISO_FENCE0N_X1%EN_c0 VSS x_PM_ISO_FENCE0N_X1%EN_14 8.68919e-18
C_x_PM_ISO_FENCE0N_X1%EN_c1 VSS x_PM_ISO_FENCE0N_X1%EN_12 5.29363e-17
C_x_PM_ISO_FENCE0N_X1%EN_c2 VSS N_EN_M1_g 7.14776e-17
C_x_PM_ISO_FENCE0N_X1%EN_c3 VSS N_EN_M4_g 4.31617e-17
R_x_PM_ISO_FENCE0N_X1%EN_r4 x_PM_ISO_FENCE0N_X1%EN_18 x_PM_ISO_FENCE0N_X1%EN_14 4.7687
R_x_PM_ISO_FENCE0N_X1%EN_r5 x_PM_ISO_FENCE0N_X1%EN_17 x_PM_ISO_FENCE0N_X1%EN_14 4.7687
R_x_PM_ISO_FENCE0N_X1%EN_r6 x_PM_ISO_FENCE0N_X1%EN_14 x_PM_ISO_FENCE0N_X1%EN_12 25.0012
R_x_PM_ISO_FENCE0N_X1%EN_r7 x_PM_ISO_FENCE0N_X1%EN_12 EN 0.169643
R_x_PM_ISO_FENCE0N_X1%EN_r8 N_EN_M1_g x_PM_ISO_FENCE0N_X1%EN_18 83.85
R_x_PM_ISO_FENCE0N_X1%EN_r9 N_EN_M4_g x_PM_ISO_FENCE0N_X1%EN_17 38.22
C_x_PM_ISO_FENCE0N_X1%Z_c0 VSS N_Z_M5_d 1.82344e-16
R_x_PM_ISO_FENCE0N_X1%Z_r1 N_Z_M2_d Z 1.93167
R_x_PM_ISO_FENCE0N_X1%Z_r2 Z N_Z_M5_d 1.67833
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
