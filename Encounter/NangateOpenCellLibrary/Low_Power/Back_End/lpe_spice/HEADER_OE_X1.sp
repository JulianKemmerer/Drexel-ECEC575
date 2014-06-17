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
* Cellname:   HEADER_OE_X1.                                                    *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT HEADER_OE_X1 VDD VSS SLEEP VVDD SLEEPOUT 
*.PININFO VDD:P VSS:G SLEEP:I VVDD:P SLEEPOUT:O 
*.EQN SLEEPOUT=SLEEP
M_M2 N_VVDD_M0_d N_SLEEP_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.135000U L=0.050000U
M_M3 N_VDD_M1_d N_SLEEP_M1_g N_5_M1_s VDD PMOS_VTL W=0.135000U L=0.050000U
M_M4 N_SLEEPOUT_M2_d N_5_M2_g N_VDD_M1_d VDD PMOS_VTL W=0.135000U L=0.050000U
M_M0 N_VSS_M3_d N_SLEEP_M3_g N_5_M3_s VSS NMOS_VTL W=0.090000U L=0.050000U
M_M1 N_SLEEPOUT_M4_d N_5_M4_g N_VSS_M3_d VSS NMOS_VTL W=0.090000U L=0.050000U
C_x_PM_HEADER_OE_X1%VDD_c0 VSS x_PM_HEADER_OE_X1%VDD_37 2.06322e-17
C_x_PM_HEADER_OE_X1%VDD_c1 VSS x_PM_HEADER_OE_X1%VDD_34 5.76125e-18
C_x_PM_HEADER_OE_X1%VDD_c2 VSS x_PM_HEADER_OE_X1%VDD_33 1.74022e-17
C_x_PM_HEADER_OE_X1%VDD_c3 VSS x_PM_HEADER_OE_X1%VDD_24 2.61461e-16
C_x_PM_HEADER_OE_X1%VDD_c4 VSS N_VDD_M1_d 5.61896e-17
C_x_PM_HEADER_OE_X1%VDD_c5 VSS x_PM_HEADER_OE_X1%VDD_17 1.94187e-17
C_x_PM_HEADER_OE_X1%VDD_c6 VSS x_PM_HEADER_OE_X1%VDD_16 3.57523e-17
C_x_PM_HEADER_OE_X1%VDD_c7 VSS x_PM_HEADER_OE_X1%VDD_13 1.92462e-17
C_x_PM_HEADER_OE_X1%VDD_c8 VSS x_PM_HEADER_OE_X1%VDD_12 2.334e-16
C_x_PM_HEADER_OE_X1%VDD_c9 VSS x_PM_HEADER_OE_X1%VDD_9 5.90809e-16
R_x_PM_HEADER_OE_X1%VDD_r10 x_PM_HEADER_OE_X1%VDD_37 VDD 0.13879
R_x_PM_HEADER_OE_X1%VDD_r11 x_PM_HEADER_OE_X1%VDD_33 VDD 0.403043
R_x_PM_HEADER_OE_X1%VDD_r12 x_PM_HEADER_OE_X1%VDD_24 VDD 0.13879
R_x_PM_HEADER_OE_X1%VDD_r13 VDD x_PM_HEADER_OE_X1%VDD_24 3.84471
R_x_PM_HEADER_OE_X1%VDD_r14 x_PM_HEADER_OE_X1%VDD_34 x_PM_HEADER_OE_X1%VDD_23 0.132285
R_x_PM_HEADER_OE_X1%VDD_r15 x_PM_HEADER_OE_X1%VDD_23 x_PM_HEADER_OE_X1%VDD_37 0.625882
R_x_PM_HEADER_OE_X1%VDD_r16 x_PM_HEADER_OE_X1%VDD_34 x_PM_HEADER_OE_X1%VDD_18 0.068038
R_x_PM_HEADER_OE_X1%VDD_r17 N_VDD_M1_d x_PM_HEADER_OE_X1%VDD_18 0.823333
R_x_PM_HEADER_OE_X1%VDD_r18 x_PM_HEADER_OE_X1%VDD_33 x_PM_HEADER_OE_X1%VDD_17 0.075321
R_x_PM_HEADER_OE_X1%VDD_r19 x_PM_HEADER_OE_X1%VDD_34 x_PM_HEADER_OE_X1%VDD_16 0.132285
R_x_PM_HEADER_OE_X1%VDD_r20 x_PM_HEADER_OE_X1%VDD_17 x_PM_HEADER_OE_X1%VDD_16 1.03941
R_x_PM_HEADER_OE_X1%VDD_r21 x_PM_HEADER_OE_X1%VDD_33 N_VDD_M0_s 0.543196
R_x_PM_HEADER_OE_X1%VDD_r22 VDD x_PM_HEADER_OE_X1%VDD_13 0.140282
R_x_PM_HEADER_OE_X1%VDD_r23 VDD x_PM_HEADER_OE_X1%VDD_12 0.143612
R_x_PM_HEADER_OE_X1%VDD_r24 x_PM_HEADER_OE_X1%VDD_13 x_PM_HEADER_OE_X1%VDD_12 7.68941
R_x_PM_HEADER_OE_X1%VDD_r25 VDD x_PM_HEADER_OE_X1%VDD_9 9.15353
C_x_PM_HEADER_OE_X1%VSS_c0 VSS x_PM_HEADER_OE_X1%VSS_34 2.69945e-17
C_x_PM_HEADER_OE_X1%VSS_c1 VSS x_PM_HEADER_OE_X1%VSS_31 5.66099e-18
C_x_PM_HEADER_OE_X1%VSS_c2 VSS x_PM_HEADER_OE_X1%VSS_29 2.334e-16
C_x_PM_HEADER_OE_X1%VSS_c3 VSS VSS 2.61461e-16
C_x_PM_HEADER_OE_X1%VSS_c4 VSS x_PM_HEADER_OE_X1%VSS_18 4.37651e-17
C_x_PM_HEADER_OE_X1%VSS_c5 VSS x_PM_HEADER_OE_X1%VSS_14 1.0616e-17
C_x_PM_HEADER_OE_X1%VSS_c6 VSS x_PM_HEADER_OE_X1%VSS_13 5.18983e-17
C_x_PM_HEADER_OE_X1%VSS_c7 VSS x_PM_HEADER_OE_X1%VSS_10 5.90809e-16
C_x_PM_HEADER_OE_X1%VSS_c8 VSS x_PM_HEADER_OE_X1%VSS_9 1.92462e-17
R_x_PM_HEADER_OE_X1%VSS_r9 x_PM_HEADER_OE_X1%VSS_34 VSS 0.13879
R_x_PM_HEADER_OE_X1%VSS_r10 x_PM_HEADER_OE_X1%VSS_29 VSS 0.138985
R_x_PM_HEADER_OE_X1%VSS_r11 x_PM_HEADER_OE_X1%VSS_31 x_PM_HEADER_OE_X1%VSS_20 0.132285
R_x_PM_HEADER_OE_X1%VSS_r12 x_PM_HEADER_OE_X1%VSS_20 x_PM_HEADER_OE_X1%VSS_34 0.625882
R_x_PM_HEADER_OE_X1%VSS_r13 x_PM_HEADER_OE_X1%VSS_31 x_PM_HEADER_OE_X1%VSS_18 0.068038
R_x_PM_HEADER_OE_X1%VSS_r14 x_PM_HEADER_OE_X1%VSS_18 N_VSS_M3_d 0.347287
R_x_PM_HEADER_OE_X1%VSS_r15 x_PM_HEADER_OE_X1%VSS_14 VSS 0.138595
R_x_PM_HEADER_OE_X1%VSS_r16 VSS x_PM_HEADER_OE_X1%VSS_14 1.16235
R_x_PM_HEADER_OE_X1%VSS_r17 x_PM_HEADER_OE_X1%VSS_31 x_PM_HEADER_OE_X1%VSS_13 0.132285
R_x_PM_HEADER_OE_X1%VSS_r18 VSS x_PM_HEADER_OE_X1%VSS_13 0.234706
R_x_PM_HEADER_OE_X1%VSS_r19 VSS x_PM_HEADER_OE_X1%VSS_10 9.15353
R_x_PM_HEADER_OE_X1%VSS_r20 VSS x_PM_HEADER_OE_X1%VSS_9 0.140282
R_x_PM_HEADER_OE_X1%VSS_r21 x_PM_HEADER_OE_X1%VSS_9 x_PM_HEADER_OE_X1%VSS_29 7.68941
C_x_PM_HEADER_OE_X1%SLEEP_c0 VSS x_PM_HEADER_OE_X1%SLEEP_21 6.92558e-18
C_x_PM_HEADER_OE_X1%SLEEP_c1 VSS x_PM_HEADER_OE_X1%SLEEP_19 6.32861e-17
C_x_PM_HEADER_OE_X1%SLEEP_c2 VSS x_PM_HEADER_OE_X1%SLEEP_15 7.40284e-18
C_x_PM_HEADER_OE_X1%SLEEP_c3 VSS N_SLEEP_M1_g 4.78936e-17
C_x_PM_HEADER_OE_X1%SLEEP_c4 VSS N_SLEEP_M3_g 5.05196e-17
C_x_PM_HEADER_OE_X1%SLEEP_c5 VSS N_SLEEP_M0_g 6.36345e-17
R_x_PM_HEADER_OE_X1%SLEEP_r6 x_PM_HEADER_OE_X1%SLEEP_28 x_PM_HEADER_OE_X1%SLEEP_21 4.7687
R_x_PM_HEADER_OE_X1%SLEEP_r7 x_PM_HEADER_OE_X1%SLEEP_27 x_PM_HEADER_OE_X1%SLEEP_21 4.7687
R_x_PM_HEADER_OE_X1%SLEEP_r8 x_PM_HEADER_OE_X1%SLEEP_21 x_PM_HEADER_OE_X1%SLEEP_19 25.0012
R_x_PM_HEADER_OE_X1%SLEEP_r9 x_PM_HEADER_OE_X1%SLEEP_19 SLEEP 0.698929
R_x_PM_HEADER_OE_X1%SLEEP_r10 x_PM_HEADER_OE_X1%SLEEP_25 x_PM_HEADER_OE_X1%SLEEP_15 4.7687
R_x_PM_HEADER_OE_X1%SLEEP_r11 x_PM_HEADER_OE_X1%SLEEP_15 x_PM_HEADER_OE_X1%SLEEP_13 25.0012
R_x_PM_HEADER_OE_X1%SLEEP_r12 SLEEP x_PM_HEADER_OE_X1%SLEEP_13 0.278214
R_x_PM_HEADER_OE_X1%SLEEP_r13 N_SLEEP_M1_g x_PM_HEADER_OE_X1%SLEEP_28 51.09
R_x_PM_HEADER_OE_X1%SLEEP_r14 N_SLEEP_M3_g x_PM_HEADER_OE_X1%SLEEP_27 54.6
R_x_PM_HEADER_OE_X1%SLEEP_r15 N_SLEEP_M0_g x_PM_HEADER_OE_X1%SLEEP_25 76.05
C_x_PM_HEADER_OE_X1%VVDD_c0 VSS VVDD 6.81157e-17
R_x_PM_HEADER_OE_X1%VVDD_r1 N_VVDD_M0_d VVDD 0.306111
C_x_PM_HEADER_OE_X1%5_c0 VSS x_PM_HEADER_OE_X1%5_28 1.10507e-17
C_x_PM_HEADER_OE_X1%5_c1 VSS x_PM_HEADER_OE_X1%5_24 9.36208e-17
C_x_PM_HEADER_OE_X1%5_c2 VSS x_PM_HEADER_OE_X1%5_20 1.44382e-17
C_x_PM_HEADER_OE_X1%5_c3 VSS x_PM_HEADER_OE_X1%5_19 4.66831e-17
C_x_PM_HEADER_OE_X1%5_c4 VSS x_PM_HEADER_OE_X1%5_18 1.00234e-17
C_x_PM_HEADER_OE_X1%5_c5 VSS x_PM_HEADER_OE_X1%5_17 4.34966e-17
C_x_PM_HEADER_OE_X1%5_c6 VSS N_5_M1_s 2.34195e-17
C_x_PM_HEADER_OE_X1%5_c7 VSS x_PM_HEADER_OE_X1%5_12 3.03699e-17
C_x_PM_HEADER_OE_X1%5_c8 VSS N_5_M2_g 6.31097e-17
C_x_PM_HEADER_OE_X1%5_c9 VSS N_5_M4_g 3.57054e-17
R_x_PM_HEADER_OE_X1%5_r10 x_PM_HEADER_OE_X1%5_28 x_PM_HEADER_OE_X1%5_26 2.86
R_x_PM_HEADER_OE_X1%5_r11 x_PM_HEADER_OE_X1%5_26 x_PM_HEADER_OE_X1%5_24 25.0012
R_x_PM_HEADER_OE_X1%5_r12 x_PM_HEADER_OE_X1%5_24 x_PM_HEADER_OE_X1%5_22 1.91357
R_x_PM_HEADER_OE_X1%5_r13 x_PM_HEADER_OE_X1%5_24 x_PM_HEADER_OE_X1%5_21 0.176429
R_x_PM_HEADER_OE_X1%5_r14 x_PM_HEADER_OE_X1%5_22 x_PM_HEADER_OE_X1%5_19 0.212317
R_x_PM_HEADER_OE_X1%5_r15 x_PM_HEADER_OE_X1%5_20 x_PM_HEADER_OE_X1%5_19 1.00429
R_x_PM_HEADER_OE_X1%5_r16 x_PM_HEADER_OE_X1%5_21 x_PM_HEADER_OE_X1%5_17 0.212317
R_x_PM_HEADER_OE_X1%5_r17 x_PM_HEADER_OE_X1%5_18 x_PM_HEADER_OE_X1%5_17 1.00429
R_x_PM_HEADER_OE_X1%5_r18 x_PM_HEADER_OE_X1%5_20 x_PM_HEADER_OE_X1%5_13 0.212317
R_x_PM_HEADER_OE_X1%5_r19 N_5_M1_s x_PM_HEADER_OE_X1%5_13 0.312143
R_x_PM_HEADER_OE_X1%5_r20 x_PM_HEADER_OE_X1%5_18 x_PM_HEADER_OE_X1%5_12 0.212317
R_x_PM_HEADER_OE_X1%5_r21 x_PM_HEADER_OE_X1%5_12 N_5_M3_s 0.543196
R_x_PM_HEADER_OE_X1%5_r22 x_PM_HEADER_OE_X1%5_28 x_PM_HEADER_OE_X1%5_5 1.95
R_x_PM_HEADER_OE_X1%5_r23 N_5_M2_g x_PM_HEADER_OE_X1%5_5 73.71
R_x_PM_HEADER_OE_X1%5_r24 x_PM_HEADER_OE_X1%5_28 x_PM_HEADER_OE_X1%5_1 1.95
R_x_PM_HEADER_OE_X1%5_r25 N_5_M4_g x_PM_HEADER_OE_X1%5_1 31.98
C_x_PM_HEADER_OE_X1%SLEEPOUT_c0 VSS N_SLEEPOUT_M4_d 1.39056e-16
R_x_PM_HEADER_OE_X1%SLEEPOUT_r1 N_SLEEPOUT_M2_d SLEEPOUT 1.805
R_x_PM_HEADER_OE_X1%SLEEPOUT_r2 SLEEPOUT N_SLEEPOUT_M4_d 2.07643
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
