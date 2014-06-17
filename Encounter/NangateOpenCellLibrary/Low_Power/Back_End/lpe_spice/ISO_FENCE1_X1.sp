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
* Cellname:   ISO_FENCE1_X1.                                                   *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:43 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE1_X1 VDD VSS A EN Z 
*.PININFO VDD:P VSS:G A:I EN:I Z:O 
*.EQN Z=(A + EN)
M_M3 7 N_A_M0_g N_3_M0_s VDD PMOS_VTL W=0.250000U L=0.050000U
M_M4 N_VDD_M1_d N_EN_M1_g 7 VDD PMOS_VTL W=0.250000U L=0.050000U
M_M5 N_Z_M2_d N_3_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.205000U L=0.050000U
M_M0 N_3_M3_d N_A_M3_g N_VSS_M3_s VSS NMOS_VTL W=0.155000U L=0.050000U
M_M1 N_VSS_M4_d N_EN_M4_g N_3_M3_d VSS NMOS_VTL W=0.155000U L=0.050000U
M_M2 N_Z_M5_d N_3_M5_g N_VSS_M4_d VSS NMOS_VTL W=0.155000U L=0.050000U
C_x_PM_ISO_FENCE1_X1%VDD_c0 VSS x_PM_ISO_FENCE1_X1%VDD_35 2.38573e-17
C_x_PM_ISO_FENCE1_X1%VDD_c1 VSS x_PM_ISO_FENCE1_X1%VDD_32 2.98261e-18
C_x_PM_ISO_FENCE1_X1%VDD_c2 VSS x_PM_ISO_FENCE1_X1%VDD_31 1.056e-17
C_x_PM_ISO_FENCE1_X1%VDD_c3 VSS x_PM_ISO_FENCE1_X1%VDD_30 2.334e-16
C_x_PM_ISO_FENCE1_X1%VDD_c4 VSS x_PM_ISO_FENCE1_X1%VDD_21 2.61481e-16
C_x_PM_ISO_FENCE1_X1%VDD_c5 VSS N_VDD_M1_d 3.50746e-17
C_x_PM_ISO_FENCE1_X1%VDD_c6 VSS x_PM_ISO_FENCE1_X1%VDD_13 3.65455e-17
C_x_PM_ISO_FENCE1_X1%VDD_c7 VSS x_PM_ISO_FENCE1_X1%VDD_12 1.92462e-17
C_x_PM_ISO_FENCE1_X1%VDD_c8 VSS x_PM_ISO_FENCE1_X1%VDD_8 5.77955e-16
R_x_PM_ISO_FENCE1_X1%VDD_r9 x_PM_ISO_FENCE1_X1%VDD_35 VDD 0.13879
R_x_PM_ISO_FENCE1_X1%VDD_r10 x_PM_ISO_FENCE1_X1%VDD_31 VDD 0.138595
R_x_PM_ISO_FENCE1_X1%VDD_r11 x_PM_ISO_FENCE1_X1%VDD_30 VDD 0.138985
R_x_PM_ISO_FENCE1_X1%VDD_r12 x_PM_ISO_FENCE1_X1%VDD_21 VDD 0.13879
R_x_PM_ISO_FENCE1_X1%VDD_r13 VDD x_PM_ISO_FENCE1_X1%VDD_21 3.84471
R_x_PM_ISO_FENCE1_X1%VDD_r14 x_PM_ISO_FENCE1_X1%VDD_32 x_PM_ISO_FENCE1_X1%VDD_20 0.073144
R_x_PM_ISO_FENCE1_X1%VDD_r15 x_PM_ISO_FENCE1_X1%VDD_20 x_PM_ISO_FENCE1_X1%VDD_35 0.715294
R_x_PM_ISO_FENCE1_X1%VDD_r16 x_PM_ISO_FENCE1_X1%VDD_32 x_PM_ISO_FENCE1_X1%VDD_15 0.145286
R_x_PM_ISO_FENCE1_X1%VDD_r17 N_VDD_M1_d x_PM_ISO_FENCE1_X1%VDD_15 1.31643
R_x_PM_ISO_FENCE1_X1%VDD_r18 x_PM_ISO_FENCE1_X1%VDD_32 x_PM_ISO_FENCE1_X1%VDD_13 0.073144
R_x_PM_ISO_FENCE1_X1%VDD_r19 x_PM_ISO_FENCE1_X1%VDD_31 x_PM_ISO_FENCE1_X1%VDD_13 1.02824
R_x_PM_ISO_FENCE1_X1%VDD_r20 VDD x_PM_ISO_FENCE1_X1%VDD_12 0.140282
R_x_PM_ISO_FENCE1_X1%VDD_r21 x_PM_ISO_FENCE1_X1%VDD_12 x_PM_ISO_FENCE1_X1%VDD_30 7.68941
R_x_PM_ISO_FENCE1_X1%VDD_r22 VDD x_PM_ISO_FENCE1_X1%VDD_8 8.94118
C_x_PM_ISO_FENCE1_X1%VSS_c0 VSS x_PM_ISO_FENCE1_X1%VSS_40 3.13435e-17
C_x_PM_ISO_FENCE1_X1%VSS_c1 VSS x_PM_ISO_FENCE1_X1%VSS_37 2.92673e-18
C_x_PM_ISO_FENCE1_X1%VSS_c2 VSS VSS 2.61578e-16
C_x_PM_ISO_FENCE1_X1%VSS_c3 VSS N_VSS_M4_d 2.77952e-17
C_x_PM_ISO_FENCE1_X1%VSS_c4 VSS x_PM_ISO_FENCE1_X1%VSS_19 1.90932e-17
C_x_PM_ISO_FENCE1_X1%VSS_c5 VSS x_PM_ISO_FENCE1_X1%VSS_18 2.72326e-17
C_x_PM_ISO_FENCE1_X1%VSS_c6 VSS N_VSS_M3_s 1.64275e-17
C_x_PM_ISO_FENCE1_X1%VSS_c7 VSS x_PM_ISO_FENCE1_X1%VSS_11 5.77955e-16
C_x_PM_ISO_FENCE1_X1%VSS_c8 VSS x_PM_ISO_FENCE1_X1%VSS_10 1.92462e-17
C_x_PM_ISO_FENCE1_X1%VSS_c9 VSS x_PM_ISO_FENCE1_X1%VSS_9 2.334e-16
R_x_PM_ISO_FENCE1_X1%VSS_r10 x_PM_ISO_FENCE1_X1%VSS_40 VSS 0.13879
R_x_PM_ISO_FENCE1_X1%VSS_r11 x_PM_ISO_FENCE1_X1%VSS_36 VSS 0.392137
R_x_PM_ISO_FENCE1_X1%VSS_r12 x_PM_ISO_FENCE1_X1%VSS_37 x_PM_ISO_FENCE1_X1%VSS_27 0.073144
R_x_PM_ISO_FENCE1_X1%VSS_r13 x_PM_ISO_FENCE1_X1%VSS_27 x_PM_ISO_FENCE1_X1%VSS_40 0.715294
R_x_PM_ISO_FENCE1_X1%VSS_r14 x_PM_ISO_FENCE1_X1%VSS_37 x_PM_ISO_FENCE1_X1%VSS_22 0.145286
R_x_PM_ISO_FENCE1_X1%VSS_r15 N_VSS_M4_d x_PM_ISO_FENCE1_X1%VSS_22 0.502143
R_x_PM_ISO_FENCE1_X1%VSS_r16 x_PM_ISO_FENCE1_X1%VSS_36 x_PM_ISO_FENCE1_X1%VSS_19 0.0753
R_x_PM_ISO_FENCE1_X1%VSS_r17 VSS x_PM_ISO_FENCE1_X1%VSS_19 0.603529
R_x_PM_ISO_FENCE1_X1%VSS_r18 x_PM_ISO_FENCE1_X1%VSS_37 x_PM_ISO_FENCE1_X1%VSS_18 0.073144
R_x_PM_ISO_FENCE1_X1%VSS_r19 VSS x_PM_ISO_FENCE1_X1%VSS_18 0.078235
R_x_PM_ISO_FENCE1_X1%VSS_r20 N_VSS_M3_s x_PM_ISO_FENCE1_X1%VSS_36 0.502143
R_x_PM_ISO_FENCE1_X1%VSS_r21 VSS x_PM_ISO_FENCE1_X1%VSS_11 8.94118
R_x_PM_ISO_FENCE1_X1%VSS_r22 VSS x_PM_ISO_FENCE1_X1%VSS_10 0.140282
R_x_PM_ISO_FENCE1_X1%VSS_r23 VSS x_PM_ISO_FENCE1_X1%VSS_9 0.143516
R_x_PM_ISO_FENCE1_X1%VSS_r24 x_PM_ISO_FENCE1_X1%VSS_10 x_PM_ISO_FENCE1_X1%VSS_9 7.68941
C_x_PM_ISO_FENCE1_X1%3_c0 VSS x_PM_ISO_FENCE1_X1%3_30 1.26649e-17
C_x_PM_ISO_FENCE1_X1%3_c1 VSS x_PM_ISO_FENCE1_X1%3_26 9.75917e-17
C_x_PM_ISO_FENCE1_X1%3_c2 VSS x_PM_ISO_FENCE1_X1%3_22 1.00755e-17
C_x_PM_ISO_FENCE1_X1%3_c3 VSS x_PM_ISO_FENCE1_X1%3_21 3.68974e-17
C_x_PM_ISO_FENCE1_X1%3_c4 VSS N_3_M3_d 3.51089e-17
C_x_PM_ISO_FENCE1_X1%3_c5 VSS x_PM_ISO_FENCE1_X1%3_16 5.30423e-18
C_x_PM_ISO_FENCE1_X1%3_c6 VSS x_PM_ISO_FENCE1_X1%3_15 5.63922e-17
C_x_PM_ISO_FENCE1_X1%3_c7 VSS N_3_M0_s 2.44207e-17
C_x_PM_ISO_FENCE1_X1%3_c8 VSS N_3_M2_g 5.25251e-17
C_x_PM_ISO_FENCE1_X1%3_c9 VSS N_3_M5_g 5.58646e-17
R_x_PM_ISO_FENCE1_X1%3_r10 x_PM_ISO_FENCE1_X1%3_30 x_PM_ISO_FENCE1_X1%3_28 4.42
R_x_PM_ISO_FENCE1_X1%3_r11 x_PM_ISO_FENCE1_X1%3_28 x_PM_ISO_FENCE1_X1%3_26 25.0012
R_x_PM_ISO_FENCE1_X1%3_r12 x_PM_ISO_FENCE1_X1%3_26 x_PM_ISO_FENCE1_X1%3_24 1.045
R_x_PM_ISO_FENCE1_X1%3_r13 x_PM_ISO_FENCE1_X1%3_26 x_PM_ISO_FENCE1_X1%3_23 1.12643
R_x_PM_ISO_FENCE1_X1%3_r14 x_PM_ISO_FENCE1_X1%3_23 x_PM_ISO_FENCE1_X1%3_21 0.212317
R_x_PM_ISO_FENCE1_X1%3_r15 x_PM_ISO_FENCE1_X1%3_22 x_PM_ISO_FENCE1_X1%3_21 0.895714
R_x_PM_ISO_FENCE1_X1%3_r16 x_PM_ISO_FENCE1_X1%3_22 x_PM_ISO_FENCE1_X1%3_17 0.212317
R_x_PM_ISO_FENCE1_X1%3_r17 N_3_M3_d x_PM_ISO_FENCE1_X1%3_17 0.610714
R_x_PM_ISO_FENCE1_X1%3_r18 x_PM_ISO_FENCE1_X1%3_24 x_PM_ISO_FENCE1_X1%3_15 0.212317
R_x_PM_ISO_FENCE1_X1%3_r19 x_PM_ISO_FENCE1_X1%3_16 x_PM_ISO_FENCE1_X1%3_15 1.92714
R_x_PM_ISO_FENCE1_X1%3_r20 x_PM_ISO_FENCE1_X1%3_16 x_PM_ISO_FENCE1_X1%3_11 0.212317
R_x_PM_ISO_FENCE1_X1%3_r21 N_3_M0_s x_PM_ISO_FENCE1_X1%3_11 1.045
R_x_PM_ISO_FENCE1_X1%3_r22 x_PM_ISO_FENCE1_X1%3_30 x_PM_ISO_FENCE1_X1%3_5 1.95
R_x_PM_ISO_FENCE1_X1%3_r23 N_3_M2_g x_PM_ISO_FENCE1_X1%3_5 53.43
R_x_PM_ISO_FENCE1_X1%3_r24 x_PM_ISO_FENCE1_X1%3_30 x_PM_ISO_FENCE1_X1%3_1 1.95
R_x_PM_ISO_FENCE1_X1%3_r25 N_3_M5_g x_PM_ISO_FENCE1_X1%3_1 58.11
C_x_PM_ISO_FENCE1_X1%A_c0 VSS x_PM_ISO_FENCE1_X1%A_18 7.9288e-18
C_x_PM_ISO_FENCE1_X1%A_c1 VSS x_PM_ISO_FENCE1_X1%A_12 1.42747e-17
C_x_PM_ISO_FENCE1_X1%A_c2 VSS N_A_M0_g 7.16235e-17
C_x_PM_ISO_FENCE1_X1%A_c3 VSS N_A_M3_g 3.78496e-17
R_x_PM_ISO_FENCE1_X1%A_r4 x_PM_ISO_FENCE1_X1%A_18 x_PM_ISO_FENCE1_X1%A_14 3.38
R_x_PM_ISO_FENCE1_X1%A_r5 x_PM_ISO_FENCE1_X1%A_14 x_PM_ISO_FENCE1_X1%A_12 25.0012
R_x_PM_ISO_FENCE1_X1%A_r6 x_PM_ISO_FENCE1_X1%A_12 A 0.115357
R_x_PM_ISO_FENCE1_X1%A_r7 x_PM_ISO_FENCE1_X1%A_18 x_PM_ISO_FENCE1_X1%A_5 1.95
R_x_PM_ISO_FENCE1_X1%A_r8 N_A_M0_g x_PM_ISO_FENCE1_X1%A_5 78
R_x_PM_ISO_FENCE1_X1%A_r9 x_PM_ISO_FENCE1_X1%A_18 x_PM_ISO_FENCE1_X1%A_1 1.95
R_x_PM_ISO_FENCE1_X1%A_r10 N_A_M3_g x_PM_ISO_FENCE1_X1%A_1 37.05
C_x_PM_ISO_FENCE1_X1%EN_c0 VSS x_PM_ISO_FENCE1_X1%EN_14 9.25974e-18
C_x_PM_ISO_FENCE1_X1%EN_c1 VSS x_PM_ISO_FENCE1_X1%EN_12 4.3281e-17
C_x_PM_ISO_FENCE1_X1%EN_c2 VSS N_EN_M1_g 5.84051e-17
C_x_PM_ISO_FENCE1_X1%EN_c3 VSS N_EN_M4_g 5.38422e-17
R_x_PM_ISO_FENCE1_X1%EN_r4 x_PM_ISO_FENCE1_X1%EN_18 x_PM_ISO_FENCE1_X1%EN_14 4.7687
R_x_PM_ISO_FENCE1_X1%EN_r5 x_PM_ISO_FENCE1_X1%EN_17 x_PM_ISO_FENCE1_X1%EN_14 4.7687
R_x_PM_ISO_FENCE1_X1%EN_r6 x_PM_ISO_FENCE1_X1%EN_14 x_PM_ISO_FENCE1_X1%EN_12 25.0012
R_x_PM_ISO_FENCE1_X1%EN_r7 x_PM_ISO_FENCE1_X1%EN_12 EN 0.169643
R_x_PM_ISO_FENCE1_X1%EN_r8 N_EN_M1_g x_PM_ISO_FENCE1_X1%EN_18 56.94
R_x_PM_ISO_FENCE1_X1%EN_r9 N_EN_M4_g x_PM_ISO_FENCE1_X1%EN_17 58.11
C_x_PM_ISO_FENCE1_X1%Z_c0 VSS N_Z_M5_d 1.44959e-16
R_x_PM_ISO_FENCE1_X1%Z_r1 N_Z_M2_d Z 1.31944
R_x_PM_ISO_FENCE1_X1%Z_r2 Z N_Z_M5_d 1.57278
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
