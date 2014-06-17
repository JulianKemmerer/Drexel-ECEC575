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
package Components is

component AON_BUF_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component AON_BUF_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component AON_BUF_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component AON_INV_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component AON_INV_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component AON_INV_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component HEADER_OE_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
end component;

component HEADER_OE_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
end component;

component HEADER_OE_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
end component;

component HEADER_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
end component;

component HEADER_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
end component;

component HEADER_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
end component;

component ISO_FENCE0N_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE0N_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE0N_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE0_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE0_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE0_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1N_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1N_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1N_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component ISO_FENCE1_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_EN                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_EN_Z                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    EN                                       : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HLEN_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HLEN_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HLEN_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HL_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HL_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_HL_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LHEN_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LHEN_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LHEN_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tipd_ISOLN                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_ISOLN_Z                              : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ISOLN                                    : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LH_X1
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LH_X2
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

component LS_LH_X4
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
end component;

end Components;

--
-- End of file
--
