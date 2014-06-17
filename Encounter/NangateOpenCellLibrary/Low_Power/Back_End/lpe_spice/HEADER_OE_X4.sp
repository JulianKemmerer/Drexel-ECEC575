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
* Cellname:   HEADER_OE_X4.                                                    *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT HEADER_OE_X4 VDD VSS SLEEP VVDD SLEEPOUT 
*.PININFO VDD:P VSS:G SLEEP:I VVDD:P SLEEPOUT:O 
*.EQN SLEEPOUT=SLEEP
M_M2 N_VVDD_M0_d N_SLEEP_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.540000U L=0.050000U
M_M3 N_VDD_M1_d N_SLEEP_M1_g N_5_M1_s VDD PMOS_VTL W=0.135000U L=0.050000U
M_M4 N_SLEEPOUT_M2_d N_5_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.540000U L=0.050000U
M_M0 N_VSS_M3_d N_SLEEP_M3_g N_5_M3_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_SLEEPOUT_M4_d N_5_M4_g N_VSS_M3_d VSS NMOS_VTL W=0.360000U L=0.050000U
C_x_PM_HEADER_OE_X4%VDD_c0 VSS x_PM_HEADER_OE_X4%VDD_39 2.25198e-17
C_x_PM_HEADER_OE_X4%VDD_c1 VSS x_PM_HEADER_OE_X4%VDD_36 6.16484e-18
C_x_PM_HEADER_OE_X4%VDD_c2 VSS x_PM_HEADER_OE_X4%VDD_26 2.61574e-16
C_x_PM_HEADER_OE_X4%VDD_c3 VSS N_VDD_M1_d 9.43763e-17
C_x_PM_HEADER_OE_X4%VDD_c4 VSS x_PM_HEADER_OE_X4%VDD_19 1.94709e-17
C_x_PM_HEADER_OE_X4%VDD_c5 VSS x_PM_HEADER_OE_X4%VDD_18 2.99256e-17
C_x_PM_HEADER_OE_X4%VDD_c6 VSS N_VDD_M0_s 2.41234e-17
C_x_PM_HEADER_OE_X4%VDD_c7 VSS x_PM_HEADER_OE_X4%VDD_13 1.92462e-17
C_x_PM_HEADER_OE_X4%VDD_c8 VSS x_PM_HEADER_OE_X4%VDD_12 2.334e-16
C_x_PM_HEADER_OE_X4%VDD_c9 VSS x_PM_HEADER_OE_X4%VDD_9 5.90809e-16
R_x_PM_HEADER_OE_X4%VDD_r10 x_PM_HEADER_OE_X4%VDD_39 VDD 0.13879
R_x_PM_HEADER_OE_X4%VDD_r11 x_PM_HEADER_OE_X4%VDD_35 VDD 0.403043
R_x_PM_HEADER_OE_X4%VDD_r12 x_PM_HEADER_OE_X4%VDD_26 VDD 0.13879
R_x_PM_HEADER_OE_X4%VDD_r13 VDD x_PM_HEADER_OE_X4%VDD_26 3.84471
R_x_PM_HEADER_OE_X4%VDD_r14 x_PM_HEADER_OE_X4%VDD_36 x_PM_HEADER_OE_X4%VDD_25 0.132285
R_x_PM_HEADER_OE_X4%VDD_r15 x_PM_HEADER_OE_X4%VDD_25 x_PM_HEADER_OE_X4%VDD_39 0.648235
R_x_PM_HEADER_OE_X4%VDD_r16 x_PM_HEADER_OE_X4%VDD_36 x_PM_HEADER_OE_X4%VDD_20 0.068038
R_x_PM_HEADER_OE_X4%VDD_r17 N_VDD_M1_d x_PM_HEADER_OE_X4%VDD_20 1.35815
R_x_PM_HEADER_OE_X4%VDD_r18 x_PM_HEADER_OE_X4%VDD_35 x_PM_HEADER_OE_X4%VDD_19 0.075321
R_x_PM_HEADER_OE_X4%VDD_r19 x_PM_HEADER_OE_X4%VDD_36 x_PM_HEADER_OE_X4%VDD_18 0.132285
R_x_PM_HEADER_OE_X4%VDD_r20 x_PM_HEADER_OE_X4%VDD_19 x_PM_HEADER_OE_X4%VDD_18 1.01706
R_x_PM_HEADER_OE_X4%VDD_r21 N_VDD_M0_s x_PM_HEADER_OE_X4%VDD_35 0.665
R_x_PM_HEADER_OE_X4%VDD_r22 VDD x_PM_HEADER_OE_X4%VDD_13 0.140282
R_x_PM_HEADER_OE_X4%VDD_r23 VDD x_PM_HEADER_OE_X4%VDD_12 0.143612
R_x_PM_HEADER_OE_X4%VDD_r24 x_PM_HEADER_OE_X4%VDD_13 x_PM_HEADER_OE_X4%VDD_12 7.68941
R_x_PM_HEADER_OE_X4%VDD_r25 VDD x_PM_HEADER_OE_X4%VDD_9 9.15353
C_x_PM_HEADER_OE_X4%VSS_c0 VSS x_PM_HEADER_OE_X4%VSS_36 2.79737e-17
C_x_PM_HEADER_OE_X4%VSS_c1 VSS x_PM_HEADER_OE_X4%VSS_33 2.8975e-18
C_x_PM_HEADER_OE_X4%VSS_c2 VSS x_PM_HEADER_OE_X4%VSS_31 2.334e-16
C_x_PM_HEADER_OE_X4%VSS_c3 VSS VSS 2.61602e-16
C_x_PM_HEADER_OE_X4%VSS_c4 VSS N_VSS_M3_d 3.37138e-17
C_x_PM_HEADER_OE_X4%VSS_c5 VSS x_PM_HEADER_OE_X4%VSS_14 1.06907e-17
C_x_PM_HEADER_OE_X4%VSS_c6 VSS x_PM_HEADER_OE_X4%VSS_13 6.97299e-17
C_x_PM_HEADER_OE_X4%VSS_c7 VSS x_PM_HEADER_OE_X4%VSS_10 5.90809e-16
C_x_PM_HEADER_OE_X4%VSS_c8 VSS x_PM_HEADER_OE_X4%VSS_9 1.92462e-17
R_x_PM_HEADER_OE_X4%VSS_r9 x_PM_HEADER_OE_X4%VSS_36 VSS 0.13879
R_x_PM_HEADER_OE_X4%VSS_r10 x_PM_HEADER_OE_X4%VSS_31 VSS 0.138985
R_x_PM_HEADER_OE_X4%VSS_r11 x_PM_HEADER_OE_X4%VSS_33 x_PM_HEADER_OE_X4%VSS_22 0.073144
R_x_PM_HEADER_OE_X4%VSS_r12 x_PM_HEADER_OE_X4%VSS_22 x_PM_HEADER_OE_X4%VSS_36 0.726471
R_x_PM_HEADER_OE_X4%VSS_r13 x_PM_HEADER_OE_X4%VSS_33 x_PM_HEADER_OE_X4%VSS_17 0.145286
R_x_PM_HEADER_OE_X4%VSS_r14 N_VSS_M3_d x_PM_HEADER_OE_X4%VSS_17 0.475
R_x_PM_HEADER_OE_X4%VSS_r15 x_PM_HEADER_OE_X4%VSS_14 VSS 0.138595
R_x_PM_HEADER_OE_X4%VSS_r16 VSS x_PM_HEADER_OE_X4%VSS_14 1.16235
R_x_PM_HEADER_OE_X4%VSS_r17 x_PM_HEADER_OE_X4%VSS_33 x_PM_HEADER_OE_X4%VSS_13 0.073144
R_x_PM_HEADER_OE_X4%VSS_r18 VSS x_PM_HEADER_OE_X4%VSS_13 0.279412
R_x_PM_HEADER_OE_X4%VSS_r19 VSS x_PM_HEADER_OE_X4%VSS_10 9.15353
R_x_PM_HEADER_OE_X4%VSS_r20 VSS x_PM_HEADER_OE_X4%VSS_9 0.140282
R_x_PM_HEADER_OE_X4%VSS_r21 x_PM_HEADER_OE_X4%VSS_9 x_PM_HEADER_OE_X4%VSS_31 7.68941
C_x_PM_HEADER_OE_X4%SLEEP_c0 VSS SLEEP 1.04045e-17
C_x_PM_HEADER_OE_X4%SLEEP_c1 VSS x_PM_HEADER_OE_X4%SLEEP_19 6.83493e-18
C_x_PM_HEADER_OE_X4%SLEEP_c2 VSS x_PM_HEADER_OE_X4%SLEEP_17 7.81052e-17
C_x_PM_HEADER_OE_X4%SLEEP_c3 VSS x_PM_HEADER_OE_X4%SLEEP_16 6.19591e-18
C_x_PM_HEADER_OE_X4%SLEEP_c4 VSS N_SLEEP_M1_g 4.34409e-17
C_x_PM_HEADER_OE_X4%SLEEP_c5 VSS N_SLEEP_M3_g 4.48171e-17
C_x_PM_HEADER_OE_X4%SLEEP_c6 VSS N_SLEEP_M0_g 7.84134e-17
R_x_PM_HEADER_OE_X4%SLEEP_r7 x_PM_HEADER_OE_X4%SLEEP_24 SLEEP 0.162857
R_x_PM_HEADER_OE_X4%SLEEP_r8 x_PM_HEADER_OE_X4%SLEEP_31 x_PM_HEADER_OE_X4%SLEEP_19 4.74714
R_x_PM_HEADER_OE_X4%SLEEP_r9 x_PM_HEADER_OE_X4%SLEEP_30 x_PM_HEADER_OE_X4%SLEEP_19 4.74714
R_x_PM_HEADER_OE_X4%SLEEP_r10 x_PM_HEADER_OE_X4%SLEEP_19 x_PM_HEADER_OE_X4%SLEEP_17 25.0012
R_x_PM_HEADER_OE_X4%SLEEP_r11 x_PM_HEADER_OE_X4%SLEEP_28 x_PM_HEADER_OE_X4%SLEEP_16 4.7687
R_x_PM_HEADER_OE_X4%SLEEP_r12 x_PM_HEADER_OE_X4%SLEEP_16 x_PM_HEADER_OE_X4%SLEEP_14 25.0012
R_x_PM_HEADER_OE_X4%SLEEP_r13 x_PM_HEADER_OE_X4%SLEEP_17 x_PM_HEADER_OE_X4%SLEEP_14 1.73375
R_x_PM_HEADER_OE_X4%SLEEP_r14 x_PM_HEADER_OE_X4%SLEEP_24 x_PM_HEADER_OE_X4%SLEEP_13 0.095
R_x_PM_HEADER_OE_X4%SLEEP_r15 x_PM_HEADER_OE_X4%SLEEP_14 x_PM_HEADER_OE_X4%SLEEP_13 0.130625
R_x_PM_HEADER_OE_X4%SLEEP_r16 N_SLEEP_M1_g x_PM_HEADER_OE_X4%SLEEP_31 39.39
R_x_PM_HEADER_OE_X4%SLEEP_r17 N_SLEEP_M3_g x_PM_HEADER_OE_X4%SLEEP_30 46.8
R_x_PM_HEADER_OE_X4%SLEEP_r18 N_SLEEP_M0_g x_PM_HEADER_OE_X4%SLEEP_28 63.18
C_x_PM_HEADER_OE_X4%VVDD_c0 VSS VVDD 6.21827e-17
R_x_PM_HEADER_OE_X4%VVDD_r1 VVDD N_VVDD_M0_d 0.025909
C_x_PM_HEADER_OE_X4%5_c0 VSS x_PM_HEADER_OE_X4%5_28 1.17342e-17
C_x_PM_HEADER_OE_X4%5_c1 VSS x_PM_HEADER_OE_X4%5_24 7.38772e-17
C_x_PM_HEADER_OE_X4%5_c2 VSS x_PM_HEADER_OE_X4%5_20 2.44509e-17
C_x_PM_HEADER_OE_X4%5_c3 VSS x_PM_HEADER_OE_X4%5_19 4.1658e-17
C_x_PM_HEADER_OE_X4%5_c4 VSS x_PM_HEADER_OE_X4%5_18 1.55176e-17
C_x_PM_HEADER_OE_X4%5_c5 VSS x_PM_HEADER_OE_X4%5_17 5.65855e-17
C_x_PM_HEADER_OE_X4%5_c6 VSS N_5_M1_s 2.52104e-17
C_x_PM_HEADER_OE_X4%5_c7 VSS x_PM_HEADER_OE_X4%5_12 4.64887e-17
C_x_PM_HEADER_OE_X4%5_c8 VSS N_5_M2_g 7.21816e-17
C_x_PM_HEADER_OE_X4%5_c9 VSS N_5_M4_g 5.56869e-17
R_x_PM_HEADER_OE_X4%5_r10 x_PM_HEADER_OE_X4%5_28 x_PM_HEADER_OE_X4%5_26 3.38
R_x_PM_HEADER_OE_X4%5_r11 x_PM_HEADER_OE_X4%5_26 x_PM_HEADER_OE_X4%5_24 25.0012
R_x_PM_HEADER_OE_X4%5_r12 x_PM_HEADER_OE_X4%5_24 x_PM_HEADER_OE_X4%5_22 0.067857
R_x_PM_HEADER_OE_X4%5_r13 x_PM_HEADER_OE_X4%5_24 x_PM_HEADER_OE_X4%5_21 1.37071
R_x_PM_HEADER_OE_X4%5_r14 x_PM_HEADER_OE_X4%5_21 x_PM_HEADER_OE_X4%5_19 0.212317
R_x_PM_HEADER_OE_X4%5_r15 x_PM_HEADER_OE_X4%5_20 x_PM_HEADER_OE_X4%5_19 0.787143
R_x_PM_HEADER_OE_X4%5_r16 x_PM_HEADER_OE_X4%5_22 x_PM_HEADER_OE_X4%5_17 0.212317
R_x_PM_HEADER_OE_X4%5_r17 x_PM_HEADER_OE_X4%5_18 x_PM_HEADER_OE_X4%5_17 1.00429
R_x_PM_HEADER_OE_X4%5_r18 x_PM_HEADER_OE_X4%5_18 x_PM_HEADER_OE_X4%5_13 0.212317
R_x_PM_HEADER_OE_X4%5_r19 N_5_M1_s x_PM_HEADER_OE_X4%5_13 0.285
R_x_PM_HEADER_OE_X4%5_r20 x_PM_HEADER_OE_X4%5_20 x_PM_HEADER_OE_X4%5_12 0.241334
R_x_PM_HEADER_OE_X4%5_r21 x_PM_HEADER_OE_X4%5_12 N_5_M3_s 0.319139
R_x_PM_HEADER_OE_X4%5_r22 x_PM_HEADER_OE_X4%5_28 x_PM_HEADER_OE_X4%5_5 1.95
R_x_PM_HEADER_OE_X4%5_r23 N_5_M2_g x_PM_HEADER_OE_X4%5_5 50.7
R_x_PM_HEADER_OE_X4%5_r24 x_PM_HEADER_OE_X4%5_28 x_PM_HEADER_OE_X4%5_1 1.95
R_x_PM_HEADER_OE_X4%5_r25 N_5_M4_g x_PM_HEADER_OE_X4%5_1 46.02
C_x_PM_HEADER_OE_X4%SLEEPOUT_c0 VSS N_SLEEPOUT_M4_d 1.30343e-16
R_x_PM_HEADER_OE_X4%SLEEPOUT_r1 N_SLEEPOUT_M2_d SLEEPOUT 1.34056
R_x_PM_HEADER_OE_X4%SLEEPOUT_r2 SLEEPOUT N_SLEEPOUT_M4_d 0.728333
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
