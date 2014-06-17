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
* Cellname:   LS_HL_X2.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_HL_X2 VDDL VSS A Z
*.PININFO VDDL:P VSS:G A:I Z:O 
*.EQN Z=A
M_M2 N_VDDL_M0_d N_A_M0_g N_3_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=2.05e-07
M_M3 N_Z_M1_d N_3_M1_g N_VDDL_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M0 N_VSS_M2_d N_A_M2_g N_3_M2_s N_VSS_M2_b NMOS_VTL L=5e-08 W=1.55e-07
M_M1 N_Z_M3_d N_3_M3_g N_VSS_M2_d N_VSS_M2_b NMOS_VTL L=5e-08 W=3.05e-07
C_x_PM_LS_HL_X2%VDDL_c0 x_PM_LS_HL_X2%VDDL_44 VSS 0.00295132f
C_x_PM_LS_HL_X2%VDDL_c1 x_PM_LS_HL_X2%VDDL_43 VSS 0.00298731f
C_x_PM_LS_HL_X2%VDDL_c2 x_PM_LS_HL_X2%VDDL_42 VSS 0.00295132f
C_x_PM_LS_HL_X2%VDDL_c3 VDDL VSS 0.254713f
C_x_PM_LS_HL_X2%VDDL_c4 x_PM_LS_HL_X2%VDDL_32 VSS 0.0205979f
C_x_PM_LS_HL_X2%VDDL_c5 N_VDDL_M0_d VSS 0.0272044f
C_x_PM_LS_HL_X2%VDDL_c6 x_PM_LS_HL_X2%VDDL_26 VSS 0.0170895f
C_x_PM_LS_HL_X2%VDDL_c7 x_PM_LS_HL_X2%VDDL_21 VSS 0.0120441f
C_x_PM_LS_HL_X2%VDDL_c8 x_PM_LS_HL_X2%VDDL_20 VSS 0.240864f
C_x_PM_LS_HL_X2%VDDL_c9 VDDL VSS 0.576137f
C_x_PM_LS_HL_X2%VDDL_c10 N_VDDL_M0_b VSS 0.0385027f
R_x_PM_LS_HL_X2%VDDL_r11 x_PM_LS_HL_X2%VDDL_38 x_PM_LS_HL_X2%VDDL_44 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r12 x_PM_LS_HL_X2%VDDL_38 VDDL 8.03588 
R_x_PM_LS_HL_X2%VDDL_r13 x_PM_LS_HL_X2%VDDL_34 x_PM_LS_HL_X2%VDDL_44 0.145286 
R_x_PM_LS_HL_X2%VDDL_r14 x_PM_LS_HL_X2%VDDL_33 x_PM_LS_HL_X2%VDDL_43 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r15 x_PM_LS_HL_X2%VDDL_32 x_PM_LS_HL_X2%VDDL_44 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r16 x_PM_LS_HL_X2%VDDL_32 x_PM_LS_HL_X2%VDDL_33 0.737647 
R_x_PM_LS_HL_X2%VDDL_r17 x_PM_LS_HL_X2%VDDL_28 x_PM_LS_HL_X2%VDDL_43 0.145286 
R_x_PM_LS_HL_X2%VDDL_r18 x_PM_LS_HL_X2%VDDL_28 N_VDDL_M0_d 1.39786 
R_x_PM_LS_HL_X2%VDDL_r19 x_PM_LS_HL_X2%VDDL_27 x_PM_LS_HL_X2%VDDL_42 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r20 x_PM_LS_HL_X2%VDDL_26 x_PM_LS_HL_X2%VDDL_43 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r21 x_PM_LS_HL_X2%VDDL_26 x_PM_LS_HL_X2%VDDL_27 0.625882 
R_x_PM_LS_HL_X2%VDDL_r22 x_PM_LS_HL_X2%VDDL_22 x_PM_LS_HL_X2%VDDL_42 0.145286 
R_x_PM_LS_HL_X2%VDDL_r23 x_PM_LS_HL_X2%VDDL_20 x_PM_LS_HL_X2%VDDL_42 0.0731438 
R_x_PM_LS_HL_X2%VDDL_r24 x_PM_LS_HL_X2%VDDL_20 x_PM_LS_HL_X2%VDDL_21 7.93529 
R_x_PM_LS_HL_X2%VDDL_r25 x_PM_LS_HL_X2%VDDL_12 x_PM_LS_HL_X2%VDDL_21 0.264221 
R_x_PM_LS_HL_X2%VDDL_r26 x_PM_LS_HL_X2%VDDL_34 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HL_X2%VDDL_r27 x_PM_LS_HL_X2%VDDL_22 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HL_X2%VDDL_r28 x_PM_LS_HL_X2%VDDL_12 N_VDDL_M0_b 0.827857 
C_x_PM_LS_HL_X2%VSS_c0 x_PM_LS_HL_X2%VSS_43 VSS 0.25764f
C_x_PM_LS_HL_X2%VSS_c1 VSS VSS 0.00280728f
C_x_PM_LS_HL_X2%VSS_c2 x_PM_LS_HL_X2%VSS_40 VSS 0.00292673f
C_x_PM_LS_HL_X2%VSS_c3 N_VSS_M2_b VSS 0.0418008f
C_x_PM_LS_HL_X2%VSS_c4 x_PM_LS_HL_X2%VSS_32 VSS 0.030447f
C_x_PM_LS_HL_X2%VSS_c5 N_VSS_M2_d VSS 0.029092f
C_x_PM_LS_HL_X2%VSS_c6 x_PM_LS_HL_X2%VSS_26 VSS 0.0276733f
C_x_PM_LS_HL_X2%VSS_c7 VSS VSS 0.549612f
C_x_PM_LS_HL_X2%VSS_c8 x_PM_LS_HL_X2%VSS_18 VSS 0.011992f
C_x_PM_LS_HL_X2%VSS_c9 x_PM_LS_HL_X2%VSS_17 VSS 0.0120195f
C_x_PM_LS_HL_X2%VSS_c10 x_PM_LS_HL_X2%VSS_16 VSS 0.240864f
C_x_PM_LS_HL_X2%VSS_c11 x_PM_LS_HL_X2%VSS_12 VSS 0.0110902f
R_x_PM_LS_HL_X2%VSS_r12 x_PM_LS_HL_X2%VSS_34 x_PM_LS_HL_X2%VSS_43 0.145286 
R_x_PM_LS_HL_X2%VSS_r13 x_PM_LS_HL_X2%VSS_34 N_VSS_M2_b 0.502143 
R_x_PM_LS_HL_X2%VSS_r14 x_PM_LS_HL_X2%VSS_33 VSS 0.0731438 
R_x_PM_LS_HL_X2%VSS_r15 x_PM_LS_HL_X2%VSS_32 x_PM_LS_HL_X2%VSS_43 0.0731438 
R_x_PM_LS_HL_X2%VSS_r16 x_PM_LS_HL_X2%VSS_32 x_PM_LS_HL_X2%VSS_33 0.737647 
R_x_PM_LS_HL_X2%VSS_r17 x_PM_LS_HL_X2%VSS_28 VSS 0.145286 
R_x_PM_LS_HL_X2%VSS_r18 x_PM_LS_HL_X2%VSS_28 N_VSS_M2_d 0.366429 
R_x_PM_LS_HL_X2%VSS_r19 x_PM_LS_HL_X2%VSS_27 x_PM_LS_HL_X2%VSS_40 0.0731438 
R_x_PM_LS_HL_X2%VSS_r20 x_PM_LS_HL_X2%VSS_26 VSS 0.0731438 
R_x_PM_LS_HL_X2%VSS_r21 x_PM_LS_HL_X2%VSS_26 x_PM_LS_HL_X2%VSS_27 0.625882 
R_x_PM_LS_HL_X2%VSS_r22 x_PM_LS_HL_X2%VSS_22 x_PM_LS_HL_X2%VSS_40 0.145286 
R_x_PM_LS_HL_X2%VSS_r23 x_PM_LS_HL_X2%VSS_22 N_VSS_M2_b 0.502143 
R_x_PM_LS_HL_X2%VSS_r24 x_PM_LS_HL_X2%VSS_18 VSS 17.7706 
R_x_PM_LS_HL_X2%VSS_r25 x_PM_LS_HL_X2%VSS_16 x_PM_LS_HL_X2%VSS_40 0.0731438 
R_x_PM_LS_HL_X2%VSS_r26 x_PM_LS_HL_X2%VSS_16 x_PM_LS_HL_X2%VSS_17 7.93529 
R_x_PM_LS_HL_X2%VSS_r27 x_PM_LS_HL_X2%VSS_12 x_PM_LS_HL_X2%VSS_18 0.264221 
R_x_PM_LS_HL_X2%VSS_r28 x_PM_LS_HL_X2%VSS_8 x_PM_LS_HL_X2%VSS_17 0.264221 
R_x_PM_LS_HL_X2%VSS_r29 x_PM_LS_HL_X2%VSS_8 N_VSS_M2_b 0.5016 
C_x_PM_LS_HL_X2%3_c0 x_PM_LS_HL_X2%3_30 VSS 0.0123398f
C_x_PM_LS_HL_X2%3_c1 x_PM_LS_HL_X2%3_26 VSS 0.101396f
C_x_PM_LS_HL_X2%3_c2 x_PM_LS_HL_X2%3_22 VSS 0.00528501f
C_x_PM_LS_HL_X2%3_c3 x_PM_LS_HL_X2%3_21 VSS 0.0320142f
C_x_PM_LS_HL_X2%3_c4 x_PM_LS_HL_X2%3_20 VSS 0.0136631f
C_x_PM_LS_HL_X2%3_c5 x_PM_LS_HL_X2%3_19 VSS 0.050435f
C_x_PM_LS_HL_X2%3_c6 N_3_M0_s VSS 0.0150134f
C_x_PM_LS_HL_X2%3_c7 N_3_M2_s VSS 0.0282405f
C_x_PM_LS_HL_X2%3_c8 N_3_M1_g VSS 0.0537765f
C_x_PM_LS_HL_X2%3_c9 N_3_M3_g VSS 0.0541645f
R_x_PM_LS_HL_X2%3_r10 x_PM_LS_HL_X2%3_28 x_PM_LS_HL_X2%3_30 4.42 
R_x_PM_LS_HL_X2%3_r11 x_PM_LS_HL_X2%3_26 x_PM_LS_HL_X2%3_28 25.0012 
R_x_PM_LS_HL_X2%3_r12 x_PM_LS_HL_X2%3_24 x_PM_LS_HL_X2%3_26 0.963571 
R_x_PM_LS_HL_X2%3_r13 x_PM_LS_HL_X2%3_23 x_PM_LS_HL_X2%3_26 1.28929 
R_x_PM_LS_HL_X2%3_r14 x_PM_LS_HL_X2%3_21 x_PM_LS_HL_X2%3_24 0.212317 
R_x_PM_LS_HL_X2%3_r15 x_PM_LS_HL_X2%3_21 x_PM_LS_HL_X2%3_22 0.895714 
R_x_PM_LS_HL_X2%3_r16 x_PM_LS_HL_X2%3_19 x_PM_LS_HL_X2%3_23 0.212317 
R_x_PM_LS_HL_X2%3_r17 x_PM_LS_HL_X2%3_19 x_PM_LS_HL_X2%3_20 0.895714 
R_x_PM_LS_HL_X2%3_r18 x_PM_LS_HL_X2%3_15 x_PM_LS_HL_X2%3_22 0.212317 
R_x_PM_LS_HL_X2%3_r19 x_PM_LS_HL_X2%3_15 N_3_M0_s 0.475 
R_x_PM_LS_HL_X2%3_r20 x_PM_LS_HL_X2%3_11 x_PM_LS_HL_X2%3_20 0.212317 
R_x_PM_LS_HL_X2%3_r21 x_PM_LS_HL_X2%3_11 N_3_M2_s 0.285 
R_x_PM_LS_HL_X2%3_r22 x_PM_LS_HL_X2%3_5 x_PM_LS_HL_X2%3_30 1.95 
R_x_PM_LS_HL_X2%3_r23 x_PM_LS_HL_X2%3_5 N_3_M1_g 40.17 
R_x_PM_LS_HL_X2%3_r24 x_PM_LS_HL_X2%3_1 x_PM_LS_HL_X2%3_30 1.95 
R_x_PM_LS_HL_X2%3_r25 x_PM_LS_HL_X2%3_1 N_3_M3_g 44.85 
C_x_PM_LS_HL_X2%A_c0 x_PM_LS_HL_X2%A_14 VSS 0.00694931f
C_x_PM_LS_HL_X2%A_c1 x_PM_LS_HL_X2%A_12 VSS 0.0495782f
C_x_PM_LS_HL_X2%A_c2 N_A_M0_g VSS 0.0641517f
C_x_PM_LS_HL_X2%A_c3 N_A_M2_g VSS 0.0442361f
R_x_PM_LS_HL_X2%A_r4 x_PM_LS_HL_X2%A_14 x_PM_LS_HL_X2%A_18 4.7687 
R_x_PM_LS_HL_X2%A_r5 x_PM_LS_HL_X2%A_14 x_PM_LS_HL_X2%A_17 4.7687 
R_x_PM_LS_HL_X2%A_r6 x_PM_LS_HL_X2%A_12 x_PM_LS_HL_X2%A_14 25.0012 
R_x_PM_LS_HL_X2%A_r7 A x_PM_LS_HL_X2%A_12 0.169643 
R_x_PM_LS_HL_X2%A_r8 x_PM_LS_HL_X2%A_18 N_A_M0_g 72.93 
R_x_PM_LS_HL_X2%A_r9 x_PM_LS_HL_X2%A_17 N_A_M2_g 40.17 
C_x_PM_LS_HL_X2%Z_c0 N_Z_M3_d VSS 0.150105f
R_x_PM_LS_HL_X2%Z_r1 Z N_Z_M1_d 1.10833 
R_x_PM_LS_HL_X2%Z_r2 N_Z_M3_d Z 1.045 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
