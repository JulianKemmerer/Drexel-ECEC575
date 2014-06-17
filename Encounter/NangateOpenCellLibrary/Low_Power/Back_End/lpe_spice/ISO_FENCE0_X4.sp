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
* Cellname:   ISO_FENCE0_X4.                                                   *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:43 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE0_X4 VDD VSS EN Z A 
*.PININFO VDD:P VSS:G EN:I Z:O A:I 
*.EQN Z=!(A + EN)
M_M4 6 N_EN_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.505000U L=0.050000U
M_M5 N_Z_M1_d N_A_M1_g 6 VDD PMOS_VTL W=0.505000U L=0.050000U
M_M6 7 N_A_M2_g N_Z_M1_d VDD PMOS_VTL W=0.505000U L=0.050000U
M_M7 N_VDD_M3_d N_EN_M3_g 7 VDD PMOS_VTL W=0.505000U L=0.050000U
M_M0 N_Z_M4_d N_EN_M4_g N_VSS_M4_s VSS NMOS_VTL W=0.305000U L=0.050000U
M_M1 N_VSS_M5_d N_A_M5_g N_Z_M4_d VSS NMOS_VTL W=0.305000U L=0.050000U
M_M2 N_Z_M6_d N_A_M6_g N_VSS_M5_d VSS NMOS_VTL W=0.305000U L=0.050000U
M_M3 N_VSS_M7_d N_EN_M7_g N_Z_M6_d VSS NMOS_VTL W=0.305000U L=0.050000U
C_x_PM_ISO_FENCE0_X4%VDD_c0 VSS x_PM_ISO_FENCE0_X4%VDD_24 2.71617e-16
C_x_PM_ISO_FENCE0_X4%VDD_c1 VSS N_VDD_M3_d 1.23693e-17
C_x_PM_ISO_FENCE0_X4%VDD_c2 VSS x_PM_ISO_FENCE0_X4%VDD_19 1.99486e-17
C_x_PM_ISO_FENCE0_X4%VDD_c3 VSS x_PM_ISO_FENCE0_X4%VDD_18 6.21105e-17
C_x_PM_ISO_FENCE0_X4%VDD_c4 VSS N_VDD_M0_s 1.19246e-17
C_x_PM_ISO_FENCE0_X4%VDD_c5 VSS x_PM_ISO_FENCE0_X4%VDD_13 1.92462e-17
C_x_PM_ISO_FENCE0_X4%VDD_c6 VSS x_PM_ISO_FENCE0_X4%VDD_12 2.334e-16
C_x_PM_ISO_FENCE0_X4%VDD_c7 VSS x_PM_ISO_FENCE0_X4%VDD_9 5.90809e-16
R_x_PM_ISO_FENCE0_X4%VDD_r8 VDD x_PM_ISO_FENCE0_X4%VDD_34 0.446873
R_x_PM_ISO_FENCE0_X4%VDD_r9 x_PM_ISO_FENCE0_X4%VDD_33 VDD 0.424928
R_x_PM_ISO_FENCE0_X4%VDD_r10 VDD x_PM_ISO_FENCE0_X4%VDD_24 0.143746
R_x_PM_ISO_FENCE0_X4%VDD_r11 VDD x_PM_ISO_FENCE0_X4%VDD_24 3.84471
R_x_PM_ISO_FENCE0_X4%VDD_r12 N_VDD_M3_d x_PM_ISO_FENCE0_X4%VDD_34 0.366429
R_x_PM_ISO_FENCE0_X4%VDD_r13 x_PM_ISO_FENCE0_X4%VDD_33 x_PM_ISO_FENCE0_X4%VDD_19 0.075366
R_x_PM_ISO_FENCE0_X4%VDD_r14 x_PM_ISO_FENCE0_X4%VDD_34 x_PM_ISO_FENCE0_X4%VDD_18 0.075401
R_x_PM_ISO_FENCE0_X4%VDD_r15 x_PM_ISO_FENCE0_X4%VDD_19 x_PM_ISO_FENCE0_X4%VDD_18 1.54235
R_x_PM_ISO_FENCE0_X4%VDD_r16 N_VDD_M0_s x_PM_ISO_FENCE0_X4%VDD_33 0.366429
R_x_PM_ISO_FENCE0_X4%VDD_r17 VDD x_PM_ISO_FENCE0_X4%VDD_13 0.140282
R_x_PM_ISO_FENCE0_X4%VDD_r18 VDD x_PM_ISO_FENCE0_X4%VDD_12 0.143808
R_x_PM_ISO_FENCE0_X4%VDD_r19 x_PM_ISO_FENCE0_X4%VDD_13 x_PM_ISO_FENCE0_X4%VDD_12 7.68941
R_x_PM_ISO_FENCE0_X4%VDD_r20 VDD x_PM_ISO_FENCE0_X4%VDD_9 9.15353
C_x_PM_ISO_FENCE0_X4%VSS_c0 VSS VSS 2.72107e-16
C_x_PM_ISO_FENCE0_X4%VSS_c1 VSS N_VSS_M7_d 2.4475e-17
C_x_PM_ISO_FENCE0_X4%VSS_c2 VSS x_PM_ISO_FENCE0_X4%VSS_27 2.5538e-17
C_x_PM_ISO_FENCE0_X4%VSS_c3 VSS N_VSS_M5_d 2.29142e-17
C_x_PM_ISO_FENCE0_X4%VSS_c4 VSS VSS 2.80728e-18
C_x_PM_ISO_FENCE0_X4%VSS_c5 VSS x_PM_ISO_FENCE0_X4%VSS_20 2.01009e-17
C_x_PM_ISO_FENCE0_X4%VSS_c6 VSS x_PM_ISO_FENCE0_X4%VSS_19 2.48768e-17
C_x_PM_ISO_FENCE0_X4%VSS_c7 VSS N_VSS_M4_s 2.55502e-17
C_x_PM_ISO_FENCE0_X4%VSS_c8 VSS x_PM_ISO_FENCE0_X4%VSS_12 5.90809e-16
C_x_PM_ISO_FENCE0_X4%VSS_c9 VSS x_PM_ISO_FENCE0_X4%VSS_11 1.92462e-17
C_x_PM_ISO_FENCE0_X4%VSS_c10 VSS x_PM_ISO_FENCE0_X4%VSS_10 2.334e-16
R_x_PM_ISO_FENCE0_X4%VSS_r11 VSS x_PM_ISO_FENCE0_X4%VSS_43 0.457895
R_x_PM_ISO_FENCE0_X4%VSS_r12 x_PM_ISO_FENCE0_X4%VSS_41 VSS 0.424928
R_x_PM_ISO_FENCE0_X4%VSS_r13 N_VSS_M7_d x_PM_ISO_FENCE0_X4%VSS_43 1.12643
R_x_PM_ISO_FENCE0_X4%VSS_r14 x_PM_ISO_FENCE0_X4%VSS_43 x_PM_ISO_FENCE0_X4%VSS_27 0.075426
R_x_PM_ISO_FENCE0_X4%VSS_r15 x_PM_ISO_FENCE0_X4%VSS_28 x_PM_ISO_FENCE0_X4%VSS_27 0.692941
R_x_PM_ISO_FENCE0_X4%VSS_r16 N_VSS_M5_d VSS 0.366429
R_x_PM_ISO_FENCE0_X4%VSS_r17 VSS x_PM_ISO_FENCE0_X4%VSS_28 0.073144
R_x_PM_ISO_FENCE0_X4%VSS_r18 x_PM_ISO_FENCE0_X4%VSS_41 x_PM_ISO_FENCE0_X4%VSS_20 0.075366
R_x_PM_ISO_FENCE0_X4%VSS_r19 VSS x_PM_ISO_FENCE0_X4%VSS_19 0.073144
R_x_PM_ISO_FENCE0_X4%VSS_r20 x_PM_ISO_FENCE0_X4%VSS_20 x_PM_ISO_FENCE0_X4%VSS_19 0.681765
R_x_PM_ISO_FENCE0_X4%VSS_r21 N_VSS_M4_s x_PM_ISO_FENCE0_X4%VSS_41 1.12643
R_x_PM_ISO_FENCE0_X4%VSS_r22 VSS x_PM_ISO_FENCE0_X4%VSS_12 9.15353
R_x_PM_ISO_FENCE0_X4%VSS_r23 VSS x_PM_ISO_FENCE0_X4%VSS_11 0.140282
R_x_PM_ISO_FENCE0_X4%VSS_r24 VSS x_PM_ISO_FENCE0_X4%VSS_10 0.143808
R_x_PM_ISO_FENCE0_X4%VSS_r25 x_PM_ISO_FENCE0_X4%VSS_11 x_PM_ISO_FENCE0_X4%VSS_10 7.68941
C_x_PM_ISO_FENCE0_X4%EN_c0 VSS x_PM_ISO_FENCE0_X4%EN_35 8.00659e-18
C_x_PM_ISO_FENCE0_X4%EN_c1 VSS x_PM_ISO_FENCE0_X4%EN_26 1.36166e-17
C_x_PM_ISO_FENCE0_X4%EN_c2 VSS x_PM_ISO_FENCE0_X4%EN_24 6.49695e-18
C_x_PM_ISO_FENCE0_X4%EN_c3 VSS x_PM_ISO_FENCE0_X4%EN_22 1.91625e-17
C_x_PM_ISO_FENCE0_X4%EN_c4 VSS x_PM_ISO_FENCE0_X4%EN_20 4.69701e-18
C_x_PM_ISO_FENCE0_X4%EN_c5 VSS x_PM_ISO_FENCE0_X4%EN_19 5.69538e-17
C_x_PM_ISO_FENCE0_X4%EN_c6 VSS x_PM_ISO_FENCE0_X4%EN_18 1.23114e-17
C_x_PM_ISO_FENCE0_X4%EN_c7 VSS N_EN_M3_g 5.21955e-17
C_x_PM_ISO_FENCE0_X4%EN_c8 VSS N_EN_M7_g 6.32988e-17
C_x_PM_ISO_FENCE0_X4%EN_c9 VSS N_EN_M0_g 5.83657e-17
C_x_PM_ISO_FENCE0_X4%EN_c10 VSS N_EN_M4_g 5.48242e-17
R_x_PM_ISO_FENCE0_X4%EN_r11 x_PM_ISO_FENCE0_X4%EN_32 EN 0.287087
R_x_PM_ISO_FENCE0_X4%EN_r12 x_PM_ISO_FENCE0_X4%EN_35 x_PM_ISO_FENCE0_X4%EN_28 3.9
R_x_PM_ISO_FENCE0_X4%EN_r13 x_PM_ISO_FENCE0_X4%EN_28 x_PM_ISO_FENCE0_X4%EN_26 25.0012
R_x_PM_ISO_FENCE0_X4%EN_r14 EN x_PM_ISO_FENCE0_X4%EN_26 0.007917
R_x_PM_ISO_FENCE0_X4%EN_r15 x_PM_ISO_FENCE0_X4%EN_39 x_PM_ISO_FENCE0_X4%EN_24 4.7687
R_x_PM_ISO_FENCE0_X4%EN_r16 x_PM_ISO_FENCE0_X4%EN_38 x_PM_ISO_FENCE0_X4%EN_24 4.7687
R_x_PM_ISO_FENCE0_X4%EN_r17 x_PM_ISO_FENCE0_X4%EN_24 x_PM_ISO_FENCE0_X4%EN_22 25.0012
R_x_PM_ISO_FENCE0_X4%EN_r18 x_PM_ISO_FENCE0_X4%EN_22 x_PM_ISO_FENCE0_X4%EN_21 0.95
R_x_PM_ISO_FENCE0_X4%EN_r19 x_PM_ISO_FENCE0_X4%EN_21 x_PM_ISO_FENCE0_X4%EN_19 0.223553
R_x_PM_ISO_FENCE0_X4%EN_r20 x_PM_ISO_FENCE0_X4%EN_20 x_PM_ISO_FENCE0_X4%EN_19 3.01286
R_x_PM_ISO_FENCE0_X4%EN_r21 x_PM_ISO_FENCE0_X4%EN_20 x_PM_ISO_FENCE0_X4%EN_18 0.212317
R_x_PM_ISO_FENCE0_X4%EN_r22 x_PM_ISO_FENCE0_X4%EN_18 x_PM_ISO_FENCE0_X4%EN_32 1.52
R_x_PM_ISO_FENCE0_X4%EN_r23 N_EN_M3_g x_PM_ISO_FENCE0_X4%EN_39 47.19
R_x_PM_ISO_FENCE0_X4%EN_r24 N_EN_M7_g x_PM_ISO_FENCE0_X4%EN_38 64.35
R_x_PM_ISO_FENCE0_X4%EN_r25 x_PM_ISO_FENCE0_X4%EN_35 x_PM_ISO_FENCE0_X4%EN_5 1.95
R_x_PM_ISO_FENCE0_X4%EN_r26 N_EN_M0_g x_PM_ISO_FENCE0_X4%EN_5 61.23
R_x_PM_ISO_FENCE0_X4%EN_r27 x_PM_ISO_FENCE0_X4%EN_35 x_PM_ISO_FENCE0_X4%EN_1 1.95
R_x_PM_ISO_FENCE0_X4%EN_r28 N_EN_M4_g x_PM_ISO_FENCE0_X4%EN_1 50.31
C_x_PM_ISO_FENCE0_X4%Z_c0 VSS N_Z_M6_d 6.58273e-17
C_x_PM_ISO_FENCE0_X4%Z_c1 VSS Z 9.48179e-17
C_x_PM_ISO_FENCE0_X4%Z_c2 VSS x_PM_ISO_FENCE0_X4%Z_4 3.12251e-17
R_x_PM_ISO_FENCE0_X4%Z_r3 N_Z_M6_d x_PM_ISO_FENCE0_X4%Z_14 1.00429
R_x_PM_ISO_FENCE0_X4%Z_r4 N_Z_M1_d Z 1.786
R_x_PM_ISO_FENCE0_X4%Z_r5 x_PM_ISO_FENCE0_X4%Z_14 x_PM_ISO_FENCE0_X4%Z_8 0.095
R_x_PM_ISO_FENCE0_X4%Z_r6 Z x_PM_ISO_FENCE0_X4%Z_8 0.684
R_x_PM_ISO_FENCE0_X4%Z_r7 x_PM_ISO_FENCE0_X4%Z_14 x_PM_ISO_FENCE0_X4%Z_4 0.203571
R_x_PM_ISO_FENCE0_X4%Z_r8 N_Z_M4_d x_PM_ISO_FENCE0_X4%Z_4 0.827857
C_x_PM_ISO_FENCE0_X4%A_c0 VSS A 6.58804e-17
C_x_PM_ISO_FENCE0_X4%A_c1 VSS x_PM_ISO_FENCE0_X4%A_22 8.75624e-18
C_x_PM_ISO_FENCE0_X4%A_c2 VSS x_PM_ISO_FENCE0_X4%A_19 4.24723e-18
C_x_PM_ISO_FENCE0_X4%A_c3 VSS N_A_M2_g 6.14585e-17
C_x_PM_ISO_FENCE0_X4%A_c4 VSS N_A_M6_g 3.57612e-17
C_x_PM_ISO_FENCE0_X4%A_c5 VSS x_PM_ISO_FENCE0_X4%A_9 1.26351e-17
C_x_PM_ISO_FENCE0_X4%A_c6 VSS N_A_M1_g 6.17243e-17
C_x_PM_ISO_FENCE0_X4%A_c7 VSS N_A_M5_g 3.61248e-17
R_x_PM_ISO_FENCE0_X4%A_r8 x_PM_ISO_FENCE0_X4%A_22 x_PM_ISO_FENCE0_X4%A_27 4.94
R_x_PM_ISO_FENCE0_X4%A_r9 x_PM_ISO_FENCE0_X4%A_22 x_PM_ISO_FENCE0_X4%A_20 25.0012
R_x_PM_ISO_FENCE0_X4%A_r10 A x_PM_ISO_FENCE0_X4%A_20 0.117353
R_x_PM_ISO_FENCE0_X4%A_r11 x_PM_ISO_FENCE0_X4%A_27 x_PM_ISO_FENCE0_X4%A_15 1.95
R_x_PM_ISO_FENCE0_X4%A_r12 N_A_M2_g x_PM_ISO_FENCE0_X4%A_15 77.61
R_x_PM_ISO_FENCE0_X4%A_r13 x_PM_ISO_FENCE0_X4%A_27 x_PM_ISO_FENCE0_X4%A_11 1.95
R_x_PM_ISO_FENCE0_X4%A_r14 N_A_M6_g x_PM_ISO_FENCE0_X4%A_11 33.93
R_x_PM_ISO_FENCE0_X4%A_r15 x_PM_ISO_FENCE0_X4%A_19 x_PM_ISO_FENCE0_X4%A_10 0.043368
R_x_PM_ISO_FENCE0_X4%A_r16 x_PM_ISO_FENCE0_X4%A_27 x_PM_ISO_FENCE0_X4%A_9 2.6
R_x_PM_ISO_FENCE0_X4%A_r17 x_PM_ISO_FENCE0_X4%A_10 x_PM_ISO_FENCE0_X4%A_9 14.56
R_x_PM_ISO_FENCE0_X4%A_r18 x_PM_ISO_FENCE0_X4%A_19 x_PM_ISO_FENCE0_X4%A_5 4.56151
R_x_PM_ISO_FENCE0_X4%A_r19 N_A_M1_g x_PM_ISO_FENCE0_X4%A_5 77.61
R_x_PM_ISO_FENCE0_X4%A_r20 x_PM_ISO_FENCE0_X4%A_19 x_PM_ISO_FENCE0_X4%A_1 4.56151
R_x_PM_ISO_FENCE0_X4%A_r21 N_A_M5_g x_PM_ISO_FENCE0_X4%A_1 33.93
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
