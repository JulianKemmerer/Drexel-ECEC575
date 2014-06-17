-- 
-- ******************************************************************************
-- *                                                                            *
-- *                   Copyright (C) 2004-2011, Nangate Inc.                    *
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
-- *   NGLibraryCharacterizer, v2011.05-QR02-2011-05-18_32 - build 1107011217   *
-- *                                                                            *
-- ******************************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library IEEE;
use IEEE.VITAL_Timing.all;
use IEEE.VITAL_Primitives.all;

package Attributes is

  CONSTANT XOnVar        : Boolean := False;
  CONSTANT MsgOnVar      : Boolean := True;
  CONSTANT GlitchVar     : Boolean := True;
  CONSTANT ModeVar       : VitalGlitchKindType := OnEvent;

end Attributes;

--
-- End of file
--
