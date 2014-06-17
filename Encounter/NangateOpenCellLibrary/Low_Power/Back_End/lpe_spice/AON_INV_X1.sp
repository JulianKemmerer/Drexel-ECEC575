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
* Cellname:   AON_INV_X1.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT AON_INV_X1 VDD VSS VDDBAK A Z 
*.PININFO VDD:P VSS:G VDDBAK:P A:I Z:O 
*.EQN Z=!A
M_M1 N_Z_M0_d N_A_M0_g N_VDDBAK_M0_s VDD PMOS_VTL W=0.130000U L=0.050000U
M_M0 N_Z_M1_d N_A_M1_g N_VSS_M1_s VSS NMOS_VTL W=0.090000U L=0.050000U
C_x_PM_AON_INV_X1%VDD_c0 VSS x_PM_AON_INV_X1%VDD_27 9.30968e-17
C_x_PM_AON_INV_X1%VDD_c1 VSS x_PM_AON_INV_X1%VDD_24 1.07335e-17
C_x_PM_AON_INV_X1%VDD_c2 VSS x_PM_AON_INV_X1%VDD_23 2.334e-16
C_x_PM_AON_INV_X1%VDD_c3 VSS x_PM_AON_INV_X1%VDD_14 2.61714e-16
C_x_PM_AON_INV_X1%VDD_c4 VSS x_PM_AON_INV_X1%VDD_11 1.92462e-17
C_x_PM_AON_INV_X1%VDD_c5 VSS x_PM_AON_INV_X1%VDD_7 6.03662e-16
R_x_PM_AON_INV_X1%VDD_r6 x_PM_AON_INV_X1%VDD_27 x_PM_AON_INV_X1%VDD_25 0.13879
R_x_PM_AON_INV_X1%VDD_r7 x_PM_AON_INV_X1%VDD_24 x_PM_AON_INV_X1%VDD_27 2.74941
R_x_PM_AON_INV_X1%VDD_r8 x_PM_AON_INV_X1%VDD_24 x_PM_AON_INV_X1%VDD_25 0.138595
R_x_PM_AON_INV_X1%VDD_r9 x_PM_AON_INV_X1%VDD_23 x_PM_AON_INV_X1%VDD_25 0.138985
R_x_PM_AON_INV_X1%VDD_r10 x_PM_AON_INV_X1%VDD_14 x_PM_AON_INV_X1%VDD_25 0.13879
R_x_PM_AON_INV_X1%VDD_r11 VDD x_PM_AON_INV_X1%VDD_14 3.84471
R_x_PM_AON_INV_X1%VDD_r12 x_PM_AON_INV_X1%VDD_25 x_PM_AON_INV_X1%VDD_11 0.140282
R_x_PM_AON_INV_X1%VDD_r13 x_PM_AON_INV_X1%VDD_11 x_PM_AON_INV_X1%VDD_23 7.68941
R_x_PM_AON_INV_X1%VDD_r14 VDD x_PM_AON_INV_X1%VDD_7 9.36588
C_x_PM_AON_INV_X1%VSS_c0 VSS VSS 2.61611e-16
C_x_PM_AON_INV_X1%VSS_c1 VSS x_PM_AON_INV_X1%VSS_33 2.9494e-18
C_x_PM_AON_INV_X1%VSS_c2 VSS x_PM_AON_INV_X1%VSS_32 1.05694e-17
C_x_PM_AON_INV_X1%VSS_c3 VSS x_PM_AON_INV_X1%VSS_31 2.334e-16
C_x_PM_AON_INV_X1%VSS_c4 VSS x_PM_AON_INV_X1%VSS_19 5.53693e-17
C_x_PM_AON_INV_X1%VSS_c5 VSS N_VSS_M1_s 2.79675e-17
C_x_PM_AON_INV_X1%VSS_c6 VSS x_PM_AON_INV_X1%VSS_13 3.29135e-17
C_x_PM_AON_INV_X1%VSS_c7 VSS x_PM_AON_INV_X1%VSS_10 6.03662e-16
C_x_PM_AON_INV_X1%VSS_c8 VSS x_PM_AON_INV_X1%VSS_9 1.92462e-17
R_x_PM_AON_INV_X1%VSS_r9 x_PM_AON_INV_X1%VSS_32 VSS 0.138595
R_x_PM_AON_INV_X1%VSS_r10 x_PM_AON_INV_X1%VSS_31 VSS 0.138985
R_x_PM_AON_INV_X1%VSS_r11 x_PM_AON_INV_X1%VSS_33 x_PM_AON_INV_X1%VSS_20 0.073144
R_x_PM_AON_INV_X1%VSS_r12 VSS x_PM_AON_INV_X1%VSS_20 0.134118
R_x_PM_AON_INV_X1%VSS_r13 x_PM_AON_INV_X1%VSS_19 VSS 0.13879
R_x_PM_AON_INV_X1%VSS_r14 VSS x_PM_AON_INV_X1%VSS_19 1.37471
R_x_PM_AON_INV_X1%VSS_r15 x_PM_AON_INV_X1%VSS_33 x_PM_AON_INV_X1%VSS_15 0.145286
R_x_PM_AON_INV_X1%VSS_r16 N_VSS_M1_s x_PM_AON_INV_X1%VSS_15 0.800714
R_x_PM_AON_INV_X1%VSS_r17 x_PM_AON_INV_X1%VSS_33 x_PM_AON_INV_X1%VSS_13 0.073144
R_x_PM_AON_INV_X1%VSS_r18 x_PM_AON_INV_X1%VSS_32 x_PM_AON_INV_X1%VSS_13 1.08412
R_x_PM_AON_INV_X1%VSS_r19 VSS x_PM_AON_INV_X1%VSS_10 9.36588
R_x_PM_AON_INV_X1%VSS_r20 VSS x_PM_AON_INV_X1%VSS_9 0.140282
R_x_PM_AON_INV_X1%VSS_r21 x_PM_AON_INV_X1%VSS_9 x_PM_AON_INV_X1%VSS_31 7.68941
C_x_PM_AON_INV_X1%VDDBAK_c0 VSS VDD 3.47384e-17
C_x_PM_AON_INV_X1%VDDBAK_c1 VSS x_PM_AON_INV_X1%VDDBAK_9 1.54115e-17
C_x_PM_AON_INV_X1%VDDBAK_c2 VSS N_VDDBAK_M0_s 2.82576e-17
R_x_PM_AON_INV_X1%VDDBAK_r3 VDD VDDBAK 0.09975
R_x_PM_AON_INV_X1%VDDBAK_r4 VDDBAK x_PM_AON_INV_X1%VDDBAK_9 0.1615
R_x_PM_AON_INV_X1%VDDBAK_r5 x_PM_AON_INV_X1%VDDBAK_9 x_PM_AON_INV_X1%VDDBAK_5 0.283756
R_x_PM_AON_INV_X1%VDDBAK_r6 N_VDDBAK_M0_s x_PM_AON_INV_X1%VDDBAK_5 0.882143
C_x_PM_AON_INV_X1%A_c0 VSS x_PM_AON_INV_X1%A_18 1.07433e-17
C_x_PM_AON_INV_X1%A_c1 VSS x_PM_AON_INV_X1%A_12 4.09246e-17
C_x_PM_AON_INV_X1%A_c2 VSS N_A_M0_g 4.0526e-17
C_x_PM_AON_INV_X1%A_c3 VSS N_A_M1_g 4.02669e-17
R_x_PM_AON_INV_X1%A_r4 x_PM_AON_INV_X1%A_18 x_PM_AON_INV_X1%A_14 4.42
R_x_PM_AON_INV_X1%A_r5 x_PM_AON_INV_X1%A_14 x_PM_AON_INV_X1%A_12 25.0012
R_x_PM_AON_INV_X1%A_r6 x_PM_AON_INV_X1%A_12 A 0.1425
R_x_PM_AON_INV_X1%A_r7 x_PM_AON_INV_X1%A_18 x_PM_AON_INV_X1%A_5 1.95
R_x_PM_AON_INV_X1%A_r8 N_A_M0_g x_PM_AON_INV_X1%A_5 32.76
R_x_PM_AON_INV_X1%A_r9 x_PM_AON_INV_X1%A_18 x_PM_AON_INV_X1%A_1 1.95
R_x_PM_AON_INV_X1%A_r10 N_A_M1_g x_PM_AON_INV_X1%A_1 34.32
C_x_PM_AON_INV_X1%Z_c0 VSS N_Z_M1_d 9.51248e-17
R_x_PM_AON_INV_X1%Z_r1 N_Z_M0_d Z 1.28929
R_x_PM_AON_INV_X1%Z_r2 Z N_Z_M1_d 1.37071
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
