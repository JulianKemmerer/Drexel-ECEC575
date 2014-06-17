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
* Cellname:   LS_LH_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_LH_X2 VDD VSS A VDDL Z
*.PININFO VDD:P VDDL:P VSS:G A:I Z:O 
*.EQN Z=A
M_M5 N_VDDL_M0_d N_A_M0_g N_5_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=1.3e-07
M_M6 N_6_M1_d N_5_M1_g N_VDDL_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=1.3e-07
M_M7 N_VDD_M2_d N_8_M2_g N_7_M2_s N_VDD_M2_b PMOS_VTL L=5e-08 W=1.35e-07
M_M8 N_8_M3_d N_7_M3_g N_VDD_M2_d N_VDD_M2_b PMOS_VTL L=5e-08 W=1.35e-07
M_M9 N_Z_M4_d N_8_M4_g N_VDD_M4_s N_VDD_M2_b PMOS_VTL L=5e-08 W=2.7e-07
M_M0 N_VSS_M5_d N_A_M5_g N_5_M5_s N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M1 N_6_M6_d N_5_M6_g N_VSS_M5_d N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M2 N_VSS_M7_d N_5_M7_g N_7_M7_s N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M3 N_8_M8_d N_6_M8_g N_VSS_M7_d N_VSS_M5_b NMOS_VTL L=5e-08 W=9e-08
M_M4 N_Z_M9_d N_8_M9_g N_VSS_M9_s N_VSS_M5_b NMOS_VTL L=5e-08 W=1.8e-07
C_x_PM_LS_LH_X2%VDD_c0 x_PM_LS_LH_X2%VDD_43 VSS 0.0276945f
C_x_PM_LS_LH_X2%VDD_c1 x_PM_LS_LH_X2%VDD_40 VSS 0.00298886f
C_x_PM_LS_LH_X2%VDD_c2 x_PM_LS_LH_X2%VDD_39 VSS 0.00295509f
C_x_PM_LS_LH_X2%VDD_c3 x_PM_LS_LH_X2%VDD_38 VSS 0.0108319f
C_x_PM_LS_LH_X2%VDD_c4 x_PM_LS_LH_X2%VDD_37 VSS 0.2334f
C_x_PM_LS_LH_X2%VDD_c5 x_PM_LS_LH_X2%VDD_28 VSS 0.261469f
C_x_PM_LS_LH_X2%VDD_c6 N_VDD_M4_s VSS 0.0511018f
C_x_PM_LS_LH_X2%VDD_c7 x_PM_LS_LH_X2%VDD_20 VSS 0.0215833f
C_x_PM_LS_LH_X2%VDD_c8 N_VDD_M2_d VSS 0.034153f
C_x_PM_LS_LH_X2%VDD_c9 x_PM_LS_LH_X2%VDD_14 VSS 0.119458f
C_x_PM_LS_LH_X2%VDD_c10 x_PM_LS_LH_X2%VDD_13 VSS 0.0192462f
C_x_PM_LS_LH_X2%VDD_c11 x_PM_LS_LH_X2%VDD_9 VSS 0.667932f
R_x_PM_LS_LH_X2%VDD_r12 N_VDD_M2_b x_PM_LS_LH_X2%VDD_43 0.13879 
R_x_PM_LS_LH_X2%VDD_r13 N_VDD_M2_b x_PM_LS_LH_X2%VDD_38 0.138595 
R_x_PM_LS_LH_X2%VDD_r14 N_VDD_M2_b x_PM_LS_LH_X2%VDD_37 0.138985 
R_x_PM_LS_LH_X2%VDD_r15 N_VDD_M2_b x_PM_LS_LH_X2%VDD_28 0.13879 
R_x_PM_LS_LH_X2%VDD_r16 x_PM_LS_LH_X2%VDD_28 VDD 3.84471 
R_x_PM_LS_LH_X2%VDD_r17 x_PM_LS_LH_X2%VDD_27 x_PM_LS_LH_X2%VDD_40 0.0731438 
R_x_PM_LS_LH_X2%VDD_r18 x_PM_LS_LH_X2%VDD_43 x_PM_LS_LH_X2%VDD_27 0.659412 
R_x_PM_LS_LH_X2%VDD_r19 x_PM_LS_LH_X2%VDD_22 x_PM_LS_LH_X2%VDD_40 0.145286 
R_x_PM_LS_LH_X2%VDD_r20 x_PM_LS_LH_X2%VDD_22 N_VDD_M4_s 0.665 
R_x_PM_LS_LH_X2%VDD_r21 x_PM_LS_LH_X2%VDD_21 x_PM_LS_LH_X2%VDD_39 0.0731438 
R_x_PM_LS_LH_X2%VDD_r22 x_PM_LS_LH_X2%VDD_20 x_PM_LS_LH_X2%VDD_40 0.0731438 
R_x_PM_LS_LH_X2%VDD_r23 x_PM_LS_LH_X2%VDD_20 x_PM_LS_LH_X2%VDD_21 0.648235 
R_x_PM_LS_LH_X2%VDD_r24 x_PM_LS_LH_X2%VDD_16 x_PM_LS_LH_X2%VDD_39 0.145286 
R_x_PM_LS_LH_X2%VDD_r25 x_PM_LS_LH_X2%VDD_16 N_VDD_M2_d 0.882143 
R_x_PM_LS_LH_X2%VDD_r26 x_PM_LS_LH_X2%VDD_14 x_PM_LS_LH_X2%VDD_39 0.0731438 
R_x_PM_LS_LH_X2%VDD_r27 x_PM_LS_LH_X2%VDD_14 x_PM_LS_LH_X2%VDD_38 3.25235 
R_x_PM_LS_LH_X2%VDD_r28 x_PM_LS_LH_X2%VDD_13 N_VDD_M2_b 0.140282 
R_x_PM_LS_LH_X2%VDD_r29 x_PM_LS_LH_X2%VDD_37 x_PM_LS_LH_X2%VDD_13 7.68941 
R_x_PM_LS_LH_X2%VDD_r30 x_PM_LS_LH_X2%VDD_9 VDD 10.4276 
C_x_PM_LS_LH_X2%VSS_c0 x_PM_LS_LH_X2%VSS_52 VSS 0.0256329f
C_x_PM_LS_LH_X2%VSS_c1 x_PM_LS_LH_X2%VSS_49 VSS 0.0029415f
C_x_PM_LS_LH_X2%VSS_c2 x_PM_LS_LH_X2%VSS_48 VSS 0.00293947f
C_x_PM_LS_LH_X2%VSS_c3 x_PM_LS_LH_X2%VSS_47 VSS 0.00564012f
C_x_PM_LS_LH_X2%VSS_c4 x_PM_LS_LH_X2%VSS_45 VSS 0.2334f
C_x_PM_LS_LH_X2%VSS_c5 N_VSS_M5_b VSS 0.261469f
C_x_PM_LS_LH_X2%VSS_c6 N_VSS_M9_s VSS 0.0307984f
C_x_PM_LS_LH_X2%VSS_c7 x_PM_LS_LH_X2%VSS_29 VSS 0.0279486f
C_x_PM_LS_LH_X2%VSS_c8 N_VSS_M7_d VSS 0.0390406f
C_x_PM_LS_LH_X2%VSS_c9 x_PM_LS_LH_X2%VSS_21 VSS 0.0959234f
C_x_PM_LS_LH_X2%VSS_c10 N_VSS_M5_d VSS 0.0502719f
C_x_PM_LS_LH_X2%VSS_c11 x_PM_LS_LH_X2%VSS_16 VSS 0.0106114f
C_x_PM_LS_LH_X2%VSS_c12 x_PM_LS_LH_X2%VSS_15 VSS 0.0577389f
C_x_PM_LS_LH_X2%VSS_c13 x_PM_LS_LH_X2%VSS_12 VSS 0.667932f
C_x_PM_LS_LH_X2%VSS_c14 x_PM_LS_LH_X2%VSS_11 VSS 0.0192462f
R_x_PM_LS_LH_X2%VSS_r15 N_VSS_M5_b x_PM_LS_LH_X2%VSS_52 0.13879 
R_x_PM_LS_LH_X2%VSS_r16 N_VSS_M5_b x_PM_LS_LH_X2%VSS_45 0.138985 
R_x_PM_LS_LH_X2%VSS_r17 x_PM_LS_LH_X2%VSS_36 x_PM_LS_LH_X2%VSS_49 0.0731438 
R_x_PM_LS_LH_X2%VSS_r18 x_PM_LS_LH_X2%VSS_52 x_PM_LS_LH_X2%VSS_36 0.659412 
R_x_PM_LS_LH_X2%VSS_r19 x_PM_LS_LH_X2%VSS_31 x_PM_LS_LH_X2%VSS_49 0.145286 
R_x_PM_LS_LH_X2%VSS_r20 x_PM_LS_LH_X2%VSS_31 N_VSS_M9_s 0.692143 
R_x_PM_LS_LH_X2%VSS_r21 x_PM_LS_LH_X2%VSS_30 x_PM_LS_LH_X2%VSS_48 0.0731438 
R_x_PM_LS_LH_X2%VSS_r22 x_PM_LS_LH_X2%VSS_29 x_PM_LS_LH_X2%VSS_49 0.0731438 
R_x_PM_LS_LH_X2%VSS_r23 x_PM_LS_LH_X2%VSS_29 x_PM_LS_LH_X2%VSS_30 0.637059 
R_x_PM_LS_LH_X2%VSS_r24 x_PM_LS_LH_X2%VSS_25 x_PM_LS_LH_X2%VSS_48 0.145286 
R_x_PM_LS_LH_X2%VSS_r25 x_PM_LS_LH_X2%VSS_25 N_VSS_M7_d 0.665 
R_x_PM_LS_LH_X2%VSS_r26 x_PM_LS_LH_X2%VSS_22 x_PM_LS_LH_X2%VSS_47 0.132285 
R_x_PM_LS_LH_X2%VSS_r27 x_PM_LS_LH_X2%VSS_22 VSS 0.771176 
R_x_PM_LS_LH_X2%VSS_r28 x_PM_LS_LH_X2%VSS_21 x_PM_LS_LH_X2%VSS_48 0.0731438 
R_x_PM_LS_LH_X2%VSS_r29 x_PM_LS_LH_X2%VSS_21 VSS 0.827059 
R_x_PM_LS_LH_X2%VSS_r30 x_PM_LS_LH_X2%VSS_17 x_PM_LS_LH_X2%VSS_47 0.0680382 
R_x_PM_LS_LH_X2%VSS_r31 x_PM_LS_LH_X2%VSS_17 N_VSS_M5_d 0.344815 
R_x_PM_LS_LH_X2%VSS_r32 N_VSS_M5_b x_PM_LS_LH_X2%VSS_16 0.138595 
R_x_PM_LS_LH_X2%VSS_r33 x_PM_LS_LH_X2%VSS_15 x_PM_LS_LH_X2%VSS_47 0.132285 
R_x_PM_LS_LH_X2%VSS_r34 x_PM_LS_LH_X2%VSS_15 x_PM_LS_LH_X2%VSS_16 1.36353 
R_x_PM_LS_LH_X2%VSS_r35 x_PM_LS_LH_X2%VSS_12 VSS 10.4276 
R_x_PM_LS_LH_X2%VSS_r36 x_PM_LS_LH_X2%VSS_11 N_VSS_M5_b 0.140282 
R_x_PM_LS_LH_X2%VSS_r37 x_PM_LS_LH_X2%VSS_45 x_PM_LS_LH_X2%VSS_11 7.68941 
C_x_PM_LS_LH_X2%A_c0 A VSS 0.0304102f
C_x_PM_LS_LH_X2%A_c1 x_PM_LS_LH_X2%A_10 VSS 0.00417485f
C_x_PM_LS_LH_X2%A_c2 x_PM_LS_LH_X2%A_9 VSS 0.0301473f
C_x_PM_LS_LH_X2%A_c3 N_A_M0_g VSS 0.0354645f
C_x_PM_LS_LH_X2%A_c4 N_A_M5_g VSS 0.0428618f
R_x_PM_LS_LH_X2%A_r5 x_PM_LS_LH_X2%A_14 x_PM_LS_LH_X2%A_16 25.0012 
R_x_PM_LS_LH_X2%A_r6 A x_PM_LS_LH_X2%A_14 0.00904762 
R_x_PM_LS_LH_X2%A_r7 x_PM_LS_LH_X2%A_9 x_PM_LS_LH_X2%A_16 22.62 
R_x_PM_LS_LH_X2%A_r8 x_PM_LS_LH_X2%A_9 x_PM_LS_LH_X2%A_10 0.043368 
R_x_PM_LS_LH_X2%A_r9 x_PM_LS_LH_X2%A_5 x_PM_LS_LH_X2%A_10 4.56151 
R_x_PM_LS_LH_X2%A_r10 x_PM_LS_LH_X2%A_5 N_A_M0_g 28.86 
R_x_PM_LS_LH_X2%A_r11 x_PM_LS_LH_X2%A_1 x_PM_LS_LH_X2%A_10 4.56151 
R_x_PM_LS_LH_X2%A_r12 x_PM_LS_LH_X2%A_1 N_A_M5_g 37.44 
C_x_PM_LS_LH_X2%VDDL_c0 VDDL VSS 0.0711981f
C_x_PM_LS_LH_X2%VDDL_c1 x_PM_LS_LH_X2%VDDL_6 VSS 0.0364982f
R_x_PM_LS_LH_X2%VDDL_r2 N_VDDL_M0_b VDDL 0.13775 
R_x_PM_LS_LH_X2%VDDL_r3 x_PM_LS_LH_X2%VDDL_6 N_VDDL_M0_b 0.095 
R_x_PM_LS_LH_X2%VDDL_r4 N_VDDL_M0_d x_PM_LS_LH_X2%VDDL_6 0.459879 
C_x_PM_LS_LH_X2%5_c0 x_PM_LS_LH_X2%5_31 VSS 0.00215795f
C_x_PM_LS_LH_X2%5_c1 x_PM_LS_LH_X2%5_28 VSS 0.0846961f
C_x_PM_LS_LH_X2%5_c2 N_5_M0_s VSS 0.0566569f
C_x_PM_LS_LH_X2%5_c3 N_5_M5_s VSS 0.0364537f
C_x_PM_LS_LH_X2%5_c4 x_PM_LS_LH_X2%5_15 VSS 0.0761368f
C_x_PM_LS_LH_X2%5_c5 x_PM_LS_LH_X2%5_14 VSS 0.00296759f
C_x_PM_LS_LH_X2%5_c6 N_5_M7_g VSS 0.0259996f
C_x_PM_LS_LH_X2%5_c7 N_5_M1_g VSS 0.0436645f
C_x_PM_LS_LH_X2%5_c8 N_5_M6_g VSS 0.0225716f
R_x_PM_LS_LH_X2%5_r9 x_PM_LS_LH_X2%5_28 x_PM_LS_LH_X2%5_32 25.0012 
R_x_PM_LS_LH_X2%5_r10 x_PM_LS_LH_X2%5_26 x_PM_LS_LH_X2%5_31 0.0418175 
R_x_PM_LS_LH_X2%5_r11 x_PM_LS_LH_X2%5_26 x_PM_LS_LH_X2%5_28 2.59214 
R_x_PM_LS_LH_X2%5_r12 x_PM_LS_LH_X2%5_22 x_PM_LS_LH_X2%5_31 0.160909 
R_x_PM_LS_LH_X2%5_r13 x_PM_LS_LH_X2%5_22 N_5_M0_s 1.64214 
R_x_PM_LS_LH_X2%5_r14 x_PM_LS_LH_X2%5_18 x_PM_LS_LH_X2%5_31 0.160909 
R_x_PM_LS_LH_X2%5_r15 x_PM_LS_LH_X2%5_18 N_5_M5_s 0.610714 
R_x_PM_LS_LH_X2%5_r16 x_PM_LS_LH_X2%5_15 x_PM_LS_LH_X2%5_32 40.3 
R_x_PM_LS_LH_X2%5_r17 x_PM_LS_LH_X2%5_13 x_PM_LS_LH_X2%5_32 18.98 
R_x_PM_LS_LH_X2%5_r18 x_PM_LS_LH_X2%5_13 x_PM_LS_LH_X2%5_14 0.043368 
R_x_PM_LS_LH_X2%5_r19 x_PM_LS_LH_X2%5_9 x_PM_LS_LH_X2%5_15 4.58872 
R_x_PM_LS_LH_X2%5_r20 x_PM_LS_LH_X2%5_9 N_5_M7_g 17.94 
R_x_PM_LS_LH_X2%5_r21 x_PM_LS_LH_X2%5_5 x_PM_LS_LH_X2%5_14 4.56151 
R_x_PM_LS_LH_X2%5_r22 x_PM_LS_LH_X2%5_5 N_5_M1_g 48.36 
R_x_PM_LS_LH_X2%5_r23 x_PM_LS_LH_X2%5_1 x_PM_LS_LH_X2%5_14 4.56151 
R_x_PM_LS_LH_X2%5_r24 x_PM_LS_LH_X2%5_1 N_5_M6_g 17.94 
C_x_PM_LS_LH_X2%6_c0 x_PM_LS_LH_X2%6_25 VSS 0.00304754f
C_x_PM_LS_LH_X2%6_c1 x_PM_LS_LH_X2%6_22 VSS 0.0492466f
C_x_PM_LS_LH_X2%6_c2 x_PM_LS_LH_X2%6_19 VSS 0.0046153f
C_x_PM_LS_LH_X2%6_c3 x_PM_LS_LH_X2%6_17 VSS 0.0535124f
C_x_PM_LS_LH_X2%6_c4 x_PM_LS_LH_X2%6_12 VSS 0.0442445f
C_x_PM_LS_LH_X2%6_c5 x_PM_LS_LH_X2%6_8 VSS 0.107629f
C_x_PM_LS_LH_X2%6_c6 x_PM_LS_LH_X2%6_5 VSS 0.0404062f
C_x_PM_LS_LH_X2%6_c7 N_6_M8_g VSS 0.049249f
R_x_PM_LS_LH_X2%6_r8 x_PM_LS_LH_X2%6_22 x_PM_LS_LH_X2%6_26 25.0012 
R_x_PM_LS_LH_X2%6_r9 x_PM_LS_LH_X2%6_20 x_PM_LS_LH_X2%6_25 0.0418175 
R_x_PM_LS_LH_X2%6_r10 x_PM_LS_LH_X2%6_20 x_PM_LS_LH_X2%6_22 0.963571 
R_x_PM_LS_LH_X2%6_r11 x_PM_LS_LH_X2%6_18 x_PM_LS_LH_X2%6_25 0.160909 
R_x_PM_LS_LH_X2%6_r12 x_PM_LS_LH_X2%6_18 x_PM_LS_LH_X2%6_19 0.434286 
R_x_PM_LS_LH_X2%6_r13 x_PM_LS_LH_X2%6_17 x_PM_LS_LH_X2%6_25 0.160909 
R_x_PM_LS_LH_X2%6_r14 x_PM_LS_LH_X2%6_16 x_PM_LS_LH_X2%6_17 1.41143 
R_x_PM_LS_LH_X2%6_r15 x_PM_LS_LH_X2%6_12 x_PM_LS_LH_X2%6_19 0.212317 
R_x_PM_LS_LH_X2%6_r16 x_PM_LS_LH_X2%6_12 N_6_M1_d 1.34357 
R_x_PM_LS_LH_X2%6_r17 x_PM_LS_LH_X2%6_8 x_PM_LS_LH_X2%6_16 0.212317 
R_x_PM_LS_LH_X2%6_r18 x_PM_LS_LH_X2%6_8 N_6_M6_d 1.34357 
R_x_PM_LS_LH_X2%6_r19 x_PM_LS_LH_X2%6_5 x_PM_LS_LH_X2%6_26 20.02 
R_x_PM_LS_LH_X2%6_r20 x_PM_LS_LH_X2%6_1 x_PM_LS_LH_X2%6_5 4.58872 
R_x_PM_LS_LH_X2%6_r21 x_PM_LS_LH_X2%6_1 N_6_M8_g 46.02 
C_x_PM_LS_LH_X2%7_c0 x_PM_LS_LH_X2%7_25 VSS 0.0159951f
C_x_PM_LS_LH_X2%7_c1 x_PM_LS_LH_X2%7_20 VSS 0.110561f
C_x_PM_LS_LH_X2%7_c2 x_PM_LS_LH_X2%7_18 VSS 0.0167719f
C_x_PM_LS_LH_X2%7_c3 x_PM_LS_LH_X2%7_17 VSS 0.0264715f
C_x_PM_LS_LH_X2%7_c4 x_PM_LS_LH_X2%7_16 VSS 0.0265593f
C_x_PM_LS_LH_X2%7_c5 x_PM_LS_LH_X2%7_15 VSS 0.0480174f
C_x_PM_LS_LH_X2%7_c6 N_7_M2_s VSS 0.0609392f
C_x_PM_LS_LH_X2%7_c7 N_7_M7_s VSS 0.0528153f
C_x_PM_LS_LH_X2%7_c8 N_7_M3_g VSS 0.0616322f
R_x_PM_LS_LH_X2%7_r9 x_PM_LS_LH_X2%7_22 x_PM_LS_LH_X2%7_25 4.42 
R_x_PM_LS_LH_X2%7_r10 x_PM_LS_LH_X2%7_21 x_PM_LS_LH_X2%7_22 25.0012 
R_x_PM_LS_LH_X2%7_r11 x_PM_LS_LH_X2%7_20 x_PM_LS_LH_X2%7_21 0.0141545 
R_x_PM_LS_LH_X2%7_r12 x_PM_LS_LH_X2%7_19 x_PM_LS_LH_X2%7_20 1.52 
R_x_PM_LS_LH_X2%7_r13 x_PM_LS_LH_X2%7_17 x_PM_LS_LH_X2%7_21 0.198162 
R_x_PM_LS_LH_X2%7_r14 x_PM_LS_LH_X2%7_17 x_PM_LS_LH_X2%7_18 0.922857 
R_x_PM_LS_LH_X2%7_r15 x_PM_LS_LH_X2%7_15 x_PM_LS_LH_X2%7_19 0.212317 
R_x_PM_LS_LH_X2%7_r16 x_PM_LS_LH_X2%7_15 x_PM_LS_LH_X2%7_16 0.922857 
R_x_PM_LS_LH_X2%7_r17 x_PM_LS_LH_X2%7_11 x_PM_LS_LH_X2%7_18 0.212317 
R_x_PM_LS_LH_X2%7_r18 x_PM_LS_LH_X2%7_11 N_7_M2_s 1.94071 
R_x_PM_LS_LH_X2%7_r19 x_PM_LS_LH_X2%7_7 x_PM_LS_LH_X2%7_16 0.212317 
R_x_PM_LS_LH_X2%7_r20 x_PM_LS_LH_X2%7_7 N_7_M7_s 0.665 
R_x_PM_LS_LH_X2%7_r21 x_PM_LS_LH_X2%7_1 x_PM_LS_LH_X2%7_25 1.95 
R_x_PM_LS_LH_X2%7_r22 x_PM_LS_LH_X2%7_1 N_7_M3_g 60.45 
C_x_PM_LS_LH_X2%8_c0 x_PM_LS_LH_X2%8_39 VSS 0.0110788f
C_x_PM_LS_LH_X2%8_c1 x_PM_LS_LH_X2%8_32 VSS 0.00626338f
C_x_PM_LS_LH_X2%8_c2 x_PM_LS_LH_X2%8_31 VSS 0.0290577f
C_x_PM_LS_LH_X2%8_c3 x_PM_LS_LH_X2%8_30 VSS 0.0413946f
C_x_PM_LS_LH_X2%8_c4 N_8_M3_d VSS 0.0432583f
C_x_PM_LS_LH_X2%8_c5 x_PM_LS_LH_X2%8_23 VSS 0.0319117f
C_x_PM_LS_LH_X2%8_c6 N_8_M8_d VSS 0.0761636f
C_x_PM_LS_LH_X2%8_c7 x_PM_LS_LH_X2%8_17 VSS 0.0810228f
C_x_PM_LS_LH_X2%8_c8 x_PM_LS_LH_X2%8_16 VSS 0.015423f
C_x_PM_LS_LH_X2%8_c9 N_8_M4_g VSS 0.0813274f
C_x_PM_LS_LH_X2%8_c10 N_8_M9_g VSS 0.0473961f
C_x_PM_LS_LH_X2%8_c11 N_8_M2_g VSS 0.0359467f
R_x_PM_LS_LH_X2%8_r12 x_PM_LS_LH_X2%8_37 x_PM_LS_LH_X2%8_39 4.42 
R_x_PM_LS_LH_X2%8_r13 x_PM_LS_LH_X2%8_30 x_PM_LS_LH_X2%8_31 0.0272847 
R_x_PM_LS_LH_X2%8_r14 x_PM_LS_LH_X2%8_28 x_PM_LS_LH_X2%8_30 0.445805 
R_x_PM_LS_LH_X2%8_r15 x_PM_LS_LH_X2%8_28 x_PM_LS_LH_X2%8_37 25.0012 
R_x_PM_LS_LH_X2%8_r16 x_PM_LS_LH_X2%8_24 x_PM_LS_LH_X2%8_32 0.266978 
R_x_PM_LS_LH_X2%8_r17 x_PM_LS_LH_X2%8_24 N_8_M3_d 0.773571 
R_x_PM_LS_LH_X2%8_r18 x_PM_LS_LH_X2%8_23 x_PM_LS_LH_X2%8_32 0.266978 
R_x_PM_LS_LH_X2%8_r19 x_PM_LS_LH_X2%8_22 x_PM_LS_LH_X2%8_31 0.266978 
R_x_PM_LS_LH_X2%8_r20 x_PM_LS_LH_X2%8_22 x_PM_LS_LH_X2%8_23 1.14 
R_x_PM_LS_LH_X2%8_r21 x_PM_LS_LH_X2%8_18 x_PM_LS_LH_X2%8_31 0.266978 
R_x_PM_LS_LH_X2%8_r22 x_PM_LS_LH_X2%8_18 N_8_M8_d 1.47929 
R_x_PM_LS_LH_X2%8_r23 x_PM_LS_LH_X2%8_17 x_PM_LS_LH_X2%8_32 0.0272847 
R_x_PM_LS_LH_X2%8_r24 x_PM_LS_LH_X2%8_33 x_PM_LS_LH_X2%8_16 3.9 
R_x_PM_LS_LH_X2%8_r25 x_PM_LS_LH_X2%8_15 x_PM_LS_LH_X2%8_17 0.53025 
R_x_PM_LS_LH_X2%8_r26 x_PM_LS_LH_X2%8_15 x_PM_LS_LH_X2%8_16 25.0012 
R_x_PM_LS_LH_X2%8_r27 x_PM_LS_LH_X2%8_9 x_PM_LS_LH_X2%8_39 1.95 
R_x_PM_LS_LH_X2%8_r28 x_PM_LS_LH_X2%8_9 N_8_M4_g 77.22 
R_x_PM_LS_LH_X2%8_r29 x_PM_LS_LH_X2%8_5 x_PM_LS_LH_X2%8_39 1.95 
R_x_PM_LS_LH_X2%8_r30 x_PM_LS_LH_X2%8_5 N_8_M9_g 40.56 
R_x_PM_LS_LH_X2%8_r31 x_PM_LS_LH_X2%8_1 x_PM_LS_LH_X2%8_33 1.95 
R_x_PM_LS_LH_X2%8_r32 x_PM_LS_LH_X2%8_1 N_8_M2_g 27.69 
C_x_PM_LS_LH_X2%Z_c0 N_Z_M9_d VSS 0.120579f
R_x_PM_LS_LH_X2%Z_r1 Z N_Z_M4_d 2.04929 
R_x_PM_LS_LH_X2%Z_r2 N_Z_M9_d Z 2.64643 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
