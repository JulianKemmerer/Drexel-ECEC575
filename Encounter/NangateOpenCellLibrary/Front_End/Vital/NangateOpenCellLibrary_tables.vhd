-- 
-- ******************************************************************************
-- *                                                                            *
-- *                   Copyright (C) 2004-2010, Nangate Inc.                    *
-- *                           All rights reserved.                             *
-- *                                                                            *
-- * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
-- *                                                                            *
-- * All trademarks, logos, software marks, and trade names (collectively the   *
-- * "Marks") in this program are proprietary to Nangate or other respective    *
-- * owners that have granted Nangate the right and license to use such Marks.  *
-- * You are not permitted to use the Marks without the prior written consent   *
-- * of Nangate or such third party that may own the Marks.                     *
-- *                                                                            *
-- * This file has been provided pursuant to a License Agreement containing     *
-- * restrictions on its use. This file contains valuable trade secrets and     *
-- * proprietary information of Nangate Inc., and is protected by U.S. and      *
-- * international laws and/or treaties.                                        *
-- *                                                                            *
-- * The copyright notice(s) in this file does not indicate actual or intended  *
-- * publication of this file.                                                  *
-- *                                                                            *
-- *      NGLibraryCharacterizer, Development_version - build 201012062042      *
-- *                                                                            *
-- ******************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library IEEE;
use IEEE.VITAL_Timing.all;
use IEEE.VITAL_Primitives.all;

package Tables is

  CONSTANT L : VitalTableSymbolType := '0';
  CONSTANT H : VitalTableSymbolType := '1';
  CONSTANT S : VitalTableSymbolType := 'S';
  CONSTANT B : VitalTableSymbolType := 'B';
  CONSTANT R : VitalTableSymbolType := '/';
  CONSTANT F : VitalTableSymbolType := '\';
  CONSTANT x : VitalTableSymbolType := '-';

  CONSTANT CLKGATETST_X1_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X1_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X2_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X2_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X4_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X4_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X8_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATETST_X8_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X1_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X1_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X2_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X2_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X4_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X4_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X8_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT CLKGATE_X8_IQn_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT DFFRS_X1_IQN_tab : VitalStateTableType := (
    (H, x, R, H, x, L),
    (x, H, B, x, H, H),
    (x, H, R, L, x, H),
    (H, x, B, x, L, L),
    (L, H, x, x, x, H),
    (x, L, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT DFFRS_X1_IQ_tab : VitalStateTableType := (
    (x, H, R, L, x, L),
    (H, x, B, x, H, H),
    (H, x, R, H, x, H),
    (x, H, B, x, L, L),
    (H, L, x, x, x, H),
    (L, x, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT DFFRS_X2_IQN_tab : VitalStateTableType := (
    (H, x, R, H, x, L),
    (x, H, B, x, H, H),
    (x, H, R, L, x, H),
    (H, x, B, x, L, L),
    (L, H, x, x, x, H),
    (x, L, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT DFFRS_X2_IQ_tab : VitalStateTableType := (
    (x, H, R, L, x, L),
    (H, x, B, x, H, H),
    (H, x, R, H, x, H),
    (x, H, B, x, L, L),
    (H, L, x, x, x, H),
    (L, x, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT DFFR_X1_IQN_tab : VitalStateTableType := (
    (H, R, H, x, L),
    (x, B, x, H, H),
    (x, R, L, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT DFFR_X1_IQ_tab : VitalStateTableType := (
    (x, R, L, x, L),
    (H, B, x, H, H),
    (H, R, H, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT DFFR_X2_IQN_tab : VitalStateTableType := (
    (H, R, H, x, L),
    (x, B, x, H, H),
    (x, R, L, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT DFFR_X2_IQ_tab : VitalStateTableType := (
    (x, R, L, x, L),
    (H, B, x, H, H),
    (H, R, H, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT DFFS_X1_IQN_tab : VitalStateTableType := (
    (x, R, H, x, L),
    (H, B, x, H, H),
    (H, R, L, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT DFFS_X1_IQ_tab : VitalStateTableType := (
    (H, R, L, x, L),
    (x, B, x, H, H),
    (x, R, H, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT DFFS_X2_IQN_tab : VitalStateTableType := (
    (x, R, H, x, L),
    (H, B, x, H, H),
    (H, R, L, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT DFFS_X2_IQ_tab : VitalStateTableType := (
    (H, R, L, x, L),
    (x, B, x, H, H),
    (x, R, H, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT DFF_X1_IQN_tab : VitalStateTableType := (
    (R, H, x, L),
    (B, x, H, H),
    (R, L, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT DFF_X1_IQ_tab : VitalStateTableType := (
    (R, L, x, L),
    (B, x, H, H),
    (R, H, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT DFF_X2_IQN_tab : VitalStateTableType := (
    (R, H, x, L),
    (B, x, H, H),
    (R, L, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT DFF_X2_IQ_tab : VitalStateTableType := (
    (R, L, x, L),
    (B, x, H, H),
    (R, H, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT DLH_X1_IQN_tab : VitalStateTableType := (
    (H, H, x, L),
    (H, L, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

  CONSTANT DLH_X1_IQ_tab : VitalStateTableType := (
    (H, L, x, L),
    (H, H, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

  CONSTANT DLH_X2_IQN_tab : VitalStateTableType := (
    (H, H, x, L),
    (H, L, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

  CONSTANT DLH_X2_IQ_tab : VitalStateTableType := (
    (H, L, x, L),
    (H, H, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

  CONSTANT DLL_X1_IQN_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT DLL_X1_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT DLL_X2_IQN_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, H, x, L),
    (L, L, x, H),
    (x, x, x, S));

  CONSTANT DLL_X2_IQ_tab : VitalStateTableType := (
    (H, x, H, H),
    (H, x, L, L),
    (L, L, x, L),
    (L, H, x, H),
    (x, x, x, S));

  CONSTANT SDFFRS_X1_IQN_tab : VitalStateTableType := (
    (H, x, R, H, x, L),
    (x, H, B, x, H, H),
    (x, H, R, L, x, H),
    (H, x, B, x, L, L),
    (L, H, x, x, x, H),
    (x, L, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT SDFFRS_X1_IQ_tab : VitalStateTableType := (
    (x, H, R, L, x, L),
    (H, x, B, x, H, H),
    (H, x, R, H, x, H),
    (x, H, B, x, L, L),
    (H, L, x, x, x, H),
    (L, x, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT SDFFRS_X2_IQN_tab : VitalStateTableType := (
    (H, x, R, H, x, L),
    (x, H, B, x, H, H),
    (x, H, R, L, x, H),
    (H, x, B, x, L, L),
    (L, H, x, x, x, H),
    (x, L, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT SDFFRS_X2_IQ_tab : VitalStateTableType := (
    (x, H, R, L, x, L),
    (H, x, B, x, H, H),
    (H, x, R, H, x, H),
    (x, H, B, x, L, L),
    (H, L, x, x, x, H),
    (L, x, x, x, x, L),
    (x, x, x, x, x, S));

  CONSTANT SDFFR_X1_IQN_tab : VitalStateTableType := (
    (H, R, H, x, L),
    (x, B, x, H, H),
    (x, R, L, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT SDFFR_X1_IQ_tab : VitalStateTableType := (
    (x, R, L, x, L),
    (H, B, x, H, H),
    (H, R, H, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT SDFFR_X2_IQN_tab : VitalStateTableType := (
    (H, R, H, x, L),
    (x, B, x, H, H),
    (x, R, L, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT SDFFR_X2_IQ_tab : VitalStateTableType := (
    (x, R, L, x, L),
    (H, B, x, H, H),
    (H, R, H, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT SDFFS_X1_IQN_tab : VitalStateTableType := (
    (x, R, H, x, L),
    (H, B, x, H, H),
    (H, R, L, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT SDFFS_X1_IQ_tab : VitalStateTableType := (
    (H, R, L, x, L),
    (x, B, x, H, H),
    (x, R, H, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT SDFFS_X2_IQN_tab : VitalStateTableType := (
    (x, R, H, x, L),
    (H, B, x, H, H),
    (H, R, L, x, H),
    (x, B, x, L, L),
    (L, x, x, x, L),
    (x, x, x, x, S));

  CONSTANT SDFFS_X2_IQ_tab : VitalStateTableType := (
    (H, R, L, x, L),
    (x, B, x, H, H),
    (x, R, H, x, H),
    (H, B, x, L, L),
    (L, x, x, x, H),
    (x, x, x, x, S));

  CONSTANT SDFF_X1_IQN_tab : VitalStateTableType := (
    (R, H, x, L),
    (B, x, H, H),
    (R, L, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT SDFF_X1_IQ_tab : VitalStateTableType := (
    (R, L, x, L),
    (B, x, H, H),
    (R, H, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT SDFF_X2_IQN_tab : VitalStateTableType := (
    (R, H, x, L),
    (B, x, H, H),
    (R, L, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT SDFF_X2_IQ_tab : VitalStateTableType := (
    (R, L, x, L),
    (B, x, H, H),
    (R, H, x, H),
    (B, x, L, L),
    (x, x, x, S));

  CONSTANT TLAT_X1_IQN_tab : VitalStateTableType := (
    (H, H, x, L),
    (H, L, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

  CONSTANT TLAT_X1_IQ_tab : VitalStateTableType := (
    (H, L, x, L),
    (H, H, x, H),
    (L, x, H, H),
    (L, x, L, L),
    (x, x, x, S));

end Tables;

--
-- End of file
--
