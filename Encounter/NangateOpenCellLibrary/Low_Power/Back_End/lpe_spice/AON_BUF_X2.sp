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
* Cellname:   AON_BUF_X2.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AON_BUF_X2 VDD VSS A VDDBAK Z 
*.PININFO VDD:P VSS:G A:I VDDBAK:P Z:O 
*.EQN Z=A
M_M2 N_VDDBAK_M0_d N_A_M0_g N_5_M0_s VDD PMOS_VTL W=0.130000U L=0.050000U
M_M3 N_Z_M1_d N_5_M1_g N_VDDBAK_M0_d VDD PMOS_VTL W=0.270000U L=0.050000U
M_M0 N_VSS_M2_d N_A_M2_g N_5_M2_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_Z_M3_d N_5_M3_g N_VSS_M2_d VSS NMOS_VTL W=0.180000U L=0.050000U
C_x_PM_AON_BUF_X2%VDD_c0 VSS x_PM_AON_BUF_X2%VDD_27 1.12297e-16
C_x_PM_AON_BUF_X2%VDD_c1 VSS x_PM_AON_BUF_X2%VDD_24 1.07528e-17
C_x_PM_AON_BUF_X2%VDD_c2 VSS x_PM_AON_BUF_X2%VDD_23 2.334e-16
C_x_PM_AON_BUF_X2%VDD_c3 VSS x_PM_AON_BUF_X2%VDD_14 2.61734e-16
C_x_PM_AON_BUF_X2%VDD_c4 VSS x_PM_AON_BUF_X2%VDD_11 1.92462e-17
C_x_PM_AON_BUF_X2%VDD_c5 VSS x_PM_AON_BUF_X2%VDD_7 6.16516e-16
R_x_PM_AON_BUF_X2%VDD_r6 x_PM_AON_BUF_X2%VDD_27 x_PM_AON_BUF_X2%VDD_25 0.13879
R_x_PM_AON_BUF_X2%VDD_r7 x_PM_AON_BUF_X2%VDD_24 x_PM_AON_BUF_X2%VDD_27 3.17412
R_x_PM_AON_BUF_X2%VDD_r8 x_PM_AON_BUF_X2%VDD_24 x_PM_AON_BUF_X2%VDD_25 0.138595
R_x_PM_AON_BUF_X2%VDD_r9 x_PM_AON_BUF_X2%VDD_23 x_PM_AON_BUF_X2%VDD_25 0.138985
R_x_PM_AON_BUF_X2%VDD_r10 x_PM_AON_BUF_X2%VDD_14 x_PM_AON_BUF_X2%VDD_25 0.13879
R_x_PM_AON_BUF_X2%VDD_r11 VDD x_PM_AON_BUF_X2%VDD_14 3.84471
R_x_PM_AON_BUF_X2%VDD_r12 x_PM_AON_BUF_X2%VDD_25 x_PM_AON_BUF_X2%VDD_11 0.140282
R_x_PM_AON_BUF_X2%VDD_r13 x_PM_AON_BUF_X2%VDD_11 x_PM_AON_BUF_X2%VDD_23 7.68941
R_x_PM_AON_BUF_X2%VDD_r14 VDD x_PM_AON_BUF_X2%VDD_7 9.57824
C_x_PM_AON_BUF_X2%VSS_c0 VSS VSS 2.61606e-16
C_x_PM_AON_BUF_X2%VSS_c1 VSS x_PM_AON_BUF_X2%VSS_31 2.334e-16
C_x_PM_AON_BUF_X2%VSS_c2 VSS x_PM_AON_BUF_X2%VSS_21 4.97959e-17
C_x_PM_AON_BUF_X2%VSS_c3 VSS N_VSS_M2_d 3.1961e-17
C_x_PM_AON_BUF_X2%VSS_c4 VSS VSS 5.64012e-18
C_x_PM_AON_BUF_X2%VSS_c5 VSS x_PM_AON_BUF_X2%VSS_14 1.06175e-17
C_x_PM_AON_BUF_X2%VSS_c6 VSS x_PM_AON_BUF_X2%VSS_13 5.66356e-17
C_x_PM_AON_BUF_X2%VSS_c7 VSS x_PM_AON_BUF_X2%VSS_10 6.16516e-16
C_x_PM_AON_BUF_X2%VSS_c8 VSS x_PM_AON_BUF_X2%VSS_9 1.92462e-17
R_x_PM_AON_BUF_X2%VSS_r9 x_PM_AON_BUF_X2%VSS_31 VSS 0.138985
R_x_PM_AON_BUF_X2%VSS_r10 x_PM_AON_BUF_X2%VSS_21 VSS 0.13879
R_x_PM_AON_BUF_X2%VSS_r11 x_PM_AON_BUF_X2%VSS_22 x_PM_AON_BUF_X2%VSS_21 1.46412
R_x_PM_AON_BUF_X2%VSS_r12 N_VSS_M2_d VSS 0.344815
R_x_PM_AON_BUF_X2%VSS_r13 VSS x_PM_AON_BUF_X2%VSS_22 0.132285
R_x_PM_AON_BUF_X2%VSS_r14 x_PM_AON_BUF_X2%VSS_14 VSS 0.138595
R_x_PM_AON_BUF_X2%VSS_r15 VSS x_PM_AON_BUF_X2%VSS_13 0.132285
R_x_PM_AON_BUF_X2%VSS_r16 x_PM_AON_BUF_X2%VSS_14 x_PM_AON_BUF_X2%VSS_13 1.40824
R_x_PM_AON_BUF_X2%VSS_r17 VSS x_PM_AON_BUF_X2%VSS_10 9.57824
R_x_PM_AON_BUF_X2%VSS_r18 VSS x_PM_AON_BUF_X2%VSS_9 0.140282
R_x_PM_AON_BUF_X2%VSS_r19 x_PM_AON_BUF_X2%VSS_9 x_PM_AON_BUF_X2%VSS_31 7.68941
C_x_PM_AON_BUF_X2%A_c0 VSS x_PM_AON_BUF_X2%A_14 3.37828e-17
C_x_PM_AON_BUF_X2%A_c1 VSS x_PM_AON_BUF_X2%A_10 6.37945e-18
C_x_PM_AON_BUF_X2%A_c2 VSS x_PM_AON_BUF_X2%A_9 2.68922e-17
C_x_PM_AON_BUF_X2%A_c3 VSS N_A_M0_g 4.02904e-17
C_x_PM_AON_BUF_X2%A_c4 VSS N_A_M2_g 4.04946e-17
R_x_PM_AON_BUF_X2%A_r5 x_PM_AON_BUF_X2%A_16 x_PM_AON_BUF_X2%A_14 25.0012
R_x_PM_AON_BUF_X2%A_r6 x_PM_AON_BUF_X2%A_14 A 0.074643
R_x_PM_AON_BUF_X2%A_r7 x_PM_AON_BUF_X2%A_16 x_PM_AON_BUF_X2%A_9 20.54
R_x_PM_AON_BUF_X2%A_r8 x_PM_AON_BUF_X2%A_10 x_PM_AON_BUF_X2%A_9 0.043368
R_x_PM_AON_BUF_X2%A_r9 x_PM_AON_BUF_X2%A_10 x_PM_AON_BUF_X2%A_5 4.56151
R_x_PM_AON_BUF_X2%A_r10 N_A_M0_g x_PM_AON_BUF_X2%A_5 33.54
R_x_PM_AON_BUF_X2%A_r11 x_PM_AON_BUF_X2%A_10 x_PM_AON_BUF_X2%A_1 4.56151
R_x_PM_AON_BUF_X2%A_r12 N_A_M2_g x_PM_AON_BUF_X2%A_1 36.66
C_x_PM_AON_BUF_X2%VDDBAK_c0 VSS x_PM_AON_BUF_X2%VDDBAK_18 5.3983e-18
C_x_PM_AON_BUF_X2%VDDBAK_c1 VSS VDDBAK 4.12356e-17
C_x_PM_AON_BUF_X2%VDDBAK_c2 VSS N_VDDBAK_M0_d 4.00218e-17
C_x_PM_AON_BUF_X2%VDDBAK_c3 VSS x_PM_AON_BUF_X2%VDDBAK_5 3.76042e-17
R_x_PM_AON_BUF_X2%VDDBAK_r4 x_PM_AON_BUF_X2%VDDBAK_18 x_PM_AON_BUF_X2%VDDBAK_14 0.062814
R_x_PM_AON_BUF_X2%VDDBAK_r5 VDDBAK x_PM_AON_BUF_X2%VDDBAK_14 0.0855
R_x_PM_AON_BUF_X2%VDDBAK_r6 x_PM_AON_BUF_X2%VDDBAK_18 x_PM_AON_BUF_X2%VDDBAK_10 0.164712
R_x_PM_AON_BUF_X2%VDDBAK_r7 N_VDDBAK_M0_d x_PM_AON_BUF_X2%VDDBAK_10 0.122143
R_x_PM_AON_BUF_X2%VDDBAK_r8 x_PM_AON_BUF_X2%VDDBAK_18 x_PM_AON_BUF_X2%VDDBAK_5 0.062814
R_x_PM_AON_BUF_X2%VDDBAK_r9 VDD x_PM_AON_BUF_X2%VDDBAK_5 0.34675
C_x_PM_AON_BUF_X2%5_c0 VSS x_PM_AON_BUF_X2%5_25 1.15669e-17
C_x_PM_AON_BUF_X2%5_c1 VSS x_PM_AON_BUF_X2%5_22 2.97856e-17
C_x_PM_AON_BUF_X2%5_c2 VSS x_PM_AON_BUF_X2%5_21 6.5443e-17
C_x_PM_AON_BUF_X2%5_c3 VSS N_5_M0_s 2.45409e-17
C_x_PM_AON_BUF_X2%5_c4 VSS N_5_M2_s 5.07211e-17
C_x_PM_AON_BUF_X2%5_c5 VSS N_5_M1_g 4.95926e-17
C_x_PM_AON_BUF_X2%5_c6 VSS N_5_M3_g 4.21234e-17
R_x_PM_AON_BUF_X2%5_r7 x_PM_AON_BUF_X2%5_25 x_PM_AON_BUF_X2%5_23 3.9
R_x_PM_AON_BUF_X2%5_r8 x_PM_AON_BUF_X2%5_22 x_PM_AON_BUF_X2%5_21 0.027285
R_x_PM_AON_BUF_X2%5_r9 x_PM_AON_BUF_X2%5_21 x_PM_AON_BUF_X2%5_19 0.614694
R_x_PM_AON_BUF_X2%5_r10 x_PM_AON_BUF_X2%5_23 x_PM_AON_BUF_X2%5_19 25.0012
R_x_PM_AON_BUF_X2%5_r11 x_PM_AON_BUF_X2%5_22 x_PM_AON_BUF_X2%5_15 0.266978
R_x_PM_AON_BUF_X2%5_r12 N_5_M0_s x_PM_AON_BUF_X2%5_15 0.692143
R_x_PM_AON_BUF_X2%5_r13 x_PM_AON_BUF_X2%5_22 x_PM_AON_BUF_X2%5_11 0.266978
R_x_PM_AON_BUF_X2%5_r14 N_5_M2_s x_PM_AON_BUF_X2%5_11 1.28929
R_x_PM_AON_BUF_X2%5_r15 x_PM_AON_BUF_X2%5_25 x_PM_AON_BUF_X2%5_5 1.95
R_x_PM_AON_BUF_X2%5_r16 N_5_M1_g x_PM_AON_BUF_X2%5_5 38.22
R_x_PM_AON_BUF_X2%5_r17 x_PM_AON_BUF_X2%5_25 x_PM_AON_BUF_X2%5_1 1.95
R_x_PM_AON_BUF_X2%5_r18 N_5_M3_g x_PM_AON_BUF_X2%5_1 35.88
C_x_PM_AON_BUF_X2%Z_c0 VSS N_Z_M3_d 8.62088e-17
R_x_PM_AON_BUF_X2%Z_r1 N_Z_M1_d Z 1.45214
R_x_PM_AON_BUF_X2%Z_r2 Z N_Z_M3_d 1.12643
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
