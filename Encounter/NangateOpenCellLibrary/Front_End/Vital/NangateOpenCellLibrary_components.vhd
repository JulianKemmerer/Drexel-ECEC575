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
package Components is

component AND2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND2_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND3_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND3_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND3_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND4_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND4_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AND4_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component ANTENNA_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC);
end component;

component AOI211_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI211_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI211_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI21_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI21_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI21_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI221_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI221_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI221_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI222_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI222_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI222_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI22_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI22_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component AOI22_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component BUF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component BUF_X16
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component BUF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component BUF_X32
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component BUF_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component BUF_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component CLKBUF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component CLKBUF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component CLKBUF_X3
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component CLKGATETST_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATETST_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATETST_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATETST_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATE_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_negedge          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP                  : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATE_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_negedge          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP                  : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATE_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_negedge          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP                  : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component CLKGATE_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_E                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_GCK_OP_E_EQ_0_CP_negedge          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_GCK_OP_E_EQ_1_CP                  : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_E_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_E_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_E_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_E_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_E_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    CK                                       : in       STD_ULOGIC;
    E                                        : in       STD_ULOGIC;
    GCK                                      : out      STD_ULOGIC);
end component;

component DFFRS_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_negedge           : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_posedge           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_SN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_RN_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_RN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_RN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_SN_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFFRS_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_negedge           : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_posedge           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_SN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_RN_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_RN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_RN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_SN_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFFR_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_RN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFFR_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_RN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFFS_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_SN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_SN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_SN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFFS_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_SN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_SN_eq3_1_posedge      : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_SN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tpw_CK_posedge                           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DFF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tpw_CK_posedge                           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_posedge               : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component DLH_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_G                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_D_Q                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_G_Q_posedge                          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_G                                 : VitalDelayType := 0.0 ns;
    ticd_G                                   : VitalDelayType := 0.0 ns;
    tsetup_D_G_negedge_negedge               : VitalDelayType := 0.0 ns;
    tsetup_D_G_posedge_negedge               : VitalDelayType := 0.0 ns;
    thold_D_G_negedge_negedge                : VitalDelayType := 0.0 ns;
    thold_D_G_posedge_negedge                : VitalDelayType := 0.0 ns;
    tpw_G_posedge                            : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    G                                        : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC);
end component;

component DLH_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_G                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_D_Q                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_G_Q_posedge                          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_G                                 : VitalDelayType := 0.0 ns;
    ticd_G                                   : VitalDelayType := 0.0 ns;
    tsetup_D_G_negedge_negedge               : VitalDelayType := 0.0 ns;
    tsetup_D_G_posedge_negedge               : VitalDelayType := 0.0 ns;
    thold_D_G_negedge_negedge                : VitalDelayType := 0.0 ns;
    thold_D_G_posedge_negedge                : VitalDelayType := 0.0 ns;
    tpw_G_posedge                            : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    G                                        : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC);
end component;

component DLL_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_GN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_D_Q                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_GN_Q_negedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_GN                                : VitalDelayType := 0.0 ns;
    ticd_GN                                  : VitalDelayType := 0.0 ns;
    tsetup_D_GN_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_D_GN_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_D_GN_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_D_GN_posedge_posedge               : VitalDelayType := 0.0 ns;
    tpw_GN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    GN                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC);
end component;

component DLL_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_GN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_D_Q                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_GN_Q_negedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_D_GN                                : VitalDelayType := 0.0 ns;
    ticd_GN                                  : VitalDelayType := 0.0 ns;
    tsetup_D_GN_negedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_D_GN_posedge_posedge              : VitalDelayType := 0.0 ns;
    thold_D_GN_negedge_posedge               : VitalDelayType := 0.0 ns;
    thold_D_GN_posedge_posedge               : VitalDelayType := 0.0 ns;
    tpw_GN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    GN                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC);
end component;

component FA_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_CI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_CO_OP_B_EQ_0_CP_AN_OP_CI_EQ_1_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_CO_OP_B_EQ_1_CP_AN_OP_CI_EQ_0_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_CO_OP_A_EQ_1_CP_AN_OP_CI_EQ_0_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_CO_OP_A_EQ_0_CP_AN_OP_CI_EQ_1_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_CO_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_CO_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_0_CP_AN_OP_CI_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_0_CP_AN_OP_CI_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_1_CP_AN_OP_CI_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_1_CP_AN_OP_CI_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_0_CP_AN_OP_CI_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_1_CP_AN_OP_CI_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_1_CP_AN_OP_CI_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_0_CP_AN_OP_CI_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_S_OP_A_EQ_1_CP_AN_OP_B_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_S_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_S_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CI_S_OP_A_EQ_0_CP_AN_OP_B_EQ_0_CP    : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    CI                                       : in       STD_ULOGIC;
    CO                                       : out      STD_ULOGIC;
    S                                        : out      STD_ULOGIC);
end component;

component FILLCELL_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component FILLCELL_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component FILLCELL_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component FILLCELL_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component FILLCELL_X16
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component FILLCELL_X32
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
end component;

component HA_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_CO                                 : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_CO                                 : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_S_OP_B_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_S_OP_A_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    CO                                       : out      STD_ULOGIC;
    S                                        : out      STD_ULOGIC);
end component;

component INV_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component INV_X16
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component INV_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component INV_X32
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component INV_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component INV_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component LOGIC0_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
  port (
    Z                                        : out      STD_ULOGIC);
end component;

component LOGIC1_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
  port (
    Z                                        : out      STD_ULOGIC);
end component;

component MUX2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_S                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_1_CP_AN_OP_S_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_0_CP_AN_OP_S_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_1_CP_AN_OP_S_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_0_CP_AN_OP_S_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_S_Z_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_S_Z_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    S                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component MUX2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_S                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_1_CP_AN_OP_S_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_0_CP_AN_OP_S_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_1_CP_AN_OP_S_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_0_CP_AN_OP_S_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_S_Z_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_S_Z_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP     : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    S                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component NAND2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND2_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND3_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND3_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND3_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND4_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND4_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NAND4_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR2_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR3_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR3_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR3_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR4_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR4_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component NOR4_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI211_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI211_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI211_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI21_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI21_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI21_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI221_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI221_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI221_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI222_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI222_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI222_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_C2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    C1                                       : in       STD_ULOGIC;
    C2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI22_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI22_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI22_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OAI33_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    B1                                       : in       STD_ULOGIC;
    B2                                       : in       STD_ULOGIC;
    B3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR2_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR3_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR3_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR3_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR4_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR4_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component OR4_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A1                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A2                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A3                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_A4                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A1_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A2_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A3_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A4_ZN                                : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A1                                       : in       STD_ULOGIC;
    A2                                       : in       STD_ULOGIC;
    A3                                       : in       STD_ULOGIC;
    A4                                       : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component SDFFRS_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_negedge           : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_posedge           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_SN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_RN_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_RN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_RN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_SN_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFFRS_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_negedge           : VitalDelayType := 0.0 ns;
    tpw_CK_RN_AND_SN_eq3_1_posedge           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_SN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_RN_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_RN_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_RN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_RN_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tpw_SN_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFFR_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_RN_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_RN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_RN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFFR_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_RN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_RN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_RN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_RN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_RN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_RN_negedge                           : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_RN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_RN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_RN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_RN_AND_SE_eq3_1_posedge : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    RN                                       : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFFS_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_SN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_SN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_SN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFFS_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tisd_SN_CK                               : VitalDelayType := 0.0 ns;
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_negedge                  : VitalDelayType := 0.0 ns;
    tpw_CK_SN_eq3_1_posedge                  : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_SN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_SN_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_SN_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_SE_AND_SN_eq3_1_posedge : VitalDelayType := 0.0 ns;
    trecovery_SN_CK_posedge_posedge          : VitalDelayType := 0.0 ns;
    tremoval_SN_CK_posedge_posedge           : VitalDelayType := 0.0 ns;
    tpw_SN_negedge                           : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    SN                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tpw_CK_posedge                           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_NEG_SE_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_NEG_SE_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_SE_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_SE_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_SE_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_SE_eq3_1_posedge     : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component SDFF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_CK                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_SI                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_CK_Q_posedge                         : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_CK_QN_posedge                        : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tisd_SE_CK                               : VitalDelayType := 0.0 ns;
    tisd_SI_CK                               : VitalDelayType := 0.0 ns;
    tisd_D_CK                                : VitalDelayType := 0.0 ns;
    ticd_CK                                  : VitalDelayType := 0.0 ns;
    tpw_CK_negedge                           : VitalDelayType := 0.0 ns;
    tpw_CK_posedge                           : VitalDelayType := 0.0 ns;
    tsetup_D_CK_negedge_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    tsetup_D_CK_posedge_NEG_SE_eq3_1_posedge : VitalDelayType := 0.0 ns;
    thold_D_CK_negedge_NEG_SE_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    thold_D_CK_posedge_NEG_SE_eq3_1_posedge  : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_negedge_posedge             : VitalDelayType := 0.0 ns;
    tsetup_SE_CK_posedge_posedge             : VitalDelayType := 0.0 ns;
    thold_SE_CK_negedge_posedge              : VitalDelayType := 0.0 ns;
    thold_SE_CK_posedge_posedge              : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_negedge_SE_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    tsetup_SI_CK_posedge_SE_eq3_1_posedge    : VitalDelayType := 0.0 ns;
    thold_SI_CK_negedge_SE_eq3_1_posedge     : VitalDelayType := 0.0 ns;
    thold_SI_CK_posedge_SE_eq3_1_posedge     : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    SE                                       : in       STD_ULOGIC;
    SI                                       : in       STD_ULOGIC;
    CK                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC;
    QN                                       : out      STD_ULOGIC);
end component;

component TBUF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component TBUF_X16
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component TBUF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component TBUF_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component TBUF_X8
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component TINV_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_I                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_ZN                                : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns);
    tpd_I_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    EN                                       : in       STD_ULOGIC;
    I                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component TLAT_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_D                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_G                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_OE                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_D_Q                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_G_Q_posedge                          : VitalDelayType01 := (0.1 ns, 0.1 ns);
    tpd_OE_Q                                 : VitalDelayType01z := (0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns, 0.0 ns);
    tisd_D_G                                 : VitalDelayType := 0.0 ns;
    tisd_OE_G                                : VitalDelayType := 0.0 ns;
    ticd_G                                   : VitalDelayType := 0.0 ns;
    tsetup_D_G_negedge_negedge               : VitalDelayType := 0.0 ns;
    tsetup_D_G_posedge_negedge               : VitalDelayType := 0.0 ns;
    thold_D_G_negedge_negedge                : VitalDelayType := 0.0 ns;
    thold_D_G_posedge_negedge                : VitalDelayType := 0.0 ns;
    tpw_G_posedge                            : VitalDelayType := 0.0 ns);
  port (
    D                                        : in       STD_ULOGIC;
    G                                        : in       STD_ULOGIC;
    OE                                       : in       STD_ULOGIC;
    Q                                        : out      STD_ULOGIC);
end component;

component XNOR2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component XNOR2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_0_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN_OP_B_EQ_1_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_1_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_ZN_OP_A_EQ_0_CP                    : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
end component;

component XOR2_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component XOR2_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_B                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z_OP_B_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_1_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_B_Z_OP_A_EQ_0_CP                     : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    B                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

end Components;

--
-- End of file
--
