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
* Cellname:   LS_HL_X4.                                                        *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_HL_X4 VDDL VSS A Z
*.PININFO VDDL:P VSS:G A:I Z:O 
*.EQN Z=A
M_M3 N_VDDL_M0_d N_A_M0_g N_3_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=2.3e-07
M_M4 N_Z_M1_d N_3_M1_g N_VDDL_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M5 N_VDDL_M2_d N_3_M2_g N_Z_M1_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M0 N_VSS_M3_d N_A_M3_g N_3_M3_s N_VSS_M3_b NMOS_VTL L=5e-08 W=1.7e-07
M_M1 N_Z_M4_d N_3_M4_g N_VSS_M3_d N_VSS_M3_b NMOS_VTL L=5e-08 W=3.05e-07
M_M2 N_VSS_M5_d N_3_M5_g N_Z_M4_d N_VSS_M3_b NMOS_VTL L=5e-08 W=3.05e-07
C_x_PM_LS_HL_X4%VDDL_c0 x_PM_LS_HL_X4%VDDL_48 VSS 0.00303463f
C_x_PM_LS_HL_X4%VDDL_c1 x_PM_LS_HL_X4%VDDL_47 VSS 0.00295132f
C_x_PM_LS_HL_X4%VDDL_c2 VDDL VSS 0.254713f
C_x_PM_LS_HL_X4%VDDL_c3 x_PM_LS_HL_X4%VDDL_43 VSS 0.0125362f
C_x_PM_LS_HL_X4%VDDL_c4 N_VDDL_M2_d VSS 0.034157f
C_x_PM_LS_HL_X4%VDDL_c5 x_PM_LS_HL_X4%VDDL_33 VSS 0.0193653f
C_x_PM_LS_HL_X4%VDDL_c6 N_VDDL_M0_d VSS 0.0649607f
C_x_PM_LS_HL_X4%VDDL_c7 x_PM_LS_HL_X4%VDDL_27 VSS 0.0176206f
C_x_PM_LS_HL_X4%VDDL_c8 x_PM_LS_HL_X4%VDDL_22 VSS 0.0120441f
C_x_PM_LS_HL_X4%VDDL_c9 x_PM_LS_HL_X4%VDDL_21 VSS 0.240864f
C_x_PM_LS_HL_X4%VDDL_c10 VDDL VSS 0.588991f
C_x_PM_LS_HL_X4%VDDL_c11 N_VDDL_M0_b VSS 0.0372651f
R_x_PM_LS_HL_X4%VDDL_r12 x_PM_LS_HL_X4%VDDL_49 x_PM_LS_HL_X4%VDDL_50 0.469412 
R_x_PM_LS_HL_X4%VDDL_r13 x_PM_LS_HL_X4%VDDL_43 x_PM_LS_HL_X4%VDDL_50 0.0782353 
R_x_PM_LS_HL_X4%VDDL_r14 x_PM_LS_HL_X4%VDDL_43 VDDL 8.03588 
R_x_PM_LS_HL_X4%VDDL_r15 x_PM_LS_HL_X4%VDDL_39 x_PM_LS_HL_X4%VDDL_50 0.095 
R_x_PM_LS_HL_X4%VDDL_r16 x_PM_LS_HL_X4%VDDL_35 x_PM_LS_HL_X4%VDDL_49 0.095 
R_x_PM_LS_HL_X4%VDDL_r17 x_PM_LS_HL_X4%VDDL_35 N_VDDL_M2_d 1.58786 
R_x_PM_LS_HL_X4%VDDL_r18 x_PM_LS_HL_X4%VDDL_34 x_PM_LS_HL_X4%VDDL_48 0.0731438 
R_x_PM_LS_HL_X4%VDDL_r19 x_PM_LS_HL_X4%VDDL_33 x_PM_LS_HL_X4%VDDL_49 0.0782353 
R_x_PM_LS_HL_X4%VDDL_r20 x_PM_LS_HL_X4%VDDL_33 x_PM_LS_HL_X4%VDDL_34 0.692941 
R_x_PM_LS_HL_X4%VDDL_r21 x_PM_LS_HL_X4%VDDL_29 x_PM_LS_HL_X4%VDDL_48 0.145286 
R_x_PM_LS_HL_X4%VDDL_r22 x_PM_LS_HL_X4%VDDL_29 N_VDDL_M0_d 1.58786 
R_x_PM_LS_HL_X4%VDDL_r23 x_PM_LS_HL_X4%VDDL_28 x_PM_LS_HL_X4%VDDL_47 0.0731438 
R_x_PM_LS_HL_X4%VDDL_r24 x_PM_LS_HL_X4%VDDL_27 x_PM_LS_HL_X4%VDDL_48 0.0731438 
R_x_PM_LS_HL_X4%VDDL_r25 x_PM_LS_HL_X4%VDDL_27 x_PM_LS_HL_X4%VDDL_28 0.625882 
R_x_PM_LS_HL_X4%VDDL_r26 x_PM_LS_HL_X4%VDDL_23 x_PM_LS_HL_X4%VDDL_47 0.145286 
R_x_PM_LS_HL_X4%VDDL_r27 x_PM_LS_HL_X4%VDDL_21 x_PM_LS_HL_X4%VDDL_47 0.0731438 
R_x_PM_LS_HL_X4%VDDL_r28 x_PM_LS_HL_X4%VDDL_21 x_PM_LS_HL_X4%VDDL_22 7.93529 
R_x_PM_LS_HL_X4%VDDL_r29 x_PM_LS_HL_X4%VDDL_13 x_PM_LS_HL_X4%VDDL_22 0.264221 
R_x_PM_LS_HL_X4%VDDL_r30 x_PM_LS_HL_X4%VDDL_39 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HL_X4%VDDL_r31 x_PM_LS_HL_X4%VDDL_23 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HL_X4%VDDL_r32 x_PM_LS_HL_X4%VDDL_13 N_VDDL_M0_b 0.827857 
C_x_PM_LS_HL_X4%VSS_c0 x_PM_LS_HL_X4%VSS_48 VSS 0.00280728f
C_x_PM_LS_HL_X4%VSS_c1 x_PM_LS_HL_X4%VSS_47 VSS 0.00292673f
C_x_PM_LS_HL_X4%VSS_c2 VSS VSS 0.254713f
C_x_PM_LS_HL_X4%VSS_c3 x_PM_LS_HL_X4%VSS_43 VSS 0.0123632f
C_x_PM_LS_HL_X4%VSS_c4 N_VSS_M5_d VSS 0.0323724f
C_x_PM_LS_HL_X4%VSS_c5 x_PM_LS_HL_X4%VSS_33 VSS 0.0368367f
C_x_PM_LS_HL_X4%VSS_c6 x_PM_LS_HL_X4%VSS_27 VSS 0.0255588f
C_x_PM_LS_HL_X4%VSS_c7 N_VSS_M3_b VSS 0.0349416f
C_x_PM_LS_HL_X4%VSS_c8 VSS VSS 0.585548f
C_x_PM_LS_HL_X4%VSS_c9 x_PM_LS_HL_X4%VSS_18 VSS 0.0120195f
C_x_PM_LS_HL_X4%VSS_c10 x_PM_LS_HL_X4%VSS_17 VSS 0.240864f
C_x_PM_LS_HL_X4%VSS_c11 N_VSS_M3_d VSS 0.0291703f
R_x_PM_LS_HL_X4%VSS_r12 x_PM_LS_HL_X4%VSS_49 x_PM_LS_HL_X4%VSS_50 0.469412 
R_x_PM_LS_HL_X4%VSS_r13 x_PM_LS_HL_X4%VSS_43 x_PM_LS_HL_X4%VSS_50 0.0782353 
R_x_PM_LS_HL_X4%VSS_r14 x_PM_LS_HL_X4%VSS_43 VSS 8.00235 
R_x_PM_LS_HL_X4%VSS_r15 x_PM_LS_HL_X4%VSS_39 x_PM_LS_HL_X4%VSS_50 0.095 
R_x_PM_LS_HL_X4%VSS_r16 x_PM_LS_HL_X4%VSS_35 x_PM_LS_HL_X4%VSS_49 0.095 
R_x_PM_LS_HL_X4%VSS_r17 x_PM_LS_HL_X4%VSS_35 N_VSS_M5_d 1.12643 
R_x_PM_LS_HL_X4%VSS_r18 x_PM_LS_HL_X4%VSS_34 x_PM_LS_HL_X4%VSS_48 0.0731438 
R_x_PM_LS_HL_X4%VSS_r19 x_PM_LS_HL_X4%VSS_33 x_PM_LS_HL_X4%VSS_49 0.0782353 
R_x_PM_LS_HL_X4%VSS_r20 x_PM_LS_HL_X4%VSS_33 x_PM_LS_HL_X4%VSS_34 0.692941 
R_x_PM_LS_HL_X4%VSS_r21 x_PM_LS_HL_X4%VSS_29 x_PM_LS_HL_X4%VSS_48 0.145286 
R_x_PM_LS_HL_X4%VSS_r22 x_PM_LS_HL_X4%VSS_28 x_PM_LS_HL_X4%VSS_47 0.0731438 
R_x_PM_LS_HL_X4%VSS_r23 x_PM_LS_HL_X4%VSS_27 x_PM_LS_HL_X4%VSS_48 0.0731438 
R_x_PM_LS_HL_X4%VSS_r24 x_PM_LS_HL_X4%VSS_27 x_PM_LS_HL_X4%VSS_28 0.625882 
R_x_PM_LS_HL_X4%VSS_r25 x_PM_LS_HL_X4%VSS_39 N_VSS_M3_b 0.502143 
R_x_PM_LS_HL_X4%VSS_r26 x_PM_LS_HL_X4%VSS_23 x_PM_LS_HL_X4%VSS_47 0.145286 
R_x_PM_LS_HL_X4%VSS_r27 x_PM_LS_HL_X4%VSS_23 N_VSS_M3_b 0.502143 
R_x_PM_LS_HL_X4%VSS_r28 x_PM_LS_HL_X4%VSS_17 x_PM_LS_HL_X4%VSS_47 0.0731438 
R_x_PM_LS_HL_X4%VSS_r29 x_PM_LS_HL_X4%VSS_17 x_PM_LS_HL_X4%VSS_18 7.93529 
R_x_PM_LS_HL_X4%VSS_r30 x_PM_LS_HL_X4%VSS_9 x_PM_LS_HL_X4%VSS_18 0.264221 
R_x_PM_LS_HL_X4%VSS_r31 x_PM_LS_HL_X4%VSS_9 N_VSS_M3_b 0.5016 
R_x_PM_LS_HL_X4%VSS_r32 x_PM_LS_HL_X4%VSS_29 N_VSS_M3_d 0.366429 
C_x_PM_LS_HL_X4%3_c0 x_PM_LS_HL_X4%3_37 VSS 0.082947f
C_x_PM_LS_HL_X4%3_c1 x_PM_LS_HL_X4%3_33 VSS 0.00831941f
C_x_PM_LS_HL_X4%3_c2 x_PM_LS_HL_X4%3_32 VSS 0.0421501f
C_x_PM_LS_HL_X4%3_c3 x_PM_LS_HL_X4%3_31 VSS 0.0134469f
C_x_PM_LS_HL_X4%3_c4 x_PM_LS_HL_X4%3_30 VSS 0.0498581f
C_x_PM_LS_HL_X4%3_c5 N_3_M0_s VSS 0.0401093f
C_x_PM_LS_HL_X4%3_c6 N_3_M3_s VSS 0.0230242f
C_x_PM_LS_HL_X4%3_c7 x_PM_LS_HL_X4%3_19 VSS 0.00330952f
C_x_PM_LS_HL_X4%3_c8 N_3_M2_g VSS 0.0416209f
C_x_PM_LS_HL_X4%3_c9 N_3_M5_g VSS 0.0369185f
C_x_PM_LS_HL_X4%3_c10 x_PM_LS_HL_X4%3_10 VSS 0.00699102f
C_x_PM_LS_HL_X4%3_c11 x_PM_LS_HL_X4%3_9 VSS 0.0126095f
C_x_PM_LS_HL_X4%3_c12 N_3_M1_g VSS 0.0366857f
C_x_PM_LS_HL_X4%3_c13 N_3_M4_g VSS 0.0307613f
R_x_PM_LS_HL_X4%3_r14 x_PM_LS_HL_X4%3_39 x_PM_LS_HL_X4%3_41 3.9 
R_x_PM_LS_HL_X4%3_r15 x_PM_LS_HL_X4%3_37 x_PM_LS_HL_X4%3_39 25.0012 
R_x_PM_LS_HL_X4%3_r16 x_PM_LS_HL_X4%3_35 x_PM_LS_HL_X4%3_37 0.746429 
R_x_PM_LS_HL_X4%3_r17 x_PM_LS_HL_X4%3_34 x_PM_LS_HL_X4%3_37 1.01786 
R_x_PM_LS_HL_X4%3_r18 x_PM_LS_HL_X4%3_32 x_PM_LS_HL_X4%3_35 0.212317 
R_x_PM_LS_HL_X4%3_r19 x_PM_LS_HL_X4%3_32 x_PM_LS_HL_X4%3_33 0.922857 
R_x_PM_LS_HL_X4%3_r20 x_PM_LS_HL_X4%3_30 x_PM_LS_HL_X4%3_34 0.212317 
R_x_PM_LS_HL_X4%3_r21 x_PM_LS_HL_X4%3_30 x_PM_LS_HL_X4%3_31 0.922857 
R_x_PM_LS_HL_X4%3_r22 x_PM_LS_HL_X4%3_26 x_PM_LS_HL_X4%3_33 0.212317 
R_x_PM_LS_HL_X4%3_r23 x_PM_LS_HL_X4%3_26 N_3_M0_s 1.39786 
R_x_PM_LS_HL_X4%3_r24 x_PM_LS_HL_X4%3_22 x_PM_LS_HL_X4%3_31 0.212317 
R_x_PM_LS_HL_X4%3_r25 x_PM_LS_HL_X4%3_22 N_3_M3_s 0.203571 
R_x_PM_LS_HL_X4%3_r26 x_PM_LS_HL_X4%3_15 x_PM_LS_HL_X4%3_19 4.56151 
R_x_PM_LS_HL_X4%3_r27 x_PM_LS_HL_X4%3_15 N_3_M2_g 42.51 
R_x_PM_LS_HL_X4%3_r28 x_PM_LS_HL_X4%3_11 x_PM_LS_HL_X4%3_19 4.56151 
R_x_PM_LS_HL_X4%3_r29 x_PM_LS_HL_X4%3_11 N_3_M5_g 37.05 
R_x_PM_LS_HL_X4%3_r30 x_PM_LS_HL_X4%3_10 x_PM_LS_HL_X4%3_41 2.6 
R_x_PM_LS_HL_X4%3_r31 x_PM_LS_HL_X4%3_9 x_PM_LS_HL_X4%3_19 0.043368 
R_x_PM_LS_HL_X4%3_r32 x_PM_LS_HL_X4%3_9 x_PM_LS_HL_X4%3_10 14.56 
R_x_PM_LS_HL_X4%3_r33 x_PM_LS_HL_X4%3_5 x_PM_LS_HL_X4%3_41 1.95 
R_x_PM_LS_HL_X4%3_r34 x_PM_LS_HL_X4%3_5 N_3_M1_g 42.51 
R_x_PM_LS_HL_X4%3_r35 x_PM_LS_HL_X4%3_1 x_PM_LS_HL_X4%3_41 1.95 
R_x_PM_LS_HL_X4%3_r36 x_PM_LS_HL_X4%3_1 N_3_M4_g 37.05 
C_x_PM_LS_HL_X4%A_c0 x_PM_LS_HL_X4%A_14 VSS 0.00723213f
C_x_PM_LS_HL_X4%A_c1 x_PM_LS_HL_X4%A_12 VSS 0.0533008f
C_x_PM_LS_HL_X4%A_c2 N_A_M0_g VSS 0.0657807f
C_x_PM_LS_HL_X4%A_c3 N_A_M3_g VSS 0.0443432f
R_x_PM_LS_HL_X4%A_r4 x_PM_LS_HL_X4%A_14 x_PM_LS_HL_X4%A_18 4.7687 
R_x_PM_LS_HL_X4%A_r5 x_PM_LS_HL_X4%A_14 x_PM_LS_HL_X4%A_17 4.7687 
R_x_PM_LS_HL_X4%A_r6 x_PM_LS_HL_X4%A_12 x_PM_LS_HL_X4%A_14 25.0012 
R_x_PM_LS_HL_X4%A_r7 A x_PM_LS_HL_X4%A_12 0.169643 
R_x_PM_LS_HL_X4%A_r8 x_PM_LS_HL_X4%A_18 N_A_M0_g 64.74 
R_x_PM_LS_HL_X4%A_r9 x_PM_LS_HL_X4%A_17 N_A_M3_g 39.78 
C_x_PM_LS_HL_X4%Z_c0 N_Z_M4_d VSS 0.19855f
R_x_PM_LS_HL_X4%Z_r1 Z N_Z_M1_d 1.59389 
R_x_PM_LS_HL_X4%Z_r2 N_Z_M4_d Z 0.559444 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
