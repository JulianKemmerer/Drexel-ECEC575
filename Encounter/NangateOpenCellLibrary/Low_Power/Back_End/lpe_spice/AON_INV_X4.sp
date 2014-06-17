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
* Cellname:   AON_INV_X4.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AON_INV_X4 VDD VSS VDDBAK A Z 
*.PININFO VDD:P VSS:G VDDBAK:P A:I Z:O 
*.EQN Z=!A
M_M2 N_Z_M0_d N_A_M0_g N_VDDBAK_M0_s VDD PMOS_VTL W=0.270000U L=0.050000U
M_M3 N_VDDBAK_M1_d N_A_M1_g N_Z_M0_d VDD PMOS_VTL W=0.270000U L=0.050000U
M_M0 N_Z_M2_d N_A_M2_g N_VSS_M2_s VSS NMOS_VTL W=0.180000U L=0.050000U
M_M1 N_VSS_M3_d N_A_M3_g N_Z_M2_d VSS NMOS_VTL W=0.180000U L=0.050000U
C_x_PM_AON_INV_X4%VDD_c0 VSS x_PM_AON_INV_X4%VDD_27 1.12516e-16
C_x_PM_AON_INV_X4%VDD_c1 VSS x_PM_AON_INV_X4%VDD_24 1.07528e-17
C_x_PM_AON_INV_X4%VDD_c2 VSS x_PM_AON_INV_X4%VDD_23 2.334e-16
C_x_PM_AON_INV_X4%VDD_c3 VSS x_PM_AON_INV_X4%VDD_14 2.61734e-16
C_x_PM_AON_INV_X4%VDD_c4 VSS x_PM_AON_INV_X4%VDD_11 1.92462e-17
C_x_PM_AON_INV_X4%VDD_c5 VSS x_PM_AON_INV_X4%VDD_7 6.16516e-16
R_x_PM_AON_INV_X4%VDD_r6 x_PM_AON_INV_X4%VDD_27 x_PM_AON_INV_X4%VDD_25 0.13879
R_x_PM_AON_INV_X4%VDD_r7 x_PM_AON_INV_X4%VDD_24 x_PM_AON_INV_X4%VDD_27 3.17412
R_x_PM_AON_INV_X4%VDD_r8 x_PM_AON_INV_X4%VDD_24 x_PM_AON_INV_X4%VDD_25 0.138595
R_x_PM_AON_INV_X4%VDD_r9 x_PM_AON_INV_X4%VDD_23 x_PM_AON_INV_X4%VDD_25 0.138985
R_x_PM_AON_INV_X4%VDD_r10 x_PM_AON_INV_X4%VDD_14 x_PM_AON_INV_X4%VDD_25 0.13879
R_x_PM_AON_INV_X4%VDD_r11 VDD x_PM_AON_INV_X4%VDD_14 3.84471
R_x_PM_AON_INV_X4%VDD_r12 x_PM_AON_INV_X4%VDD_25 x_PM_AON_INV_X4%VDD_11 0.140282
R_x_PM_AON_INV_X4%VDD_r13 x_PM_AON_INV_X4%VDD_11 x_PM_AON_INV_X4%VDD_23 7.68941
R_x_PM_AON_INV_X4%VDD_r14 VDD x_PM_AON_INV_X4%VDD_7 9.57824
C_x_PM_AON_INV_X4%VSS_c0 VSS x_PM_AON_INV_X4%VSS_41 2.75619e-18
C_x_PM_AON_INV_X4%VSS_c1 VSS x_PM_AON_INV_X4%VSS_40 2.75619e-18
C_x_PM_AON_INV_X4%VSS_c2 VSS x_PM_AON_INV_X4%VSS_38 2.334e-16
C_x_PM_AON_INV_X4%VSS_c3 VSS VSS 2.616e-16
C_x_PM_AON_INV_X4%VSS_c4 VSS x_PM_AON_INV_X4%VSS_28 3.29228e-17
C_x_PM_AON_INV_X4%VSS_c5 VSS N_VSS_M3_d 1.18684e-17
C_x_PM_AON_INV_X4%VSS_c6 VSS x_PM_AON_INV_X4%VSS_20 3.70749e-17
C_x_PM_AON_INV_X4%VSS_c7 VSS N_VSS_M2_s 2.25821e-17
C_x_PM_AON_INV_X4%VSS_c8 VSS x_PM_AON_INV_X4%VSS_15 1.06177e-17
C_x_PM_AON_INV_X4%VSS_c9 VSS x_PM_AON_INV_X4%VSS_14 3.25812e-17
C_x_PM_AON_INV_X4%VSS_c10 VSS x_PM_AON_INV_X4%VSS_11 6.16516e-16
C_x_PM_AON_INV_X4%VSS_c11 VSS x_PM_AON_INV_X4%VSS_10 1.92462e-17
R_x_PM_AON_INV_X4%VSS_r12 x_PM_AON_INV_X4%VSS_38 VSS 0.138985
R_x_PM_AON_INV_X4%VSS_r13 x_PM_AON_INV_X4%VSS_41 x_PM_AON_INV_X4%VSS_29 0.073144
R_x_PM_AON_INV_X4%VSS_r14 x_PM_AON_INV_X4%VSS_28 VSS 0.13879
R_x_PM_AON_INV_X4%VSS_r15 x_PM_AON_INV_X4%VSS_29 x_PM_AON_INV_X4%VSS_28 1.08412
R_x_PM_AON_INV_X4%VSS_r16 x_PM_AON_INV_X4%VSS_41 x_PM_AON_INV_X4%VSS_24 0.145286
R_x_PM_AON_INV_X4%VSS_r17 N_VSS_M3_d x_PM_AON_INV_X4%VSS_24 0.312143
R_x_PM_AON_INV_X4%VSS_r18 x_PM_AON_INV_X4%VSS_40 x_PM_AON_INV_X4%VSS_21 0.073144
R_x_PM_AON_INV_X4%VSS_r19 VSS x_PM_AON_INV_X4%VSS_21 0.357647
R_x_PM_AON_INV_X4%VSS_r20 x_PM_AON_INV_X4%VSS_41 x_PM_AON_INV_X4%VSS_20 0.073144
R_x_PM_AON_INV_X4%VSS_r21 VSS x_PM_AON_INV_X4%VSS_20 0.346471
R_x_PM_AON_INV_X4%VSS_r22 x_PM_AON_INV_X4%VSS_40 x_PM_AON_INV_X4%VSS_16 0.145286
R_x_PM_AON_INV_X4%VSS_r23 N_VSS_M2_s x_PM_AON_INV_X4%VSS_16 0.312143
R_x_PM_AON_INV_X4%VSS_r24 x_PM_AON_INV_X4%VSS_15 VSS 0.138595
R_x_PM_AON_INV_X4%VSS_r25 x_PM_AON_INV_X4%VSS_40 x_PM_AON_INV_X4%VSS_14 0.073144
R_x_PM_AON_INV_X4%VSS_r26 x_PM_AON_INV_X4%VSS_15 x_PM_AON_INV_X4%VSS_14 1.07294
R_x_PM_AON_INV_X4%VSS_r27 VSS x_PM_AON_INV_X4%VSS_11 9.57824
R_x_PM_AON_INV_X4%VSS_r28 VSS x_PM_AON_INV_X4%VSS_10 0.140282
R_x_PM_AON_INV_X4%VSS_r29 x_PM_AON_INV_X4%VSS_10 x_PM_AON_INV_X4%VSS_38 7.68941
C_x_PM_AON_INV_X4%VDDBAK_c0 VSS N_VDDBAK_M1_d 3.49098e-17
C_x_PM_AON_INV_X4%VDDBAK_c1 VSS x_PM_AON_INV_X4%VDDBAK_11 1.73546e-17
C_x_PM_AON_INV_X4%VDDBAK_c2 VSS x_PM_AON_INV_X4%VDDBAK_10 5.42942e-17
C_x_PM_AON_INV_X4%VDDBAK_c3 VSS N_VDDBAK_M0_s 3.83852e-17
R_x_PM_AON_INV_X4%VDDBAK_r4 N_VDDBAK_M1_d x_PM_AON_INV_X4%VDDBAK_17 0.800714
R_x_PM_AON_INV_X4%VDDBAK_r5 VDD VDDBAK 0.16625
R_x_PM_AON_INV_X4%VDDBAK_r6 VDDBAK x_PM_AON_INV_X4%VDDBAK_11 0.2755
R_x_PM_AON_INV_X4%VDDBAK_r7 x_PM_AON_INV_X4%VDDBAK_17 x_PM_AON_INV_X4%VDDBAK_10 0.283756
R_x_PM_AON_INV_X4%VDDBAK_r8 VDD x_PM_AON_INV_X4%VDDBAK_10 0.15675
R_x_PM_AON_INV_X4%VDDBAK_r9 x_PM_AON_INV_X4%VDDBAK_11 x_PM_AON_INV_X4%VDDBAK_6 0.283756
R_x_PM_AON_INV_X4%VDDBAK_r10 N_VDDBAK_M0_s x_PM_AON_INV_X4%VDDBAK_6 0.800714
C_x_PM_AON_INV_X4%A_c0 VSS x_PM_AON_INV_X4%A_21 5.29189e-17
C_x_PM_AON_INV_X4%A_c1 VSS x_PM_AON_INV_X4%A_17 3.30952e-18
C_x_PM_AON_INV_X4%A_c2 VSS N_A_M1_g 3.86365e-17
C_x_PM_AON_INV_X4%A_c3 VSS x_PM_AON_INV_X4%A_10 2.46953e-17
C_x_PM_AON_INV_X4%A_c4 VSS x_PM_AON_INV_X4%A_9 4.72784e-18
C_x_PM_AON_INV_X4%A_c5 VSS x_PM_AON_INV_X4%A_8 1.30018e-17
C_x_PM_AON_INV_X4%A_c6 VSS N_A_M0_g 3.81672e-17
C_x_PM_AON_INV_X4%A_c7 VSS x_PM_AON_INV_X4%A_1 2.39008e-17
R_x_PM_AON_INV_X4%A_r8 x_PM_AON_INV_X4%A_27 x_PM_AON_INV_X4%A_23 3.38
R_x_PM_AON_INV_X4%A_r9 x_PM_AON_INV_X4%A_23 x_PM_AON_INV_X4%A_21 25.0012
R_x_PM_AON_INV_X4%A_r10 x_PM_AON_INV_X4%A_21 A 0.140968
R_x_PM_AON_INV_X4%A_r11 x_PM_AON_INV_X4%A_17 x_PM_AON_INV_X4%A_13 4.56151
R_x_PM_AON_INV_X4%A_r12 N_A_M1_g x_PM_AON_INV_X4%A_13 42.12
R_x_PM_AON_INV_X4%A_r13 x_PM_AON_INV_X4%A_17 x_PM_AON_INV_X4%A_10 4.56151
R_x_PM_AON_INV_X4%A_r14 N_A_M3_g x_PM_AON_INV_X4%A_10 21.84
R_x_PM_AON_INV_X4%A_r15 x_PM_AON_INV_X4%A_27 x_PM_AON_INV_X4%A_9 2.6
R_x_PM_AON_INV_X4%A_r16 x_PM_AON_INV_X4%A_17 x_PM_AON_INV_X4%A_8 0.043368
R_x_PM_AON_INV_X4%A_r17 x_PM_AON_INV_X4%A_9 x_PM_AON_INV_X4%A_8 15.08
R_x_PM_AON_INV_X4%A_r18 x_PM_AON_INV_X4%A_27 x_PM_AON_INV_X4%A_4 1.95
R_x_PM_AON_INV_X4%A_r19 N_A_M0_g x_PM_AON_INV_X4%A_4 42.12
R_x_PM_AON_INV_X4%A_r20 x_PM_AON_INV_X4%A_27 x_PM_AON_INV_X4%A_1 1.95
R_x_PM_AON_INV_X4%A_r21 N_A_M2_g x_PM_AON_INV_X4%A_1 21.84
C_x_PM_AON_INV_X4%Z_c0 VSS N_Z_M2_d 1.27953e-16
R_x_PM_AON_INV_X4%Z_r1 N_Z_M0_d Z 1.26214
R_x_PM_AON_INV_X4%Z_r2 Z N_Z_M2_d 1.39786
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
