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
* Cellname:   HEADER_X1.                                                       *
*                                                                              *
* Technology: NCSU FreePDK 45nm.                                               *
* Format:     Cdl.                                                             *
*                                                                              *
* Written on brazil06.nangate.com.br for user Giancarlo Franciscatto (gfr)     *
* at 14:44:42 on Tue, 4 Jan 2011.                                              *
*                                                                              *
********************************************************************************
.SUBCKT HEADER_X1 VSS VDD SLEEP VVDD 
*.PININFO VSS:G VDD:P SLEEP:I VVDD:P 
M_M0 N_VVDD_M0_d N_SLEEP_M0_g N_VDD_M0_s VDD PMOS_VTL W=0.135000U L=0.050000U
c_1 VSS 0 3.89615e-17
C_x_PM_HEADER_X1%VDD_c0 x_PM_HEADER_X1%VDD_6 VSS 4.62241e-17
C_x_PM_HEADER_X1%VDD_c1 N_VDD_M0_s VSS 4.32335e-17
R_x_PM_HEADER_X1%VDD_r2 x_PM_HEADER_X1%VDD_6 VDD 0.089412
R_x_PM_HEADER_X1%VDD_r3 x_PM_HEADER_X1%VDD_2 x_PM_HEADER_X1%VDD_6 0.244544
R_x_PM_HEADER_X1%VDD_r4 x_PM_HEADER_X1%VDD_2 N_VDD_M0_s 1.08412
C_x_PM_HEADER_X1%SLEEP_c0 x_PM_HEADER_X1%SLEEP_16 VSS 1.78662e-17
C_x_PM_HEADER_X1%SLEEP_c1 x_PM_HEADER_X1%SLEEP_14 VSS 4.34136e-17
C_x_PM_HEADER_X1%SLEEP_c2 SLEEP VSS 1.92634e-17
C_x_PM_HEADER_X1%SLEEP_c3 N_SLEEP_M0_g VSS 7.02547e-17
R_x_PM_HEADER_X1%SLEEP_r4 x_PM_HEADER_X1%SLEEP_16 x_PM_HEADER_X1%SLEEP_20 4.74714
R_x_PM_HEADER_X1%SLEEP_r5 x_PM_HEADER_X1%SLEEP_14 x_PM_HEADER_X1%SLEEP_16 25.0012
R_x_PM_HEADER_X1%SLEEP_r6 SLEEP x_PM_HEADER_X1%SLEEP_14 0.007308
R_x_PM_HEADER_X1%SLEEP_r7 x_PM_HEADER_X1%SLEEP_20 N_SLEEP_M0_g 79.95
C_x_PM_HEADER_X1%VVDD_c0 VVDD VSS 1.05031e-16
R_x_PM_HEADER_X1%VVDD_r1 VVDD N_VVDD_M0_d 0.28913
.ENDS 

********************************************************************************
*
* END
*
********************************************************************************
