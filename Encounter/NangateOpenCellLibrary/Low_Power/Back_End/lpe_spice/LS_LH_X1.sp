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
* Cellname:   LS_LH_X1.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_LH_X1 VDD VSS A VDDL Z
*.PININFO VDD:P VDDL:P VSS:G A:I Z:O 
*.EQN Z=A
M_M5 N_VDDL_M0_d N_A_M0_g N_5_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=1.35e-07
M_M6 N_6_M1_d N_5_M1_g N_VDDL_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=1.35e-07
M_M7 N_VDD_M2_d N_8_M2_g N_7_M2_s N_VDD_M2_b PMOS_VTL L=5e-08 W=1.35e-07
M_M8 N_8_M3_d N_7_M3_g N_VDD_M2_d N_VDD_M2_b PMOS_VTL L=5e-08 W=1.35e-07
M_M9 N_Z_M4_d N_8_M4_g N_VDD_M4_s N_VDD_M2_b PMOS_VTL L=5e-08 W=2e-07
M_M0 N_VSS_M5_d N_A_M5_g N_5_M5_s N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M1 N_6_M6_d N_5_M6_g N_VSS_M5_d N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M2 N_VSS_M7_d N_5_M7_g N_7_M7_s N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M3 N_8_M8_d N_6_M8_g N_VSS_M7_d N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M4 N_Z_M9_d N_8_M9_g N_VSS_M9_s N_VSS_M5_b NMOS_VTL L=5e-08 W=1.2e-07
C_x_PM_LS_LH_X1%VDD_c0 x_PM_LS_LH_X1%VDD_43 VSS 0.0237472f
C_x_PM_LS_LH_X1%VDD_c1 x_PM_LS_LH_X1%VDD_40 VSS 0.00293947f
C_x_PM_LS_LH_X1%VDD_c2 x_PM_LS_LH_X1%VDD_39 VSS 0.00295509f
C_x_PM_LS_LH_X1%VDD_c3 x_PM_LS_LH_X1%VDD_38 VSS 0.0107524f
C_x_PM_LS_LH_X1%VDD_c4 x_PM_LS_LH_X1%VDD_37 VSS 0.2334f
C_x_PM_LS_LH_X1%VDD_c5 x_PM_LS_LH_X1%VDD_28 VSS 0.261469f
C_x_PM_LS_LH_X1%VDD_c6 N_VDD_M4_s VSS 0.0194351f
C_x_PM_LS_LH_X1%VDD_c7 x_PM_LS_LH_X1%VDD_20 VSS 0.0243102f
C_x_PM_LS_LH_X1%VDD_c8 N_VDD_M2_d VSS 0.0342533f
C_x_PM_LS_LH_X1%VDD_c9 x_PM_LS_LH_X1%VDD_14 VSS 0.116013f
C_x_PM_LS_LH_X1%VDD_c10 x_PM_LS_LH_X1%VDD_13 VSS 0.0192462f
C_x_PM_LS_LH_X1%VDD_c11 x_PM_LS_LH_X1%VDD_9 VSS 0.667932f
R_x_PM_LS_LH_X1%VDD_r12 N_VDD_M2_b x_PM_LS_LH_X1%VDD_43 0.13879 
R_x_PM_LS_LH_X1%VDD_r13 N_VDD_M2_b x_PM_LS_LH_X1%VDD_38 0.138595 
R_x_PM_LS_LH_X1%VDD_r14 N_VDD_M2_b x_PM_LS_LH_X1%VDD_37 0.138985 
R_x_PM_LS_LH_X1%VDD_r15 N_VDD_M2_b x_PM_LS_LH_X1%VDD_28 0.13879 
R_x_PM_LS_LH_X1%VDD_r16 x_PM_LS_LH_X1%VDD_28 VDD 3.84471 
R_x_PM_LS_LH_X1%VDD_r17 x_PM_LS_LH_X1%VDD_27 x_PM_LS_LH_X1%VDD_40 0.0731438 
R_x_PM_LS_LH_X1%VDD_r18 x_PM_LS_LH_X1%VDD_43 x_PM_LS_LH_X1%VDD_27 0.659412 
R_x_PM_LS_LH_X1%VDD_r19 x_PM_LS_LH_X1%VDD_22 x_PM_LS_LH_X1%VDD_40 0.145286 
R_x_PM_LS_LH_X1%VDD_r20 x_PM_LS_LH_X1%VDD_22 N_VDD_M4_s 0.665 
R_x_PM_LS_LH_X1%VDD_r21 x_PM_LS_LH_X1%VDD_21 x_PM_LS_LH_X1%VDD_39 0.0731438 
R_x_PM_LS_LH_X1%VDD_r22 x_PM_LS_LH_X1%VDD_20 x_PM_LS_LH_X1%VDD_40 0.0731438 
R_x_PM_LS_LH_X1%VDD_r23 x_PM_LS_LH_X1%VDD_20 x_PM_LS_LH_X1%VDD_21 0.737647 
R_x_PM_LS_LH_X1%VDD_r24 x_PM_LS_LH_X1%VDD_16 x_PM_LS_LH_X1%VDD_39 0.145286 
R_x_PM_LS_LH_X1%VDD_r25 x_PM_LS_LH_X1%VDD_16 N_VDD_M2_d 0.882143 
R_x_PM_LS_LH_X1%VDD_r26 x_PM_LS_LH_X1%VDD_14 x_PM_LS_LH_X1%VDD_39 0.0731438 
R_x_PM_LS_LH_X1%VDD_r27 x_PM_LS_LH_X1%VDD_14 x_PM_LS_LH_X1%VDD_38 3.16294 
R_x_PM_LS_LH_X1%VDD_r28 x_PM_LS_LH_X1%VDD_13 N_VDD_M2_b 0.140282 
R_x_PM_LS_LH_X1%VDD_r29 x_PM_LS_LH_X1%VDD_37 x_PM_LS_LH_X1%VDD_13 7.68941 
R_x_PM_LS_LH_X1%VDD_r30 x_PM_LS_LH_X1%VDD_9 VDD 10.4276 
C_x_PM_LS_LH_X1%VSS_c0 x_PM_LS_LH_X1%VSS_50 VSS 0.0271082f
C_x_PM_LS_LH_X1%VSS_c1 x_PM_LS_LH_X1%VSS_47 VSS 0.00315161f
C_x_PM_LS_LH_X1%VSS_c2 x_PM_LS_LH_X1%VSS_46 VSS 0.0029455f
C_x_PM_LS_LH_X1%VSS_c3 x_PM_LS_LH_X1%VSS_45 VSS 0.0029415f
C_x_PM_LS_LH_X1%VSS_c4 x_PM_LS_LH_X1%VSS_43 VSS 0.2334f
C_x_PM_LS_LH_X1%VSS_c5 N_VSS_M5_b VSS 0.261466f
C_x_PM_LS_LH_X1%VSS_c6 N_VSS_M9_s VSS 0.0307793f
C_x_PM_LS_LH_X1%VSS_c7 x_PM_LS_LH_X1%VSS_27 VSS 0.0291308f
C_x_PM_LS_LH_X1%VSS_c8 x_PM_LS_LH_X1%VSS_26 VSS 0.0420074f
C_x_PM_LS_LH_X1%VSS_c9 x_PM_LS_LH_X1%VSS_21 VSS 0.0920626f
C_x_PM_LS_LH_X1%VSS_c10 N_VSS_M5_d VSS 0.0405323f
C_x_PM_LS_LH_X1%VSS_c11 x_PM_LS_LH_X1%VSS_16 VSS 0.0106189f
C_x_PM_LS_LH_X1%VSS_c12 x_PM_LS_LH_X1%VSS_15 VSS 0.0597011f
C_x_PM_LS_LH_X1%VSS_c13 x_PM_LS_LH_X1%VSS_12 VSS 0.667932f
C_x_PM_LS_LH_X1%VSS_c14 x_PM_LS_LH_X1%VSS_11 VSS 0.0192462f
R_x_PM_LS_LH_X1%VSS_r15 N_VSS_M5_b x_PM_LS_LH_X1%VSS_50 0.13879 
R_x_PM_LS_LH_X1%VSS_r16 N_VSS_M5_b x_PM_LS_LH_X1%VSS_43 0.138985 
R_x_PM_LS_LH_X1%VSS_r17 x_PM_LS_LH_X1%VSS_34 x_PM_LS_LH_X1%VSS_47 0.0779847 
R_x_PM_LS_LH_X1%VSS_r18 x_PM_LS_LH_X1%VSS_50 x_PM_LS_LH_X1%VSS_34 0.648235 
R_x_PM_LS_LH_X1%VSS_r19 x_PM_LS_LH_X1%VSS_29 x_PM_LS_LH_X1%VSS_47 0.137064 
R_x_PM_LS_LH_X1%VSS_r20 x_PM_LS_LH_X1%VSS_29 N_VSS_M9_s 0.646 
R_x_PM_LS_LH_X1%VSS_r21 x_PM_LS_LH_X1%VSS_28 x_PM_LS_LH_X1%VSS_46 0.0731438 
R_x_PM_LS_LH_X1%VSS_r22 x_PM_LS_LH_X1%VSS_27 x_PM_LS_LH_X1%VSS_47 0.0779847 
R_x_PM_LS_LH_X1%VSS_r23 x_PM_LS_LH_X1%VSS_27 x_PM_LS_LH_X1%VSS_28 0.726471 
R_x_PM_LS_LH_X1%VSS_r24 x_PM_LS_LH_X1%VSS_26 x_PM_LS_LH_X1%VSS_46 0.145286 
R_x_PM_LS_LH_X1%VSS_r25 N_VSS_M7_d x_PM_LS_LH_X1%VSS_26 0.570339 
R_x_PM_LS_LH_X1%VSS_r26 x_PM_LS_LH_X1%VSS_22 x_PM_LS_LH_X1%VSS_45 0.0731438 
R_x_PM_LS_LH_X1%VSS_r27 x_PM_LS_LH_X1%VSS_22 VSS 0.860588 
R_x_PM_LS_LH_X1%VSS_r28 x_PM_LS_LH_X1%VSS_21 x_PM_LS_LH_X1%VSS_46 0.0731438 
R_x_PM_LS_LH_X1%VSS_r29 x_PM_LS_LH_X1%VSS_21 VSS 0.737647 
R_x_PM_LS_LH_X1%VSS_r30 x_PM_LS_LH_X1%VSS_17 x_PM_LS_LH_X1%VSS_45 0.145286 
R_x_PM_LS_LH_X1%VSS_r31 x_PM_LS_LH_X1%VSS_17 N_VSS_M5_d 0.692143 
R_x_PM_LS_LH_X1%VSS_r32 N_VSS_M5_b x_PM_LS_LH_X1%VSS_16 0.138595 
R_x_PM_LS_LH_X1%VSS_r33 x_PM_LS_LH_X1%VSS_15 x_PM_LS_LH_X1%VSS_45 0.0731438 
R_x_PM_LS_LH_X1%VSS_r34 x_PM_LS_LH_X1%VSS_15 x_PM_LS_LH_X1%VSS_16 1.41941 
R_x_PM_LS_LH_X1%VSS_r35 x_PM_LS_LH_X1%VSS_12 VSS 10.4276 
R_x_PM_LS_LH_X1%VSS_r36 x_PM_LS_LH_X1%VSS_11 N_VSS_M5_b 0.140282 
R_x_PM_LS_LH_X1%VSS_r37 x_PM_LS_LH_X1%VSS_43 x_PM_LS_LH_X1%VSS_11 7.68941 
C_x_PM_LS_LH_X1%A_c0 A VSS 0.0316047f
C_x_PM_LS_LH_X1%A_c1 x_PM_LS_LH_X1%A_10 VSS 0.00432166f
C_x_PM_LS_LH_X1%A_c2 x_PM_LS_LH_X1%A_9 VSS 0.0296024f
C_x_PM_LS_LH_X1%A_c3 N_A_M0_g VSS 0.0364372f
C_x_PM_LS_LH_X1%A_c4 N_A_M5_g VSS 0.0444261f
R_x_PM_LS_LH_X1%A_r5 x_PM_LS_LH_X1%A_14 x_PM_LS_LH_X1%A_16 25.0012 
R_x_PM_LS_LH_X1%A_r6 A x_PM_LS_LH_X1%A_14 0.00826087 
R_x_PM_LS_LH_X1%A_r7 x_PM_LS_LH_X1%A_9 x_PM_LS_LH_X1%A_16 22.1 
R_x_PM_LS_LH_X1%A_r8 x_PM_LS_LH_X1%A_9 x_PM_LS_LH_X1%A_10 0.043368 
R_x_PM_LS_LH_X1%A_r9 x_PM_LS_LH_X1%A_5 x_PM_LS_LH_X1%A_10 4.56151 
R_x_PM_LS_LH_X1%A_r10 x_PM_LS_LH_X1%A_5 N_A_M0_g 29.25 
R_x_PM_LS_LH_X1%A_r11 x_PM_LS_LH_X1%A_1 x_PM_LS_LH_X1%A_10 4.56151 
R_x_PM_LS_LH_X1%A_r12 x_PM_LS_LH_X1%A_1 N_A_M5_g 38.22 
C_x_PM_LS_LH_X1%VDDL_c0 x_PM_LS_LH_X1%VDDL_16 VSS 0.0391221f
C_x_PM_LS_LH_X1%VDDL_c1 VDDL VSS 0.0311375f
C_x_PM_LS_LH_X1%VDDL_c2 N_VDDL_M0_d VSS 0.032101f
R_x_PM_LS_LH_X1%VDDL_r3 N_VDDL_M0_b x_PM_LS_LH_X1%VDDL_16 0.00475 
R_x_PM_LS_LH_X1%VDDL_r4 VDDL N_VDDL_M0_b 0.00475 
R_x_PM_LS_LH_X1%VDDL_r5 x_PM_LS_LH_X1%VDDL_7 x_PM_LS_LH_X1%VDDL_16 0.095 
R_x_PM_LS_LH_X1%VDDL_r6 x_PM_LS_LH_X1%VDDL_7 N_VDDL_M0_d 0.963571 
C_x_PM_LS_LH_X1%5_c0 x_PM_LS_LH_X1%5_29 VSS 0.00210188f
C_x_PM_LS_LH_X1%5_c1 x_PM_LS_LH_X1%5_26 VSS 0.0700745f
C_x_PM_LS_LH_X1%5_c2 N_5_M0_s VSS 0.0552907f
C_x_PM_LS_LH_X1%5_c3 x_PM_LS_LH_X1%5_19 VSS 0.0380396f
C_x_PM_LS_LH_X1%5_c4 x_PM_LS_LH_X1%5_15 VSS 0.0746028f
C_x_PM_LS_LH_X1%5_c5 x_PM_LS_LH_X1%5_14 VSS 0.00312566f
C_x_PM_LS_LH_X1%5_c6 N_5_M7_g VSS 0.0260798f
C_x_PM_LS_LH_X1%5_c7 N_5_M1_g VSS 0.0429392f
C_x_PM_LS_LH_X1%5_c8 N_5_M6_g VSS 0.0258872f
R_x_PM_LS_LH_X1%5_r9 x_PM_LS_LH_X1%5_26 x_PM_LS_LH_X1%5_30 25.0012 
R_x_PM_LS_LH_X1%5_r10 x_PM_LS_LH_X1%5_24 x_PM_LS_LH_X1%5_29 0.0418175 
R_x_PM_LS_LH_X1%5_r11 x_PM_LS_LH_X1%5_24 x_PM_LS_LH_X1%5_26 2.375 
R_x_PM_LS_LH_X1%5_r12 x_PM_LS_LH_X1%5_20 x_PM_LS_LH_X1%5_29 0.160909 
R_x_PM_LS_LH_X1%5_r13 x_PM_LS_LH_X1%5_20 N_5_M0_s 1.53357 
R_x_PM_LS_LH_X1%5_r14 x_PM_LS_LH_X1%5_19 x_PM_LS_LH_X1%5_29 0.160909 
R_x_PM_LS_LH_X1%5_r15 N_5_M5_s x_PM_LS_LH_X1%5_19 0.543196 
R_x_PM_LS_LH_X1%5_r16 x_PM_LS_LH_X1%5_15 x_PM_LS_LH_X1%5_30 40.3 
R_x_PM_LS_LH_X1%5_r17 x_PM_LS_LH_X1%5_13 x_PM_LS_LH_X1%5_30 16.9 
R_x_PM_LS_LH_X1%5_r18 x_PM_LS_LH_X1%5_13 x_PM_LS_LH_X1%5_14 0.043368 
R_x_PM_LS_LH_X1%5_r19 x_PM_LS_LH_X1%5_9 x_PM_LS_LH_X1%5_15 4.58872 
R_x_PM_LS_LH_X1%5_r20 x_PM_LS_LH_X1%5_9 N_5_M7_g 17.94 
R_x_PM_LS_LH_X1%5_r21 x_PM_LS_LH_X1%5_5 x_PM_LS_LH_X1%5_14 4.56151 
R_x_PM_LS_LH_X1%5_r22 x_PM_LS_LH_X1%5_5 N_5_M1_g 46.41 
R_x_PM_LS_LH_X1%5_r23 x_PM_LS_LH_X1%5_1 x_PM_LS_LH_X1%5_14 4.56151 
R_x_PM_LS_LH_X1%5_r24 x_PM_LS_LH_X1%5_1 N_5_M6_g 21.06 
C_x_PM_LS_LH_X1%6_c0 x_PM_LS_LH_X1%6_25 VSS 0.00303231f
C_x_PM_LS_LH_X1%6_c1 x_PM_LS_LH_X1%6_22 VSS 0.0573438f
C_x_PM_LS_LH_X1%6_c2 x_PM_LS_LH_X1%6_19 VSS 0.00563661f
C_x_PM_LS_LH_X1%6_c3 x_PM_LS_LH_X1%6_17 VSS 0.0557697f
C_x_PM_LS_LH_X1%6_c4 x_PM_LS_LH_X1%6_12 VSS 0.0902906f
C_x_PM_LS_LH_X1%6_c5 x_PM_LS_LH_X1%6_8 VSS 0.0455913f
C_x_PM_LS_LH_X1%6_c6 x_PM_LS_LH_X1%6_5 VSS 0.0409278f
C_x_PM_LS_LH_X1%6_c7 N_6_M8_g VSS 0.0457379f
R_x_PM_LS_LH_X1%6_r8 x_PM_LS_LH_X1%6_22 x_PM_LS_LH_X1%6_26 25.0012 
R_x_PM_LS_LH_X1%6_r9 x_PM_LS_LH_X1%6_20 x_PM_LS_LH_X1%6_25 0.0418175 
R_x_PM_LS_LH_X1%6_r10 x_PM_LS_LH_X1%6_20 x_PM_LS_LH_X1%6_22 0.963571 
R_x_PM_LS_LH_X1%6_r11 x_PM_LS_LH_X1%6_18 x_PM_LS_LH_X1%6_25 0.160909 
R_x_PM_LS_LH_X1%6_r12 x_PM_LS_LH_X1%6_18 x_PM_LS_LH_X1%6_19 0.515714 
R_x_PM_LS_LH_X1%6_r13 x_PM_LS_LH_X1%6_17 x_PM_LS_LH_X1%6_25 0.160909 
R_x_PM_LS_LH_X1%6_r14 x_PM_LS_LH_X1%6_16 x_PM_LS_LH_X1%6_17 1.33 
R_x_PM_LS_LH_X1%6_r15 x_PM_LS_LH_X1%6_12 x_PM_LS_LH_X1%6_16 0.212317 
R_x_PM_LS_LH_X1%6_r16 x_PM_LS_LH_X1%6_12 N_6_M6_d 1.20786 
R_x_PM_LS_LH_X1%6_r17 x_PM_LS_LH_X1%6_8 x_PM_LS_LH_X1%6_19 0.212317 
R_x_PM_LS_LH_X1%6_r18 x_PM_LS_LH_X1%6_8 N_6_M1_d 1.28929 
R_x_PM_LS_LH_X1%6_r19 x_PM_LS_LH_X1%6_5 x_PM_LS_LH_X1%6_26 19.5 
R_x_PM_LS_LH_X1%6_r20 x_PM_LS_LH_X1%6_1 x_PM_LS_LH_X1%6_5 4.58872 
R_x_PM_LS_LH_X1%6_r21 x_PM_LS_LH_X1%6_1 N_6_M8_g 41.34 
C_x_PM_LS_LH_X1%7_c0 x_PM_LS_LH_X1%7_25 VSS 0.0177579f
C_x_PM_LS_LH_X1%7_c1 x_PM_LS_LH_X1%7_20 VSS 0.113933f
C_x_PM_LS_LH_X1%7_c2 x_PM_LS_LH_X1%7_18 VSS 0.0176078f
C_x_PM_LS_LH_X1%7_c3 x_PM_LS_LH_X1%7_17 VSS 0.024488f
C_x_PM_LS_LH_X1%7_c4 x_PM_LS_LH_X1%7_16 VSS 0.0329139f
C_x_PM_LS_LH_X1%7_c5 x_PM_LS_LH_X1%7_15 VSS 0.0565612f
C_x_PM_LS_LH_X1%7_c6 N_7_M2_s VSS 0.0616349f
C_x_PM_LS_LH_X1%7_c7 N_7_M7_s VSS 0.0541196f
C_x_PM_LS_LH_X1%7_c8 N_7_M3_g VSS 0.0591782f
R_x_PM_LS_LH_X1%7_r9 x_PM_LS_LH_X1%7_22 x_PM_LS_LH_X1%7_25 7.54 
R_x_PM_LS_LH_X1%7_r10 x_PM_LS_LH_X1%7_21 x_PM_LS_LH_X1%7_22 25.0012 
R_x_PM_LS_LH_X1%7_r11 x_PM_LS_LH_X1%7_20 x_PM_LS_LH_X1%7_21 0.197151 
R_x_PM_LS_LH_X1%7_r12 x_PM_LS_LH_X1%7_19 x_PM_LS_LH_X1%7_20 1.43857 
R_x_PM_LS_LH_X1%7_r13 x_PM_LS_LH_X1%7_17 x_PM_LS_LH_X1%7_21 0.0151655 
R_x_PM_LS_LH_X1%7_r14 x_PM_LS_LH_X1%7_17 x_PM_LS_LH_X1%7_18 0.95 
R_x_PM_LS_LH_X1%7_r15 x_PM_LS_LH_X1%7_15 x_PM_LS_LH_X1%7_19 0.212317 
R_x_PM_LS_LH_X1%7_r16 x_PM_LS_LH_X1%7_15 x_PM_LS_LH_X1%7_16 0.95 
R_x_PM_LS_LH_X1%7_r17 x_PM_LS_LH_X1%7_11 x_PM_LS_LH_X1%7_18 0.212317 
R_x_PM_LS_LH_X1%7_r18 x_PM_LS_LH_X1%7_11 N_7_M2_s 1.96786 
R_x_PM_LS_LH_X1%7_r19 x_PM_LS_LH_X1%7_7 x_PM_LS_LH_X1%7_16 0.212317 
R_x_PM_LS_LH_X1%7_r20 x_PM_LS_LH_X1%7_7 N_7_M7_s 0.665 
R_x_PM_LS_LH_X1%7_r21 x_PM_LS_LH_X1%7_1 x_PM_LS_LH_X1%7_25 1.95 
R_x_PM_LS_LH_X1%7_r22 x_PM_LS_LH_X1%7_1 N_7_M3_g 56.55 
C_x_PM_LS_LH_X1%8_c0 x_PM_LS_LH_X1%8_39 VSS 0.0110499f
C_x_PM_LS_LH_X1%8_c1 x_PM_LS_LH_X1%8_32 VSS 0.00573998f
C_x_PM_LS_LH_X1%8_c2 x_PM_LS_LH_X1%8_31 VSS 0.033752f
C_x_PM_LS_LH_X1%8_c3 x_PM_LS_LH_X1%8_30 VSS 0.0480298f
C_x_PM_LS_LH_X1%8_c4 N_8_M3_d VSS 0.0312795f
C_x_PM_LS_LH_X1%8_c5 x_PM_LS_LH_X1%8_23 VSS 0.0514243f
C_x_PM_LS_LH_X1%8_c6 N_8_M8_d VSS 0.0501787f
C_x_PM_LS_LH_X1%8_c7 x_PM_LS_LH_X1%8_17 VSS 0.0790728f
C_x_PM_LS_LH_X1%8_c8 x_PM_LS_LH_X1%8_16 VSS 0.0153772f
C_x_PM_LS_LH_X1%8_c9 N_8_M4_g VSS 0.0832633f
C_x_PM_LS_LH_X1%8_c10 N_8_M9_g VSS 0.038414f
C_x_PM_LS_LH_X1%8_c11 N_8_M2_g VSS 0.0359457f
R_x_PM_LS_LH_X1%8_r12 x_PM_LS_LH_X1%8_37 x_PM_LS_LH_X1%8_39 4.42 
R_x_PM_LS_LH_X1%8_r13 x_PM_LS_LH_X1%8_30 x_PM_LS_LH_X1%8_31 0.0272847 
R_x_PM_LS_LH_X1%8_r14 x_PM_LS_LH_X1%8_28 x_PM_LS_LH_X1%8_30 0.558398 
R_x_PM_LS_LH_X1%8_r15 x_PM_LS_LH_X1%8_28 x_PM_LS_LH_X1%8_37 25.0012 
R_x_PM_LS_LH_X1%8_r16 x_PM_LS_LH_X1%8_24 x_PM_LS_LH_X1%8_32 0.266978 
R_x_PM_LS_LH_X1%8_r17 x_PM_LS_LH_X1%8_24 N_8_M3_d 0.773571 
R_x_PM_LS_LH_X1%8_r18 x_PM_LS_LH_X1%8_23 x_PM_LS_LH_X1%8_32 0.266978 
R_x_PM_LS_LH_X1%8_r19 x_PM_LS_LH_X1%8_22 x_PM_LS_LH_X1%8_31 0.266978 
R_x_PM_LS_LH_X1%8_r20 x_PM_LS_LH_X1%8_22 x_PM_LS_LH_X1%8_23 1.62857 
R_x_PM_LS_LH_X1%8_r21 x_PM_LS_LH_X1%8_18 x_PM_LS_LH_X1%8_31 0.266978 
R_x_PM_LS_LH_X1%8_r22 x_PM_LS_LH_X1%8_18 N_8_M8_d 0.909286 
R_x_PM_LS_LH_X1%8_r23 x_PM_LS_LH_X1%8_17 x_PM_LS_LH_X1%8_32 0.0272847 
R_x_PM_LS_LH_X1%8_r24 x_PM_LS_LH_X1%8_33 x_PM_LS_LH_X1%8_16 3.9 
R_x_PM_LS_LH_X1%8_r25 x_PM_LS_LH_X1%8_15 x_PM_LS_LH_X1%8_17 0.53025 
R_x_PM_LS_LH_X1%8_r26 x_PM_LS_LH_X1%8_15 x_PM_LS_LH_X1%8_16 25.0012 
R_x_PM_LS_LH_X1%8_r27 x_PM_LS_LH_X1%8_9 x_PM_LS_LH_X1%8_39 1.95 
R_x_PM_LS_LH_X1%8_r28 x_PM_LS_LH_X1%8_9 N_8_M4_g 96.72 
R_x_PM_LS_LH_X1%8_r29 x_PM_LS_LH_X1%8_5 x_PM_LS_LH_X1%8_39 1.95 
R_x_PM_LS_LH_X1%8_r30 x_PM_LS_LH_X1%8_5 N_8_M9_g 31.2 
R_x_PM_LS_LH_X1%8_r31 x_PM_LS_LH_X1%8_1 x_PM_LS_LH_X1%8_33 1.95 
R_x_PM_LS_LH_X1%8_r32 x_PM_LS_LH_X1%8_1 N_8_M2_g 27.69 
C_x_PM_LS_LH_X1%Z_c0 N_Z_M9_d VSS 0.104777f
R_x_PM_LS_LH_X1%Z_r1 Z N_Z_M4_d 2.375 
R_x_PM_LS_LH_X1%Z_r2 N_Z_M9_d Z 2.02214 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
