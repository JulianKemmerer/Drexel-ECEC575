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
* Cellname:   AON_BUF_X1.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AON_BUF_X1 VDD VSS A VDDBAK Z 
*.PININFO VDD:P VSS:G A:I VDDBAK:P Z:O 
*.EQN Z=A
M_M2 N_VDDBAK_M0_d N_A_M0_g N_5_M0_s VDD PMOS_VTL W=0.130000U L=0.050000U
M_M3 N_Z_M1_d N_5_M1_g N_VDDBAK_M0_d VDD PMOS_VTL W=0.130000U L=0.050000U
M_M0 N_VSS_M2_d N_A_M2_g N_5_M2_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_Z_M3_d N_5_M3_g N_VSS_M2_d VSS NMOS_VTL W=0.090000U L=0.050000U
C_x_PM_AON_BUF_X1%VDD_c0 VSS x_PM_AON_BUF_X1%VDD_27 1.12209e-16
C_x_PM_AON_BUF_X1%VDD_c1 VSS x_PM_AON_BUF_X1%VDD_24 1.07528e-17
C_x_PM_AON_BUF_X1%VDD_c2 VSS x_PM_AON_BUF_X1%VDD_23 2.334e-16
C_x_PM_AON_BUF_X1%VDD_c3 VSS x_PM_AON_BUF_X1%VDD_14 2.61734e-16
C_x_PM_AON_BUF_X1%VDD_c4 VSS x_PM_AON_BUF_X1%VDD_11 1.92462e-17
C_x_PM_AON_BUF_X1%VDD_c5 VSS x_PM_AON_BUF_X1%VDD_7 6.16516e-16
R_x_PM_AON_BUF_X1%VDD_r6 x_PM_AON_BUF_X1%VDD_27 x_PM_AON_BUF_X1%VDD_25 0.13879
R_x_PM_AON_BUF_X1%VDD_r7 x_PM_AON_BUF_X1%VDD_24 x_PM_AON_BUF_X1%VDD_27 3.17412
R_x_PM_AON_BUF_X1%VDD_r8 x_PM_AON_BUF_X1%VDD_24 x_PM_AON_BUF_X1%VDD_25 0.138595
R_x_PM_AON_BUF_X1%VDD_r9 x_PM_AON_BUF_X1%VDD_23 x_PM_AON_BUF_X1%VDD_25 0.138985
R_x_PM_AON_BUF_X1%VDD_r10 x_PM_AON_BUF_X1%VDD_14 x_PM_AON_BUF_X1%VDD_25 0.13879
R_x_PM_AON_BUF_X1%VDD_r11 VDD x_PM_AON_BUF_X1%VDD_14 3.84471
R_x_PM_AON_BUF_X1%VDD_r12 x_PM_AON_BUF_X1%VDD_25 x_PM_AON_BUF_X1%VDD_11 0.140282
R_x_PM_AON_BUF_X1%VDD_r13 x_PM_AON_BUF_X1%VDD_11 x_PM_AON_BUF_X1%VDD_23 7.68941
R_x_PM_AON_BUF_X1%VDD_r14 VDD x_PM_AON_BUF_X1%VDD_7 9.57824
C_x_PM_AON_BUF_X1%VSS_c0 VSS VSS 2.61603e-16
C_x_PM_AON_BUF_X1%VSS_c1 VSS x_PM_AON_BUF_X1%VSS_31 2.334e-16
C_x_PM_AON_BUF_X1%VSS_c2 VSS x_PM_AON_BUF_X1%VSS_21 5.61189e-17
C_x_PM_AON_BUF_X1%VSS_c3 VSS N_VSS_M2_d 6.2708e-17
C_x_PM_AON_BUF_X1%VSS_c4 VSS VSS 5.64863e-18
C_x_PM_AON_BUF_X1%VSS_c5 VSS x_PM_AON_BUF_X1%VSS_14 1.06204e-17
C_x_PM_AON_BUF_X1%VSS_c6 VSS x_PM_AON_BUF_X1%VSS_13 5.94309e-17
C_x_PM_AON_BUF_X1%VSS_c7 VSS x_PM_AON_BUF_X1%VSS_10 6.16516e-16
C_x_PM_AON_BUF_X1%VSS_c8 VSS x_PM_AON_BUF_X1%VSS_9 1.92462e-17
R_x_PM_AON_BUF_X1%VSS_r9 x_PM_AON_BUF_X1%VSS_31 VSS 0.138985
R_x_PM_AON_BUF_X1%VSS_r10 x_PM_AON_BUF_X1%VSS_21 VSS 0.13879
R_x_PM_AON_BUF_X1%VSS_r11 x_PM_AON_BUF_X1%VSS_22 x_PM_AON_BUF_X1%VSS_21 1.44176
R_x_PM_AON_BUF_X1%VSS_r12 N_VSS_M2_d VSS 0.372963
R_x_PM_AON_BUF_X1%VSS_r13 VSS x_PM_AON_BUF_X1%VSS_22 0.132285
R_x_PM_AON_BUF_X1%VSS_r14 x_PM_AON_BUF_X1%VSS_14 VSS 0.138595
R_x_PM_AON_BUF_X1%VSS_r15 VSS x_PM_AON_BUF_X1%VSS_13 0.132285
R_x_PM_AON_BUF_X1%VSS_r16 x_PM_AON_BUF_X1%VSS_14 x_PM_AON_BUF_X1%VSS_13 1.43059
R_x_PM_AON_BUF_X1%VSS_r17 VSS x_PM_AON_BUF_X1%VSS_10 9.57824
R_x_PM_AON_BUF_X1%VSS_r18 VSS x_PM_AON_BUF_X1%VSS_9 0.140282
R_x_PM_AON_BUF_X1%VSS_r19 x_PM_AON_BUF_X1%VSS_9 x_PM_AON_BUF_X1%VSS_31 7.68941
C_x_PM_AON_BUF_X1%A_c0 VSS x_PM_AON_BUF_X1%A_20 8.83408e-18
C_x_PM_AON_BUF_X1%A_c1 VSS x_PM_AON_BUF_X1%A_14 7.3604e-17
C_x_PM_AON_BUF_X1%A_c2 VSS A 2.41117e-17
C_x_PM_AON_BUF_X1%A_c3 VSS N_A_M0_g 3.90814e-17
C_x_PM_AON_BUF_X1%A_c4 VSS N_A_M2_g 3.98134e-17
R_x_PM_AON_BUF_X1%A_r5 x_PM_AON_BUF_X1%A_20 x_PM_AON_BUF_X1%A_16 2.34
R_x_PM_AON_BUF_X1%A_r6 x_PM_AON_BUF_X1%A_16 x_PM_AON_BUF_X1%A_14 25.0012
R_x_PM_AON_BUF_X1%A_r7 x_PM_AON_BUF_X1%A_14 A 0.393571
R_x_PM_AON_BUF_X1%A_r8 x_PM_AON_BUF_X1%A_20 x_PM_AON_BUF_X1%A_5 1.95
R_x_PM_AON_BUF_X1%A_r9 N_A_M0_g x_PM_AON_BUF_X1%A_5 33.54
R_x_PM_AON_BUF_X1%A_r10 x_PM_AON_BUF_X1%A_20 x_PM_AON_BUF_X1%A_1 1.95
R_x_PM_AON_BUF_X1%A_r11 N_A_M2_g x_PM_AON_BUF_X1%A_1 35.1
C_x_PM_AON_BUF_X1%VDDBAK_c0 VSS VDDBAK 4.42696e-17
C_x_PM_AON_BUF_X1%VDDBAK_c1 VSS VDD 3.25091e-17
C_x_PM_AON_BUF_X1%VDDBAK_c2 VSS x_PM_AON_BUF_X1%VDDBAK_8 5.65445e-17
R_x_PM_AON_BUF_X1%VDDBAK_r3 VDDBAK x_PM_AON_BUF_X1%VDDBAK_9 0.114722
R_x_PM_AON_BUF_X1%VDDBAK_r4 VDD x_PM_AON_BUF_X1%VDDBAK_9 0.00475
R_x_PM_AON_BUF_X1%VDDBAK_r5 VDDBAK x_PM_AON_BUF_X1%VDDBAK_8 0.08688
R_x_PM_AON_BUF_X1%VDDBAK_r6 x_PM_AON_BUF_X1%VDDBAK_8 N_VDDBAK_M0_d 0.361361
C_x_PM_AON_BUF_X1%5_c0 VSS x_PM_AON_BUF_X1%5_30 1.24829e-17
C_x_PM_AON_BUF_X1%5_c1 VSS x_PM_AON_BUF_X1%5_26 6.86318e-17
C_x_PM_AON_BUF_X1%5_c2 VSS x_PM_AON_BUF_X1%5_22 1.52816e-17
C_x_PM_AON_BUF_X1%5_c3 VSS x_PM_AON_BUF_X1%5_21 6.41733e-17
C_x_PM_AON_BUF_X1%5_c4 VSS x_PM_AON_BUF_X1%5_20 2.1121e-17
C_x_PM_AON_BUF_X1%5_c5 VSS x_PM_AON_BUF_X1%5_19 6.6955e-17
C_x_PM_AON_BUF_X1%5_c6 VSS N_5_M0_s 1.93072e-17
C_x_PM_AON_BUF_X1%5_c7 VSS N_5_M2_s 3.41594e-17
C_x_PM_AON_BUF_X1%5_c8 VSS N_5_M1_g 4.18204e-17
C_x_PM_AON_BUF_X1%5_c9 VSS N_5_M3_g 3.50265e-17
R_x_PM_AON_BUF_X1%5_r10 x_PM_AON_BUF_X1%5_30 x_PM_AON_BUF_X1%5_28 3.9
R_x_PM_AON_BUF_X1%5_r11 x_PM_AON_BUF_X1%5_28 x_PM_AON_BUF_X1%5_26 25.0012
R_x_PM_AON_BUF_X1%5_r12 x_PM_AON_BUF_X1%5_26 x_PM_AON_BUF_X1%5_24 0.773571
R_x_PM_AON_BUF_X1%5_r13 x_PM_AON_BUF_X1%5_26 x_PM_AON_BUF_X1%5_23 0.366429
R_x_PM_AON_BUF_X1%5_r14 x_PM_AON_BUF_X1%5_24 x_PM_AON_BUF_X1%5_21 0.212317
R_x_PM_AON_BUF_X1%5_r15 x_PM_AON_BUF_X1%5_22 x_PM_AON_BUF_X1%5_21 0.95
R_x_PM_AON_BUF_X1%5_r16 x_PM_AON_BUF_X1%5_23 x_PM_AON_BUF_X1%5_19 0.212317
R_x_PM_AON_BUF_X1%5_r17 x_PM_AON_BUF_X1%5_20 x_PM_AON_BUF_X1%5_19 0.95
R_x_PM_AON_BUF_X1%5_r18 x_PM_AON_BUF_X1%5_22 x_PM_AON_BUF_X1%5_15 0.212317
R_x_PM_AON_BUF_X1%5_r19 N_5_M0_s x_PM_AON_BUF_X1%5_15 0.312143
R_x_PM_AON_BUF_X1%5_r20 x_PM_AON_BUF_X1%5_20 x_PM_AON_BUF_X1%5_11 0.212317
R_x_PM_AON_BUF_X1%5_r21 N_5_M2_s x_PM_AON_BUF_X1%5_11 0.475
R_x_PM_AON_BUF_X1%5_r22 x_PM_AON_BUF_X1%5_30 x_PM_AON_BUF_X1%5_5 1.95
R_x_PM_AON_BUF_X1%5_r23 N_5_M1_g x_PM_AON_BUF_X1%5_5 39
R_x_PM_AON_BUF_X1%5_r24 x_PM_AON_BUF_X1%5_30 x_PM_AON_BUF_X1%5_1 1.95
R_x_PM_AON_BUF_X1%5_r25 N_5_M3_g x_PM_AON_BUF_X1%5_1 29.64
C_x_PM_AON_BUF_X1%Z_c0 VSS N_Z_M3_d 1.23436e-16
R_x_PM_AON_BUF_X1%Z_r1 N_Z_M1_d Z 1.26214
R_x_PM_AON_BUF_X1%Z_r2 Z N_Z_M3_d 1.45214
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
