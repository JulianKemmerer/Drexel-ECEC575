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
* Cellname:   LS_HLEN_X2.                                                      *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:41 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT LS_HLEN_X2 VDDL VSS A ISOLN Z
*.PININFO VDDL:P VSS:G A:I ISOLN:I Z:O 
*.EQN Z=(A * ISOLN)
M_M3 N_3_M0_d N_A_M0_g N_VDDL_M0_s N_VDDL_M0_b PMOS_VTL L=5e-08 W=2.05e-07
M_M4 N_VDDL_M1_d N_ISOLN_M1_g N_3_M0_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=2.05e-07
M_M5 N_Z_M2_d N_3_M2_g N_VDDL_M1_d N_VDDL_M0_b PMOS_VTL L=5e-08 W=4.15e-07
M_M0 7 N_A_M3_g N_3_M3_s N_VSS_M3_b NMOS_VTL L=5e-08 W=1.8e-07
M_M1 N_VSS_M4_d N_ISOLN_M4_g 7 N_VSS_M3_b NMOS_VTL L=5e-08 W=1.8e-07
M_M2 N_Z_M5_d N_3_M5_g N_VSS_M4_d N_VSS_M3_b NMOS_VTL L=5e-08 W=3.05e-07
C_x_PM_LS_HLEN_X2%VDDL_c0 x_PM_LS_HLEN_X2%VDDL_50 VSS 0.00295132f
C_x_PM_LS_HLEN_X2%VDDL_c1 x_PM_LS_HLEN_X2%VDDL_49 VSS 0.00298731f
C_x_PM_LS_HLEN_X2%VDDL_c2 VDDL VSS 0.254713f
C_x_PM_LS_HLEN_X2%VDDL_c3 x_PM_LS_HLEN_X2%VDDL_37 VSS 0.0205979f
C_x_PM_LS_HLEN_X2%VDDL_c4 N_VDDL_M1_d VSS 0.0208352f
C_x_PM_LS_HLEN_X2%VDDL_c5 x_PM_LS_HLEN_X2%VDDL_32 VSS 0.0102295f
C_x_PM_LS_HLEN_X2%VDDL_c6 x_PM_LS_HLEN_X2%VDDL_31 VSS 0.0190196f
C_x_PM_LS_HLEN_X2%VDDL_c7 N_VDDL_M0_s VSS 0.0147941f
C_x_PM_LS_HLEN_X2%VDDL_c8 x_PM_LS_HLEN_X2%VDDL_22 VSS 0.0120441f
C_x_PM_LS_HLEN_X2%VDDL_c9 x_PM_LS_HLEN_X2%VDDL_21 VSS 0.240864f
C_x_PM_LS_HLEN_X2%VDDL_c10 VDDL VSS 0.588991f
C_x_PM_LS_HLEN_X2%VDDL_c11 N_VDDL_M0_b VSS 0.0374152f
R_x_PM_LS_HLEN_X2%VDDL_r12 x_PM_LS_HLEN_X2%VDDL_47 x_PM_LS_HLEN_X2%VDDL_48 0.368824 
R_x_PM_LS_HLEN_X2%VDDL_r13 x_PM_LS_HLEN_X2%VDDL_43 x_PM_LS_HLEN_X2%VDDL_50 0.0731438 
R_x_PM_LS_HLEN_X2%VDDL_r14 x_PM_LS_HLEN_X2%VDDL_43 VDDL 8.03588 
R_x_PM_LS_HLEN_X2%VDDL_r15 x_PM_LS_HLEN_X2%VDDL_39 x_PM_LS_HLEN_X2%VDDL_50 0.145286 
R_x_PM_LS_HLEN_X2%VDDL_r16 x_PM_LS_HLEN_X2%VDDL_38 x_PM_LS_HLEN_X2%VDDL_49 0.0731438 
R_x_PM_LS_HLEN_X2%VDDL_r17 x_PM_LS_HLEN_X2%VDDL_37 x_PM_LS_HLEN_X2%VDDL_50 0.0731438 
R_x_PM_LS_HLEN_X2%VDDL_r18 x_PM_LS_HLEN_X2%VDDL_37 x_PM_LS_HLEN_X2%VDDL_38 0.737647 
R_x_PM_LS_HLEN_X2%VDDL_r19 x_PM_LS_HLEN_X2%VDDL_33 x_PM_LS_HLEN_X2%VDDL_49 0.145286 
R_x_PM_LS_HLEN_X2%VDDL_r20 x_PM_LS_HLEN_X2%VDDL_33 N_VDDL_M1_d 1.39786 
R_x_PM_LS_HLEN_X2%VDDL_r21 x_PM_LS_HLEN_X2%VDDL_32 x_PM_LS_HLEN_X2%VDDL_48 0.0782353 
R_x_PM_LS_HLEN_X2%VDDL_r22 x_PM_LS_HLEN_X2%VDDL_31 x_PM_LS_HLEN_X2%VDDL_49 0.0731438 
R_x_PM_LS_HLEN_X2%VDDL_r23 x_PM_LS_HLEN_X2%VDDL_31 x_PM_LS_HLEN_X2%VDDL_32 0.681765 
R_x_PM_LS_HLEN_X2%VDDL_r24 x_PM_LS_HLEN_X2%VDDL_27 x_PM_LS_HLEN_X2%VDDL_48 0.095 
R_x_PM_LS_HLEN_X2%VDDL_r25 x_PM_LS_HLEN_X2%VDDL_27 N_VDDL_M0_s 1.39786 
R_x_PM_LS_HLEN_X2%VDDL_r26 x_PM_LS_HLEN_X2%VDDL_23 x_PM_LS_HLEN_X2%VDDL_47 0.095 
R_x_PM_LS_HLEN_X2%VDDL_r27 x_PM_LS_HLEN_X2%VDDL_21 x_PM_LS_HLEN_X2%VDDL_47 0.0782353 
R_x_PM_LS_HLEN_X2%VDDL_r28 x_PM_LS_HLEN_X2%VDDL_21 x_PM_LS_HLEN_X2%VDDL_22 7.93529 
R_x_PM_LS_HLEN_X2%VDDL_r29 x_PM_LS_HLEN_X2%VDDL_13 x_PM_LS_HLEN_X2%VDDL_22 0.264221 
R_x_PM_LS_HLEN_X2%VDDL_r30 x_PM_LS_HLEN_X2%VDDL_39 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HLEN_X2%VDDL_r31 x_PM_LS_HLEN_X2%VDDL_23 N_VDDL_M0_b 0.827857 
R_x_PM_LS_HLEN_X2%VDDL_r32 x_PM_LS_HLEN_X2%VDDL_13 N_VDDL_M0_b 0.827857 
C_x_PM_LS_HLEN_X2%VSS_c0 x_PM_LS_HLEN_X2%VSS_44 VSS 0.25764f
C_x_PM_LS_HLEN_X2%VSS_c1 x_PM_LS_HLEN_X2%VSS_43 VSS 0.00280728f
C_x_PM_LS_HLEN_X2%VSS_c2 x_PM_LS_HLEN_X2%VSS_42 VSS 0.00292673f
C_x_PM_LS_HLEN_X2%VSS_c3 x_PM_LS_HLEN_X2%VSS_34 VSS 0.030447f
C_x_PM_LS_HLEN_X2%VSS_c4 N_VSS_M4_d VSS 0.0268264f
C_x_PM_LS_HLEN_X2%VSS_c5 x_PM_LS_HLEN_X2%VSS_26 VSS 0.044086f
C_x_PM_LS_HLEN_X2%VSS_c6 N_VSS_M3_b VSS 0.0403511f
C_x_PM_LS_HLEN_X2%VSS_c7 VSS VSS 0.562466f
C_x_PM_LS_HLEN_X2%VSS_c8 x_PM_LS_HLEN_X2%VSS_18 VSS 0.011992f
C_x_PM_LS_HLEN_X2%VSS_c9 x_PM_LS_HLEN_X2%VSS_17 VSS 0.0120195f
C_x_PM_LS_HLEN_X2%VSS_c10 x_PM_LS_HLEN_X2%VSS_16 VSS 0.240864f
C_x_PM_LS_HLEN_X2%VSS_c11 x_PM_LS_HLEN_X2%VSS_12 VSS 0.0110902f
R_x_PM_LS_HLEN_X2%VSS_r12 x_PM_LS_HLEN_X2%VSS_36 x_PM_LS_HLEN_X2%VSS_44 0.145286 
R_x_PM_LS_HLEN_X2%VSS_r13 x_PM_LS_HLEN_X2%VSS_35 x_PM_LS_HLEN_X2%VSS_43 0.0731438 
R_x_PM_LS_HLEN_X2%VSS_r14 x_PM_LS_HLEN_X2%VSS_34 x_PM_LS_HLEN_X2%VSS_44 0.0731438 
R_x_PM_LS_HLEN_X2%VSS_r15 x_PM_LS_HLEN_X2%VSS_34 x_PM_LS_HLEN_X2%VSS_35 0.737647 
R_x_PM_LS_HLEN_X2%VSS_r16 x_PM_LS_HLEN_X2%VSS_30 x_PM_LS_HLEN_X2%VSS_43 0.145286 
R_x_PM_LS_HLEN_X2%VSS_r17 x_PM_LS_HLEN_X2%VSS_30 N_VSS_M4_d 0.366429 
R_x_PM_LS_HLEN_X2%VSS_r18 x_PM_LS_HLEN_X2%VSS_27 x_PM_LS_HLEN_X2%VSS_42 0.0731438 
R_x_PM_LS_HLEN_X2%VSS_r19 x_PM_LS_HLEN_X2%VSS_27 VSS 0.972353 
R_x_PM_LS_HLEN_X2%VSS_r20 x_PM_LS_HLEN_X2%VSS_26 x_PM_LS_HLEN_X2%VSS_43 0.0731438 
R_x_PM_LS_HLEN_X2%VSS_r21 x_PM_LS_HLEN_X2%VSS_26 VSS 0.0782353 
R_x_PM_LS_HLEN_X2%VSS_r22 x_PM_LS_HLEN_X2%VSS_36 N_VSS_M3_b 0.502143 
R_x_PM_LS_HLEN_X2%VSS_r23 x_PM_LS_HLEN_X2%VSS_22 x_PM_LS_HLEN_X2%VSS_42 0.145286 
R_x_PM_LS_HLEN_X2%VSS_r24 x_PM_LS_HLEN_X2%VSS_22 N_VSS_M3_b 0.502143 
R_x_PM_LS_HLEN_X2%VSS_r25 x_PM_LS_HLEN_X2%VSS_18 VSS 18.1953 
R_x_PM_LS_HLEN_X2%VSS_r26 x_PM_LS_HLEN_X2%VSS_16 x_PM_LS_HLEN_X2%VSS_42 0.0731438 
R_x_PM_LS_HLEN_X2%VSS_r27 x_PM_LS_HLEN_X2%VSS_16 x_PM_LS_HLEN_X2%VSS_17 7.93529 
R_x_PM_LS_HLEN_X2%VSS_r28 x_PM_LS_HLEN_X2%VSS_12 x_PM_LS_HLEN_X2%VSS_18 0.264221 
R_x_PM_LS_HLEN_X2%VSS_r29 x_PM_LS_HLEN_X2%VSS_8 x_PM_LS_HLEN_X2%VSS_17 0.264221 
R_x_PM_LS_HLEN_X2%VSS_r30 x_PM_LS_HLEN_X2%VSS_8 N_VSS_M3_b 0.5016 
C_x_PM_LS_HLEN_X2%3_c0 x_PM_LS_HLEN_X2%3_30 VSS 0.0123231f
C_x_PM_LS_HLEN_X2%3_c1 x_PM_LS_HLEN_X2%3_26 VSS 0.0749698f
C_x_PM_LS_HLEN_X2%3_c2 x_PM_LS_HLEN_X2%3_22 VSS 0.0172326f
C_x_PM_LS_HLEN_X2%3_c3 x_PM_LS_HLEN_X2%3_21 VSS 0.0369174f
C_x_PM_LS_HLEN_X2%3_c4 N_3_M0_d VSS 0.0353654f
C_x_PM_LS_HLEN_X2%3_c5 x_PM_LS_HLEN_X2%3_16 VSS 0.0136045f
C_x_PM_LS_HLEN_X2%3_c6 x_PM_LS_HLEN_X2%3_15 VSS 0.0865791f
C_x_PM_LS_HLEN_X2%3_c7 N_3_M3_s VSS 0.0185031f
C_x_PM_LS_HLEN_X2%3_c8 N_3_M2_g VSS 0.0605609f
C_x_PM_LS_HLEN_X2%3_c9 N_3_M5_g VSS 0.0483776f
R_x_PM_LS_HLEN_X2%3_r10 x_PM_LS_HLEN_X2%3_28 x_PM_LS_HLEN_X2%3_30 4.42 
R_x_PM_LS_HLEN_X2%3_r11 x_PM_LS_HLEN_X2%3_26 x_PM_LS_HLEN_X2%3_28 25.0012 
R_x_PM_LS_HLEN_X2%3_r12 x_PM_LS_HLEN_X2%3_24 x_PM_LS_HLEN_X2%3_26 0.502143 
R_x_PM_LS_HLEN_X2%3_r13 x_PM_LS_HLEN_X2%3_23 x_PM_LS_HLEN_X2%3_26 0.990714 
R_x_PM_LS_HLEN_X2%3_r14 x_PM_LS_HLEN_X2%3_21 x_PM_LS_HLEN_X2%3_24 0.212317 
R_x_PM_LS_HLEN_X2%3_r15 x_PM_LS_HLEN_X2%3_21 x_PM_LS_HLEN_X2%3_22 0.895714 
R_x_PM_LS_HLEN_X2%3_r16 x_PM_LS_HLEN_X2%3_17 x_PM_LS_HLEN_X2%3_22 0.212317 
R_x_PM_LS_HLEN_X2%3_r17 x_PM_LS_HLEN_X2%3_17 N_3_M0_d 1.235 
R_x_PM_LS_HLEN_X2%3_r18 x_PM_LS_HLEN_X2%3_15 x_PM_LS_HLEN_X2%3_23 0.212317 
R_x_PM_LS_HLEN_X2%3_r19 x_PM_LS_HLEN_X2%3_15 x_PM_LS_HLEN_X2%3_16 1.92714 
R_x_PM_LS_HLEN_X2%3_r20 x_PM_LS_HLEN_X2%3_11 x_PM_LS_HLEN_X2%3_16 0.212317 
R_x_PM_LS_HLEN_X2%3_r21 x_PM_LS_HLEN_X2%3_11 N_3_M3_s 0.149286 
R_x_PM_LS_HLEN_X2%3_r22 x_PM_LS_HLEN_X2%3_5 x_PM_LS_HLEN_X2%3_30 1.95 
R_x_PM_LS_HLEN_X2%3_r23 x_PM_LS_HLEN_X2%3_5 N_3_M2_g 48.75 
R_x_PM_LS_HLEN_X2%3_r24 x_PM_LS_HLEN_X2%3_1 x_PM_LS_HLEN_X2%3_30 1.95 
R_x_PM_LS_HLEN_X2%3_r25 x_PM_LS_HLEN_X2%3_1 N_3_M5_g 36.27 
C_x_PM_LS_HLEN_X2%A_c0 x_PM_LS_HLEN_X2%A_14 VSS 0.00734584f
C_x_PM_LS_HLEN_X2%A_c1 x_PM_LS_HLEN_X2%A_12 VSS 0.0554593f
C_x_PM_LS_HLEN_X2%A_c2 N_A_M0_g VSS 0.0585385f
C_x_PM_LS_HLEN_X2%A_c3 N_A_M3_g VSS 0.0445007f
R_x_PM_LS_HLEN_X2%A_r4 x_PM_LS_HLEN_X2%A_14 x_PM_LS_HLEN_X2%A_18 4.74714 
R_x_PM_LS_HLEN_X2%A_r5 x_PM_LS_HLEN_X2%A_14 x_PM_LS_HLEN_X2%A_17 4.74714 
R_x_PM_LS_HLEN_X2%A_r6 x_PM_LS_HLEN_X2%A_12 x_PM_LS_HLEN_X2%A_14 25.0012 
R_x_PM_LS_HLEN_X2%A_r7 A x_PM_LS_HLEN_X2%A_12 0.156071 
R_x_PM_LS_HLEN_X2%A_r8 x_PM_LS_HLEN_X2%A_18 N_A_M0_g 72.15 
R_x_PM_LS_HLEN_X2%A_r9 x_PM_LS_HLEN_X2%A_17 N_A_M3_g 39 
C_x_PM_LS_HLEN_X2%ISOLN_c0 x_PM_LS_HLEN_X2%ISOLN_14 VSS 0.0089801f
C_x_PM_LS_HLEN_X2%ISOLN_c1 x_PM_LS_HLEN_X2%ISOLN_12 VSS 0.0895959f
C_x_PM_LS_HLEN_X2%ISOLN_c2 N_ISOLN_M1_g VSS 0.0655355f
C_x_PM_LS_HLEN_X2%ISOLN_c3 N_ISOLN_M4_g VSS 0.0425689f
R_x_PM_LS_HLEN_X2%ISOLN_r4 x_PM_LS_HLEN_X2%ISOLN_14 x_PM_LS_HLEN_X2%ISOLN_18 4.7687 
R_x_PM_LS_HLEN_X2%ISOLN_r5 x_PM_LS_HLEN_X2%ISOLN_14 x_PM_LS_HLEN_X2%ISOLN_17 4.7687 
R_x_PM_LS_HLEN_X2%ISOLN_r6 x_PM_LS_HLEN_X2%ISOLN_12 x_PM_LS_HLEN_X2%ISOLN_14 25.0012 
R_x_PM_LS_HLEN_X2%ISOLN_r7 ISOLN x_PM_LS_HLEN_X2%ISOLN_12 0.169643 
R_x_PM_LS_HLEN_X2%ISOLN_r8 x_PM_LS_HLEN_X2%ISOLN_18 N_ISOLN_M1_g 72.93 
R_x_PM_LS_HLEN_X2%ISOLN_r9 x_PM_LS_HLEN_X2%ISOLN_17 N_ISOLN_M4_g 38.22 
C_x_PM_LS_HLEN_X2%Z_c0 N_Z_M5_d VSS 0.134219f
R_x_PM_LS_HLEN_X2%Z_r1 Z N_Z_M2_d 1.10833 
R_x_PM_LS_HLEN_X2%Z_r2 N_Z_M5_d Z 1.045 
.ENDS

********************************************************************************
*
* END
*
********************************************************************************
