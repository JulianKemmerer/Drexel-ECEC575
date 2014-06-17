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
* Cellname:   ISO_FENCE1N_X1.                                                  *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:43 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT ISO_FENCE1N_X1 VDD VSS EN Z A 
*.PININFO VDD:P VSS:G EN:I Z:O A:I 
*.EQN Z=!(A * EN)
M_M2 N_Z_M0_d N_EN_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.205000U L=0.050000U
M_M3 N_VDD_M1_d N_A_M1_g N_Z_M0_d VDD PMOS_VTL W=0.205000U L=0.050000U
M_M0 6 N_EN_M2_g N_VSS_M2_s VSS NMOS_VTL W=0.180000U L=0.050000U
M_M1 N_Z_M3_d N_A_M3_g 6 VSS NMOS_VTL W=0.180000U L=0.050000U
C_x_PM_ISO_FENCE1N_X1%VDD_c0 VSS x_PM_ISO_FENCE1N_X1%VDD_24 2.73213e-16
C_x_PM_ISO_FENCE1N_X1%VDD_c1 VSS N_VDD_M1_d 1.15864e-17
C_x_PM_ISO_FENCE1N_X1%VDD_c2 VSS x_PM_ISO_FENCE1N_X1%VDD_19 1.90806e-17
C_x_PM_ISO_FENCE1N_X1%VDD_c3 VSS x_PM_ISO_FENCE1N_X1%VDD_18 2.14262e-17
C_x_PM_ISO_FENCE1N_X1%VDD_c4 VSS N_VDD_M0_s 1.09739e-17
C_x_PM_ISO_FENCE1N_X1%VDD_c5 VSS x_PM_ISO_FENCE1N_X1%VDD_13 1.92462e-17
C_x_PM_ISO_FENCE1N_X1%VDD_c6 VSS x_PM_ISO_FENCE1N_X1%VDD_12 2.334e-16
C_x_PM_ISO_FENCE1N_X1%VDD_c7 VSS x_PM_ISO_FENCE1N_X1%VDD_9 5.65101e-16
R_x_PM_ISO_FENCE1N_X1%VDD_r8 VDD x_PM_ISO_FENCE1N_X1%VDD_34 0.490833
R_x_PM_ISO_FENCE1N_X1%VDD_r9 x_PM_ISO_FENCE1N_X1%VDD_33 VDD 0.392137
R_x_PM_ISO_FENCE1N_X1%VDD_r10 VDD x_PM_ISO_FENCE1N_X1%VDD_24 0.144103
R_x_PM_ISO_FENCE1N_X1%VDD_r11 VDD x_PM_ISO_FENCE1N_X1%VDD_24 3.84471
R_x_PM_ISO_FENCE1N_X1%VDD_r12 N_VDD_M1_d x_PM_ISO_FENCE1N_X1%VDD_34 0.556429
R_x_PM_ISO_FENCE1N_X1%VDD_r13 x_PM_ISO_FENCE1N_X1%VDD_33 x_PM_ISO_FENCE1N_X1%VDD_19 0.0753
R_x_PM_ISO_FENCE1N_X1%VDD_r14 x_PM_ISO_FENCE1N_X1%VDD_34 x_PM_ISO_FENCE1N_X1%VDD_18 0.075492
R_x_PM_ISO_FENCE1N_X1%VDD_r15 x_PM_ISO_FENCE1N_X1%VDD_19 x_PM_ISO_FENCE1N_X1%VDD_18 0.681765
R_x_PM_ISO_FENCE1N_X1%VDD_r16 N_VDD_M0_s x_PM_ISO_FENCE1N_X1%VDD_33 0.556429
R_x_PM_ISO_FENCE1N_X1%VDD_r17 VDD x_PM_ISO_FENCE1N_X1%VDD_13 0.140282
R_x_PM_ISO_FENCE1N_X1%VDD_r18 VDD x_PM_ISO_FENCE1N_X1%VDD_12 0.143516
R_x_PM_ISO_FENCE1N_X1%VDD_r19 x_PM_ISO_FENCE1N_X1%VDD_13 x_PM_ISO_FENCE1N_X1%VDD_12 7.68941
R_x_PM_ISO_FENCE1N_X1%VDD_r20 VDD x_PM_ISO_FENCE1N_X1%VDD_9 8.72882
C_x_PM_ISO_FENCE1N_X1%VSS_c0 VSS VSS 2.61735e-16
C_x_PM_ISO_FENCE1N_X1%VSS_c1 VSS x_PM_ISO_FENCE1N_X1%VSS_18 1.89914e-17
C_x_PM_ISO_FENCE1N_X1%VSS_c2 VSS x_PM_ISO_FENCE1N_X1%VSS_17 4.81634e-17
C_x_PM_ISO_FENCE1N_X1%VSS_c3 VSS N_VSS_M2_s 1.35531e-17
C_x_PM_ISO_FENCE1N_X1%VSS_c4 VSS x_PM_ISO_FENCE1N_X1%VSS_10 5.65101e-16
C_x_PM_ISO_FENCE1N_X1%VSS_c5 VSS x_PM_ISO_FENCE1N_X1%VSS_9 1.92462e-17
C_x_PM_ISO_FENCE1N_X1%VSS_c6 VSS x_PM_ISO_FENCE1N_X1%VSS_8 2.334e-16
R_x_PM_ISO_FENCE1N_X1%VSS_r7 x_PM_ISO_FENCE1N_X1%VSS_29 VSS 0.392137
R_x_PM_ISO_FENCE1N_X1%VSS_r8 x_PM_ISO_FENCE1N_X1%VSS_29 x_PM_ISO_FENCE1N_X1%VSS_18 0.0753
R_x_PM_ISO_FENCE1N_X1%VSS_r9 VSS x_PM_ISO_FENCE1N_X1%VSS_18 0.391176
R_x_PM_ISO_FENCE1N_X1%VSS_r10 x_PM_ISO_FENCE1N_X1%VSS_17 VSS 0.13879
R_x_PM_ISO_FENCE1N_X1%VSS_r11 VSS x_PM_ISO_FENCE1N_X1%VSS_17 0.737647
R_x_PM_ISO_FENCE1N_X1%VSS_r12 N_VSS_M2_s x_PM_ISO_FENCE1N_X1%VSS_29 0.339286
R_x_PM_ISO_FENCE1N_X1%VSS_r13 VSS x_PM_ISO_FENCE1N_X1%VSS_10 8.72882
R_x_PM_ISO_FENCE1N_X1%VSS_r14 VSS x_PM_ISO_FENCE1N_X1%VSS_9 0.140282
R_x_PM_ISO_FENCE1N_X1%VSS_r15 VSS x_PM_ISO_FENCE1N_X1%VSS_8 0.143516
R_x_PM_ISO_FENCE1N_X1%VSS_r16 x_PM_ISO_FENCE1N_X1%VSS_9 x_PM_ISO_FENCE1N_X1%VSS_8 7.68941
C_x_PM_ISO_FENCE1N_X1%EN_c0 VSS x_PM_ISO_FENCE1N_X1%EN_14 7.48455e-18
C_x_PM_ISO_FENCE1N_X1%EN_c1 VSS x_PM_ISO_FENCE1N_X1%EN_12 3.57062e-17
C_x_PM_ISO_FENCE1N_X1%EN_c2 VSS N_EN_M0_g 7.24244e-17
C_x_PM_ISO_FENCE1N_X1%EN_c3 VSS N_EN_M2_g 3.97978e-17
R_x_PM_ISO_FENCE1N_X1%EN_r4 x_PM_ISO_FENCE1N_X1%EN_18 x_PM_ISO_FENCE1N_X1%EN_14 4.74714
R_x_PM_ISO_FENCE1N_X1%EN_r5 x_PM_ISO_FENCE1N_X1%EN_17 x_PM_ISO_FENCE1N_X1%EN_14 4.74714
R_x_PM_ISO_FENCE1N_X1%EN_r6 x_PM_ISO_FENCE1N_X1%EN_14 x_PM_ISO_FENCE1N_X1%EN_12 25.0012
R_x_PM_ISO_FENCE1N_X1%EN_r7 x_PM_ISO_FENCE1N_X1%EN_12 EN 0.156071
R_x_PM_ISO_FENCE1N_X1%EN_r8 N_EN_M0_g x_PM_ISO_FENCE1N_X1%EN_18 97.11
R_x_PM_ISO_FENCE1N_X1%EN_r9 N_EN_M2_g x_PM_ISO_FENCE1N_X1%EN_17 39
C_x_PM_ISO_FENCE1N_X1%Z_c0 VSS N_Z_M3_d 7.72482e-17
C_x_PM_ISO_FENCE1N_X1%Z_c1 VSS x_PM_ISO_FENCE1N_X1%Z_8 1.08516e-17
C_x_PM_ISO_FENCE1N_X1%Z_c2 VSS x_PM_ISO_FENCE1N_X1%Z_7 1.78802e-17
C_x_PM_ISO_FENCE1N_X1%Z_c3 VSS N_Z_M0_d 5.23761e-17
R_x_PM_ISO_FENCE1N_X1%Z_r4 Z N_Z_M3_d 1.59389
R_x_PM_ISO_FENCE1N_X1%Z_r5 Z x_PM_ISO_FENCE1N_X1%Z_9 0.295556
R_x_PM_ISO_FENCE1N_X1%Z_r6 x_PM_ISO_FENCE1N_X1%Z_9 x_PM_ISO_FENCE1N_X1%Z_7 0.21666
R_x_PM_ISO_FENCE1N_X1%Z_r7 x_PM_ISO_FENCE1N_X1%Z_8 x_PM_ISO_FENCE1N_X1%Z_7 0.624286
R_x_PM_ISO_FENCE1N_X1%Z_r8 x_PM_ISO_FENCE1N_X1%Z_8 x_PM_ISO_FENCE1N_X1%Z_3 0.212317
R_x_PM_ISO_FENCE1N_X1%Z_r9 N_Z_M0_d x_PM_ISO_FENCE1N_X1%Z_3 1.69643
C_x_PM_ISO_FENCE1N_X1%A_c0 VSS x_PM_ISO_FENCE1N_X1%A_18 1.26302e-17
C_x_PM_ISO_FENCE1N_X1%A_c1 VSS x_PM_ISO_FENCE1N_X1%A_12 6.03827e-17
C_x_PM_ISO_FENCE1N_X1%A_c2 VSS N_A_M1_g 8.22098e-17
C_x_PM_ISO_FENCE1N_X1%A_c3 VSS N_A_M3_g 4.43257e-17
R_x_PM_ISO_FENCE1N_X1%A_r4 x_PM_ISO_FENCE1N_X1%A_18 x_PM_ISO_FENCE1N_X1%A_14 3.9
R_x_PM_ISO_FENCE1N_X1%A_r5 x_PM_ISO_FENCE1N_X1%A_14 x_PM_ISO_FENCE1N_X1%A_12 25.0012
R_x_PM_ISO_FENCE1N_X1%A_r6 x_PM_ISO_FENCE1N_X1%A_12 A 0.101786
R_x_PM_ISO_FENCE1N_X1%A_r7 x_PM_ISO_FENCE1N_X1%A_18 x_PM_ISO_FENCE1N_X1%A_5 1.95
R_x_PM_ISO_FENCE1N_X1%A_r8 N_A_M1_g x_PM_ISO_FENCE1N_X1%A_5 97.11
R_x_PM_ISO_FENCE1N_X1%A_r9 x_PM_ISO_FENCE1N_X1%A_18 x_PM_ISO_FENCE1N_X1%A_1 1.95
R_x_PM_ISO_FENCE1N_X1%A_r10 N_A_M3_g x_PM_ISO_FENCE1N_X1%A_1 39
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
