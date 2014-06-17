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
* Cellname:   AON_BUF_X4.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AON_BUF_X4 VDD VSS A VDDBAK Z 
*.PININFO VDD:P VSS:G A:I VDDBAK:P Z:O 
*.EQN Z=A
M_M3 N_VDDBAK_M0_d N_A_M0_g N_5_M0_s VDD PMOS_VTL W=0.130000U L=0.050000U
M_M4 N_Z_M1_d N_5_M1_g N_VDDBAK_M0_d VDD PMOS_VTL W=0.270000U L=0.050000U
M_M5 N_VDDBAK_M2_d N_5_M2_g N_Z_M1_d VDD PMOS_VTL W=0.270000U L=0.050000U
M_M0 N_VSS_M3_d N_A_M3_g N_5_M3_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_Z_M4_d N_5_M4_g N_VSS_M3_d VSS NMOS_VTL W=0.180000U L=0.050000U
M_M2 N_VSS_M5_d N_5_M5_g N_Z_M4_d VSS NMOS_VTL W=0.180000U L=0.050000U
C_x_PM_AON_BUF_X4%VDD_c0 VSS x_PM_AON_BUF_X4%VDD_27 1.30918e-16
C_x_PM_AON_BUF_X4%VDD_c1 VSS x_PM_AON_BUF_X4%VDD_24 1.08319e-17
C_x_PM_AON_BUF_X4%VDD_c2 VSS x_PM_AON_BUF_X4%VDD_23 2.334e-16
C_x_PM_AON_BUF_X4%VDD_c3 VSS x_PM_AON_BUF_X4%VDD_14 2.61813e-16
C_x_PM_AON_BUF_X4%VDD_c4 VSS x_PM_AON_BUF_X4%VDD_11 1.92462e-17
C_x_PM_AON_BUF_X4%VDD_c5 VSS x_PM_AON_BUF_X4%VDD_7 6.2937e-16
R_x_PM_AON_BUF_X4%VDD_r6 x_PM_AON_BUF_X4%VDD_27 x_PM_AON_BUF_X4%VDD_25 0.13879
R_x_PM_AON_BUF_X4%VDD_r7 x_PM_AON_BUF_X4%VDD_24 x_PM_AON_BUF_X4%VDD_27 3.59882
R_x_PM_AON_BUF_X4%VDD_r8 x_PM_AON_BUF_X4%VDD_24 x_PM_AON_BUF_X4%VDD_25 0.138595
R_x_PM_AON_BUF_X4%VDD_r9 x_PM_AON_BUF_X4%VDD_23 x_PM_AON_BUF_X4%VDD_25 0.138985
R_x_PM_AON_BUF_X4%VDD_r10 x_PM_AON_BUF_X4%VDD_14 x_PM_AON_BUF_X4%VDD_25 0.13879
R_x_PM_AON_BUF_X4%VDD_r11 VDD x_PM_AON_BUF_X4%VDD_14 3.84471
R_x_PM_AON_BUF_X4%VDD_r12 x_PM_AON_BUF_X4%VDD_25 x_PM_AON_BUF_X4%VDD_11 0.140282
R_x_PM_AON_BUF_X4%VDD_r13 x_PM_AON_BUF_X4%VDD_11 x_PM_AON_BUF_X4%VDD_23 7.68941
R_x_PM_AON_BUF_X4%VDD_r14 VDD x_PM_AON_BUF_X4%VDD_7 9.79059
C_x_PM_AON_BUF_X4%VSS_c0 VSS x_PM_AON_BUF_X4%VSS_44 2.98416e-17
C_x_PM_AON_BUF_X4%VSS_c1 VSS x_PM_AON_BUF_X4%VSS_41 2.9415e-18
C_x_PM_AON_BUF_X4%VSS_c2 VSS x_PM_AON_BUF_X4%VSS_38 2.334e-16
C_x_PM_AON_BUF_X4%VSS_c3 VSS VSS 2.61533e-16
C_x_PM_AON_BUF_X4%VSS_c4 VSS N_VSS_M5_d 1.7593e-17
C_x_PM_AON_BUF_X4%VSS_c5 VSS x_PM_AON_BUF_X4%VSS_22 2.05739e-17
C_x_PM_AON_BUF_X4%VSS_c6 VSS N_VSS_M3_d 5.04832e-17
C_x_PM_AON_BUF_X4%VSS_c7 VSS VSS 5.64012e-18
C_x_PM_AON_BUF_X4%VSS_c8 VSS x_PM_AON_BUF_X4%VSS_15 1.06344e-17
C_x_PM_AON_BUF_X4%VSS_c9 VSS x_PM_AON_BUF_X4%VSS_14 6.21346e-17
C_x_PM_AON_BUF_X4%VSS_c10 VSS x_PM_AON_BUF_X4%VSS_11 6.2937e-16
C_x_PM_AON_BUF_X4%VSS_c11 VSS x_PM_AON_BUF_X4%VSS_10 1.92462e-17
R_x_PM_AON_BUF_X4%VSS_r12 x_PM_AON_BUF_X4%VSS_44 VSS 0.13879
R_x_PM_AON_BUF_X4%VSS_r13 x_PM_AON_BUF_X4%VSS_38 VSS 0.138985
R_x_PM_AON_BUF_X4%VSS_r14 x_PM_AON_BUF_X4%VSS_41 x_PM_AON_BUF_X4%VSS_29 0.073144
R_x_PM_AON_BUF_X4%VSS_r15 x_PM_AON_BUF_X4%VSS_29 x_PM_AON_BUF_X4%VSS_44 0.983529
R_x_PM_AON_BUF_X4%VSS_r16 x_PM_AON_BUF_X4%VSS_41 x_PM_AON_BUF_X4%VSS_24 0.145286
R_x_PM_AON_BUF_X4%VSS_r17 N_VSS_M5_d x_PM_AON_BUF_X4%VSS_24 0.692143
R_x_PM_AON_BUF_X4%VSS_r18 x_PM_AON_BUF_X4%VSS_41 x_PM_AON_BUF_X4%VSS_22 0.073144
R_x_PM_AON_BUF_X4%VSS_r19 x_PM_AON_BUF_X4%VSS_23 x_PM_AON_BUF_X4%VSS_22 0.614706
R_x_PM_AON_BUF_X4%VSS_r20 N_VSS_M3_d VSS 0.344815
R_x_PM_AON_BUF_X4%VSS_r21 VSS x_PM_AON_BUF_X4%VSS_23 0.132285
R_x_PM_AON_BUF_X4%VSS_r22 x_PM_AON_BUF_X4%VSS_15 VSS 0.138595
R_x_PM_AON_BUF_X4%VSS_r23 VSS x_PM_AON_BUF_X4%VSS_14 0.132285
R_x_PM_AON_BUF_X4%VSS_r24 x_PM_AON_BUF_X4%VSS_15 x_PM_AON_BUF_X4%VSS_14 1.54235
R_x_PM_AON_BUF_X4%VSS_r25 VSS x_PM_AON_BUF_X4%VSS_11 9.79059
R_x_PM_AON_BUF_X4%VSS_r26 VSS x_PM_AON_BUF_X4%VSS_10 0.140282
R_x_PM_AON_BUF_X4%VSS_r27 x_PM_AON_BUF_X4%VSS_10 x_PM_AON_BUF_X4%VSS_38 7.68941
C_x_PM_AON_BUF_X4%A_c0 VSS A 1.20768e-17
C_x_PM_AON_BUF_X4%A_c1 VSS x_PM_AON_BUF_X4%A_12 7.23073e-18
C_x_PM_AON_BUF_X4%A_c2 VSS x_PM_AON_BUF_X4%A_10 5.40203e-17
C_x_PM_AON_BUF_X4%A_c3 VSS N_A_M0_g 3.1377e-17
C_x_PM_AON_BUF_X4%A_c4 VSS N_A_M3_g 4.34278e-17
R_x_PM_AON_BUF_X4%A_r5 x_PM_AON_BUF_X4%A_17 A 0.156471
R_x_PM_AON_BUF_X4%A_r6 x_PM_AON_BUF_X4%A_21 x_PM_AON_BUF_X4%A_12 4.7687
R_x_PM_AON_BUF_X4%A_r7 x_PM_AON_BUF_X4%A_20 x_PM_AON_BUF_X4%A_12 4.7687
R_x_PM_AON_BUF_X4%A_r8 x_PM_AON_BUF_X4%A_12 x_PM_AON_BUF_X4%A_10 25.0012
R_x_PM_AON_BUF_X4%A_r9 x_PM_AON_BUF_X4%A_17 x_PM_AON_BUF_X4%A_9 0.095
R_x_PM_AON_BUF_X4%A_r10 x_PM_AON_BUF_X4%A_10 x_PM_AON_BUF_X4%A_9 1.37071
R_x_PM_AON_BUF_X4%A_r11 N_A_M0_g x_PM_AON_BUF_X4%A_21 26.52
R_x_PM_AON_BUF_X4%A_r12 N_A_M3_g x_PM_AON_BUF_X4%A_20 42.12
C_x_PM_AON_BUF_X4%VDDBAK_c0 VSS x_PM_AON_BUF_X4%VDDBAK_23 5.13945e-18
C_x_PM_AON_BUF_X4%VDDBAK_c1 VSS N_VDDBAK_M2_d 2.71795e-17
C_x_PM_AON_BUF_X4%VDDBAK_c2 VSS x_PM_AON_BUF_X4%VDDBAK_15 5.77055e-17
C_x_PM_AON_BUF_X4%VDDBAK_c3 VSS N_VDDBAK_M0_d 2.04449e-17
C_x_PM_AON_BUF_X4%VDDBAK_c4 VSS x_PM_AON_BUF_X4%VDDBAK_6 4.51549e-17
R_x_PM_AON_BUF_X4%VDDBAK_r5 N_VDDBAK_M2_d x_PM_AON_BUF_X4%VDDBAK_19 0.230714
R_x_PM_AON_BUF_X4%VDDBAK_r6 x_PM_AON_BUF_X4%VDDBAK_23 x_PM_AON_BUF_X4%VDDBAK_16 0.062814
R_x_PM_AON_BUF_X4%VDDBAK_r7 VDDBAK x_PM_AON_BUF_X4%VDDBAK_16 0.114
R_x_PM_AON_BUF_X4%VDDBAK_r8 x_PM_AON_BUF_X4%VDDBAK_19 x_PM_AON_BUF_X4%VDDBAK_15 0.283756
R_x_PM_AON_BUF_X4%VDDBAK_r9 VDDBAK x_PM_AON_BUF_X4%VDDBAK_15 0.475
R_x_PM_AON_BUF_X4%VDDBAK_r10 x_PM_AON_BUF_X4%VDDBAK_23 x_PM_AON_BUF_X4%VDDBAK_11 0.164712
R_x_PM_AON_BUF_X4%VDDBAK_r11 N_VDDBAK_M0_d x_PM_AON_BUF_X4%VDDBAK_11 0.230714
R_x_PM_AON_BUF_X4%VDDBAK_r12 x_PM_AON_BUF_X4%VDDBAK_23 x_PM_AON_BUF_X4%VDDBAK_6 0.062814
R_x_PM_AON_BUF_X4%VDDBAK_r13 VDD x_PM_AON_BUF_X4%VDDBAK_6 0.45125
C_x_PM_AON_BUF_X4%5_c0 VSS x_PM_AON_BUF_X4%5_35 8.29552e-17
C_x_PM_AON_BUF_X4%5_c1 VSS x_PM_AON_BUF_X4%5_31 9.30985e-18
C_x_PM_AON_BUF_X4%5_c2 VSS x_PM_AON_BUF_X4%5_30 6.15894e-17
C_x_PM_AON_BUF_X4%5_c3 VSS N_5_M3_s 2.84308e-17
C_x_PM_AON_BUF_X4%5_c4 VSS x_PM_AON_BUF_X4%5_22 6.9109e-17
C_x_PM_AON_BUF_X4%5_c5 VSS x_PM_AON_BUF_X4%5_19 4.616e-18
C_x_PM_AON_BUF_X4%5_c6 VSS N_5_M2_g 4.29393e-17
C_x_PM_AON_BUF_X4%5_c7 VSS N_5_M5_g 2.86905e-17
C_x_PM_AON_BUF_X4%5_c8 VSS x_PM_AON_BUF_X4%5_10 7.17649e-18
C_x_PM_AON_BUF_X4%5_c9 VSS x_PM_AON_BUF_X4%5_9 1.0806e-17
C_x_PM_AON_BUF_X4%5_c10 VSS N_5_M1_g 3.54147e-17
C_x_PM_AON_BUF_X4%5_c11 VSS N_5_M4_g 2.12137e-17
R_x_PM_AON_BUF_X4%5_r12 x_PM_AON_BUF_X4%5_39 x_PM_AON_BUF_X4%5_37 3.9
R_x_PM_AON_BUF_X4%5_r13 x_PM_AON_BUF_X4%5_37 x_PM_AON_BUF_X4%5_35 25.0012
R_x_PM_AON_BUF_X4%5_r14 x_PM_AON_BUF_X4%5_35 x_PM_AON_BUF_X4%5_33 0.990714
R_x_PM_AON_BUF_X4%5_r15 x_PM_AON_BUF_X4%5_35 x_PM_AON_BUF_X4%5_32 0.583571
R_x_PM_AON_BUF_X4%5_r16 x_PM_AON_BUF_X4%5_32 x_PM_AON_BUF_X4%5_30 0.212317
R_x_PM_AON_BUF_X4%5_r17 x_PM_AON_BUF_X4%5_31 x_PM_AON_BUF_X4%5_30 1.03143
R_x_PM_AON_BUF_X4%5_r18 x_PM_AON_BUF_X4%5_31 x_PM_AON_BUF_X4%5_26 0.212317
R_x_PM_AON_BUF_X4%5_r19 N_5_M3_s x_PM_AON_BUF_X4%5_26 0.447857
R_x_PM_AON_BUF_X4%5_r20 x_PM_AON_BUF_X4%5_33 x_PM_AON_BUF_X4%5_22 0.212317
R_x_PM_AON_BUF_X4%5_r21 N_5_M0_s x_PM_AON_BUF_X4%5_22 1.20786
R_x_PM_AON_BUF_X4%5_r22 x_PM_AON_BUF_X4%5_19 x_PM_AON_BUF_X4%5_15 4.56151
R_x_PM_AON_BUF_X4%5_r23 N_5_M2_g x_PM_AON_BUF_X4%5_15 43.68
R_x_PM_AON_BUF_X4%5_r24 x_PM_AON_BUF_X4%5_19 x_PM_AON_BUF_X4%5_11 4.56151
R_x_PM_AON_BUF_X4%5_r25 N_5_M5_g x_PM_AON_BUF_X4%5_11 28.86
R_x_PM_AON_BUF_X4%5_r26 x_PM_AON_BUF_X4%5_39 x_PM_AON_BUF_X4%5_10 2.6
R_x_PM_AON_BUF_X4%5_r27 x_PM_AON_BUF_X4%5_19 x_PM_AON_BUF_X4%5_9 0.043368
R_x_PM_AON_BUF_X4%5_r28 x_PM_AON_BUF_X4%5_10 x_PM_AON_BUF_X4%5_9 14.56
R_x_PM_AON_BUF_X4%5_r29 x_PM_AON_BUF_X4%5_39 x_PM_AON_BUF_X4%5_5 1.95
R_x_PM_AON_BUF_X4%5_r30 N_5_M1_g x_PM_AON_BUF_X4%5_5 43.68
R_x_PM_AON_BUF_X4%5_r31 x_PM_AON_BUF_X4%5_39 x_PM_AON_BUF_X4%5_1 1.95
R_x_PM_AON_BUF_X4%5_r32 N_5_M4_g x_PM_AON_BUF_X4%5_1 28.86
C_x_PM_AON_BUF_X4%Z_c0 VSS Z 5.94968e-17
C_x_PM_AON_BUF_X4%Z_c1 VSS N_Z_M1_d 5.91852e-17
C_x_PM_AON_BUF_X4%Z_c2 VSS x_PM_AON_BUF_X4%Z_4 4.64843e-17
R_x_PM_AON_BUF_X4%Z_r3 Z x_PM_AON_BUF_X4%Z_9 0.393571
R_x_PM_AON_BUF_X4%Z_r4 x_PM_AON_BUF_X4%Z_9 x_PM_AON_BUF_X4%Z_5 0.095
R_x_PM_AON_BUF_X4%Z_r5 N_Z_M1_d x_PM_AON_BUF_X4%Z_5 0.936429
R_x_PM_AON_BUF_X4%Z_r6 x_PM_AON_BUF_X4%Z_9 x_PM_AON_BUF_X4%Z_4 0.095
R_x_PM_AON_BUF_X4%Z_r7 x_PM_AON_BUF_X4%Z_4 N_Z_M4_d 0.570339
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
