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
* Cellname:   HEADER_OE_X2.                                                    *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT HEADER_OE_X2 VDD VSS SLEEP VVDD SLEEPOUT 
*.PININFO VDD:P VSS:G SLEEP:I VVDD:P SLEEPOUT:O 
*.EQN SLEEPOUT=SLEEP
M_M2 N_VVDD_M0_d N_SLEEP_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.270000U L=0.050000U
M_M3 N_VDD_M1_d N_SLEEP_M1_g N_5_M1_s VDD PMOS_VTL W=0.135000U L=0.050000U
M_M4 N_SLEEPOUT_M2_d N_5_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.270000U L=0.050000U
M_M0 N_VSS_M3_d N_SLEEP_M3_g N_5_M3_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_SLEEPOUT_M4_d N_5_M4_g N_VSS_M3_d VSS NMOS_VTL W=0.180000U L=0.050000U
C_x_PM_HEADER_OE_X2%VDD_c0 VSS x_PM_HEADER_OE_X2%VDD_39 2.89096e-17
C_x_PM_HEADER_OE_X2%VDD_c1 VSS x_PM_HEADER_OE_X2%VDD_36 2.9494e-18
C_x_PM_HEADER_OE_X2%VDD_c2 VSS x_PM_HEADER_OE_X2%VDD_26 2.61486e-16
C_x_PM_HEADER_OE_X2%VDD_c3 VSS N_VDD_M1_d 2.76224e-17
C_x_PM_HEADER_OE_X2%VDD_c4 VSS x_PM_HEADER_OE_X2%VDD_19 1.91289e-17
C_x_PM_HEADER_OE_X2%VDD_c5 VSS x_PM_HEADER_OE_X2%VDD_18 3.95665e-17
C_x_PM_HEADER_OE_X2%VDD_c6 VSS N_VDD_M0_s 3.40724e-17
C_x_PM_HEADER_OE_X2%VDD_c7 VSS x_PM_HEADER_OE_X2%VDD_13 1.92462e-17
C_x_PM_HEADER_OE_X2%VDD_c8 VSS x_PM_HEADER_OE_X2%VDD_12 2.334e-16
C_x_PM_HEADER_OE_X2%VDD_c9 VSS x_PM_HEADER_OE_X2%VDD_9 5.90809e-16
R_x_PM_HEADER_OE_X2%VDD_r10 x_PM_HEADER_OE_X2%VDD_39 VDD 0.13879
R_x_PM_HEADER_OE_X2%VDD_r11 x_PM_HEADER_OE_X2%VDD_35 VDD 0.392137
R_x_PM_HEADER_OE_X2%VDD_r12 x_PM_HEADER_OE_X2%VDD_26 VDD 0.13879
R_x_PM_HEADER_OE_X2%VDD_r13 VDD x_PM_HEADER_OE_X2%VDD_26 3.84471
R_x_PM_HEADER_OE_X2%VDD_r14 x_PM_HEADER_OE_X2%VDD_36 x_PM_HEADER_OE_X2%VDD_25 0.073144
R_x_PM_HEADER_OE_X2%VDD_r15 x_PM_HEADER_OE_X2%VDD_25 x_PM_HEADER_OE_X2%VDD_39 0.737647
R_x_PM_HEADER_OE_X2%VDD_r16 x_PM_HEADER_OE_X2%VDD_36 x_PM_HEADER_OE_X2%VDD_20 0.145286
R_x_PM_HEADER_OE_X2%VDD_r17 N_VDD_M1_d x_PM_HEADER_OE_X2%VDD_20 0.800714
R_x_PM_HEADER_OE_X2%VDD_r18 x_PM_HEADER_OE_X2%VDD_35 x_PM_HEADER_OE_X2%VDD_19 0.0753
R_x_PM_HEADER_OE_X2%VDD_r19 x_PM_HEADER_OE_X2%VDD_36 x_PM_HEADER_OE_X2%VDD_18 0.073144
R_x_PM_HEADER_OE_X2%VDD_r20 x_PM_HEADER_OE_X2%VDD_19 x_PM_HEADER_OE_X2%VDD_18 1.08412
R_x_PM_HEADER_OE_X2%VDD_r21 N_VDD_M0_s x_PM_HEADER_OE_X2%VDD_35 0.800714
R_x_PM_HEADER_OE_X2%VDD_r22 VDD x_PM_HEADER_OE_X2%VDD_13 0.140282
R_x_PM_HEADER_OE_X2%VDD_r23 VDD x_PM_HEADER_OE_X2%VDD_12 0.143516
R_x_PM_HEADER_OE_X2%VDD_r24 x_PM_HEADER_OE_X2%VDD_13 x_PM_HEADER_OE_X2%VDD_12 7.68941
R_x_PM_HEADER_OE_X2%VDD_r25 VDD x_PM_HEADER_OE_X2%VDD_9 9.15353
C_x_PM_HEADER_OE_X2%VSS_c0 VSS x_PM_HEADER_OE_X2%VSS_34 3.83558e-17
C_x_PM_HEADER_OE_X2%VSS_c1 VSS x_PM_HEADER_OE_X2%VSS_31 2.7699e-18
C_x_PM_HEADER_OE_X2%VSS_c2 VSS x_PM_HEADER_OE_X2%VSS_29 2.334e-16
C_x_PM_HEADER_OE_X2%VSS_c3 VSS VSS 2.61603e-16
C_x_PM_HEADER_OE_X2%VSS_c4 VSS x_PM_HEADER_OE_X2%VSS_18 4.24429e-17
C_x_PM_HEADER_OE_X2%VSS_c5 VSS x_PM_HEADER_OE_X2%VSS_14 1.06621e-17
C_x_PM_HEADER_OE_X2%VSS_c6 VSS x_PM_HEADER_OE_X2%VSS_13 5.5647e-17
C_x_PM_HEADER_OE_X2%VSS_c7 VSS x_PM_HEADER_OE_X2%VSS_10 5.90809e-16
C_x_PM_HEADER_OE_X2%VSS_c8 VSS x_PM_HEADER_OE_X2%VSS_9 1.92462e-17
R_x_PM_HEADER_OE_X2%VSS_r9 x_PM_HEADER_OE_X2%VSS_34 VSS 0.13879
R_x_PM_HEADER_OE_X2%VSS_r10 x_PM_HEADER_OE_X2%VSS_29 VSS 0.138985
R_x_PM_HEADER_OE_X2%VSS_r11 x_PM_HEADER_OE_X2%VSS_31 x_PM_HEADER_OE_X2%VSS_20 0.073144
R_x_PM_HEADER_OE_X2%VSS_r12 x_PM_HEADER_OE_X2%VSS_20 x_PM_HEADER_OE_X2%VSS_34 0.737647
R_x_PM_HEADER_OE_X2%VSS_r13 x_PM_HEADER_OE_X2%VSS_31 x_PM_HEADER_OE_X2%VSS_18 0.145286
R_x_PM_HEADER_OE_X2%VSS_r14 x_PM_HEADER_OE_X2%VSS_18 N_VSS_M3_d 0.543196
R_x_PM_HEADER_OE_X2%VSS_r15 x_PM_HEADER_OE_X2%VSS_14 VSS 0.138595
R_x_PM_HEADER_OE_X2%VSS_r16 VSS x_PM_HEADER_OE_X2%VSS_14 1.16235
R_x_PM_HEADER_OE_X2%VSS_r17 x_PM_HEADER_OE_X2%VSS_31 x_PM_HEADER_OE_X2%VSS_13 0.073144
R_x_PM_HEADER_OE_X2%VSS_r18 VSS x_PM_HEADER_OE_X2%VSS_13 0.268235
R_x_PM_HEADER_OE_X2%VSS_r19 VSS x_PM_HEADER_OE_X2%VSS_10 9.15353
R_x_PM_HEADER_OE_X2%VSS_r20 VSS x_PM_HEADER_OE_X2%VSS_9 0.140282
R_x_PM_HEADER_OE_X2%VSS_r21 x_PM_HEADER_OE_X2%VSS_9 x_PM_HEADER_OE_X2%VSS_29 7.68941
C_x_PM_HEADER_OE_X2%SLEEP_c0 VSS x_PM_HEADER_OE_X2%SLEEP_21 6.89492e-18
C_x_PM_HEADER_OE_X2%SLEEP_c1 VSS x_PM_HEADER_OE_X2%SLEEP_19 5.88298e-17
C_x_PM_HEADER_OE_X2%SLEEP_c2 VSS x_PM_HEADER_OE_X2%SLEEP_15 7.42747e-18
C_x_PM_HEADER_OE_X2%SLEEP_c3 VSS N_SLEEP_M1_g 6.59409e-17
C_x_PM_HEADER_OE_X2%SLEEP_c4 VSS N_SLEEP_M3_g 5.24623e-17
C_x_PM_HEADER_OE_X2%SLEEP_c5 VSS N_SLEEP_M0_g 6.65668e-17
R_x_PM_HEADER_OE_X2%SLEEP_r6 x_PM_HEADER_OE_X2%SLEEP_28 x_PM_HEADER_OE_X2%SLEEP_21 4.7687
R_x_PM_HEADER_OE_X2%SLEEP_r7 x_PM_HEADER_OE_X2%SLEEP_27 x_PM_HEADER_OE_X2%SLEEP_21 4.7687
R_x_PM_HEADER_OE_X2%SLEEP_r8 x_PM_HEADER_OE_X2%SLEEP_21 x_PM_HEADER_OE_X2%SLEEP_19 25.0012
R_x_PM_HEADER_OE_X2%SLEEP_r9 x_PM_HEADER_OE_X2%SLEEP_19 SLEEP 0.644643
R_x_PM_HEADER_OE_X2%SLEEP_r10 x_PM_HEADER_OE_X2%SLEEP_25 x_PM_HEADER_OE_X2%SLEEP_15 4.7687
R_x_PM_HEADER_OE_X2%SLEEP_r11 x_PM_HEADER_OE_X2%SLEEP_15 x_PM_HEADER_OE_X2%SLEEP_13 25.0012
R_x_PM_HEADER_OE_X2%SLEEP_r12 SLEEP x_PM_HEADER_OE_X2%SLEEP_13 0.278214
R_x_PM_HEADER_OE_X2%SLEEP_r13 N_SLEEP_M1_g x_PM_HEADER_OE_X2%SLEEP_28 73.71
R_x_PM_HEADER_OE_X2%SLEEP_r14 N_SLEEP_M3_g x_PM_HEADER_OE_X2%SLEEP_27 56.94
R_x_PM_HEADER_OE_X2%SLEEP_r15 N_SLEEP_M0_g x_PM_HEADER_OE_X2%SLEEP_25 63.18
C_x_PM_HEADER_OE_X2%VVDD_c0 VSS VVDD 8.47731e-17
R_x_PM_HEADER_OE_X2%VVDD_r1 N_VVDD_M0_d VVDD 0.855
C_x_PM_HEADER_OE_X2%5_c0 VSS x_PM_HEADER_OE_X2%5_30 1.14952e-17
C_x_PM_HEADER_OE_X2%5_c1 VSS x_PM_HEADER_OE_X2%5_26 9.97262e-17
C_x_PM_HEADER_OE_X2%5_c2 VSS x_PM_HEADER_OE_X2%5_22 1.69514e-17
C_x_PM_HEADER_OE_X2%5_c3 VSS x_PM_HEADER_OE_X2%5_21 3.35408e-17
C_x_PM_HEADER_OE_X2%5_c4 VSS x_PM_HEADER_OE_X2%5_20 8.24565e-18
C_x_PM_HEADER_OE_X2%5_c5 VSS x_PM_HEADER_OE_X2%5_19 4.32871e-17
C_x_PM_HEADER_OE_X2%5_c6 VSS N_5_M1_s 5.19564e-17
C_x_PM_HEADER_OE_X2%5_c7 VSS N_5_M3_s 3.09924e-17
C_x_PM_HEADER_OE_X2%5_c8 VSS N_5_M2_g 7.9842e-17
C_x_PM_HEADER_OE_X2%5_c9 VSS N_5_M4_g 4.7474e-17
R_x_PM_HEADER_OE_X2%5_r10 x_PM_HEADER_OE_X2%5_30 x_PM_HEADER_OE_X2%5_28 3.38
R_x_PM_HEADER_OE_X2%5_r11 x_PM_HEADER_OE_X2%5_28 x_PM_HEADER_OE_X2%5_26 25.0012
R_x_PM_HEADER_OE_X2%5_r12 x_PM_HEADER_OE_X2%5_26 x_PM_HEADER_OE_X2%5_24 1.88643
R_x_PM_HEADER_OE_X2%5_r13 x_PM_HEADER_OE_X2%5_26 x_PM_HEADER_OE_X2%5_23 0.366429
R_x_PM_HEADER_OE_X2%5_r14 x_PM_HEADER_OE_X2%5_24 x_PM_HEADER_OE_X2%5_21 0.212317
R_x_PM_HEADER_OE_X2%5_r15 x_PM_HEADER_OE_X2%5_22 x_PM_HEADER_OE_X2%5_21 0.95
R_x_PM_HEADER_OE_X2%5_r16 x_PM_HEADER_OE_X2%5_23 x_PM_HEADER_OE_X2%5_19 0.212317
R_x_PM_HEADER_OE_X2%5_r17 x_PM_HEADER_OE_X2%5_20 x_PM_HEADER_OE_X2%5_19 0.95
R_x_PM_HEADER_OE_X2%5_r18 x_PM_HEADER_OE_X2%5_22 x_PM_HEADER_OE_X2%5_15 0.212317
R_x_PM_HEADER_OE_X2%5_r19 N_5_M1_s x_PM_HEADER_OE_X2%5_15 1.07214
R_x_PM_HEADER_OE_X2%5_r20 x_PM_HEADER_OE_X2%5_20 x_PM_HEADER_OE_X2%5_11 0.212317
R_x_PM_HEADER_OE_X2%5_r21 N_5_M3_s x_PM_HEADER_OE_X2%5_11 0.665
R_x_PM_HEADER_OE_X2%5_r22 x_PM_HEADER_OE_X2%5_30 x_PM_HEADER_OE_X2%5_5 1.95
R_x_PM_HEADER_OE_X2%5_r23 N_5_M2_g x_PM_HEADER_OE_X2%5_5 84.24
R_x_PM_HEADER_OE_X2%5_r24 x_PM_HEADER_OE_X2%5_30 x_PM_HEADER_OE_X2%5_1 1.95
R_x_PM_HEADER_OE_X2%5_r25 N_5_M4_g x_PM_HEADER_OE_X2%5_1 42.9
C_x_PM_HEADER_OE_X2%SLEEPOUT_c0 VSS N_SLEEPOUT_M4_d 1.82552e-16
R_x_PM_HEADER_OE_X2%SLEEPOUT_r1 N_SLEEPOUT_M2_d SLEEPOUT 1.93
R_x_PM_HEADER_OE_X2%SLEEPOUT_r2 SLEEPOUT N_SLEEPOUT_M4_d 1.59
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
