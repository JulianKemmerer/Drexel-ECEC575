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

---- CELL AON_BUF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_BUF_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_BUF_X1 : entity is TRUE;
end AON_BUF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_BUF_X1 of AON_BUF_X1 is
  attribute VITAL_LEVEL1 of VITAL_AON_BUF_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_BUF_X1;

configuration CFG_AON_BUF_X1_VITAL of AON_BUF_X1 is
  for VITAL_AON_BUF_X1
  end for;
end CFG_AON_BUF_X1_VITAL;

---- CELL AON_BUF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_BUF_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_BUF_X2 : entity is TRUE;
end AON_BUF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_BUF_X2 of AON_BUF_X2 is
  attribute VITAL_LEVEL1 of VITAL_AON_BUF_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_BUF_X2;

configuration CFG_AON_BUF_X2_VITAL of AON_BUF_X2 is
  for VITAL_AON_BUF_X2
  end for;
end CFG_AON_BUF_X2_VITAL;

---- CELL AON_BUF_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_BUF_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_BUF_X4 : entity is TRUE;
end AON_BUF_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_BUF_X4 of AON_BUF_X4 is
  attribute VITAL_LEVEL1 of VITAL_AON_BUF_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_BUF_X4;

configuration CFG_AON_BUF_X4_VITAL of AON_BUF_X4 is
  for VITAL_AON_BUF_X4
  end for;
end CFG_AON_BUF_X4_VITAL;

---- CELL AON_INV_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_INV_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_INV_X1 : entity is TRUE;
end AON_INV_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_INV_X1 of AON_INV_X1 is
  attribute VITAL_LEVEL1 of VITAL_AON_INV_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_INV_X1;

configuration CFG_AON_INV_X1_VITAL of AON_INV_X1 is
  for VITAL_AON_INV_X1
  end for;
end CFG_AON_INV_X1_VITAL;

---- CELL AON_INV_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_INV_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_INV_X2 : entity is TRUE;
end AON_INV_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_INV_X2 of AON_INV_X2 is
  attribute VITAL_LEVEL1 of VITAL_AON_INV_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_INV_X2;

configuration CFG_AON_INV_X2_VITAL of AON_INV_X2 is
  for VITAL_AON_INV_X2
  end for;
end CFG_AON_INV_X2_VITAL;

---- CELL AON_INV_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AON_INV_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of AON_INV_X4 : entity is TRUE;
end AON_INV_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_AON_INV_X4 of AON_INV_X4 is
  attribute VITAL_LEVEL1 of VITAL_AON_INV_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_AON_INV_X4;

configuration CFG_AON_INV_X4_VITAL of AON_INV_X4 is
  for VITAL_AON_INV_X4
  end for;
end CFG_AON_INV_X4_VITAL;

---- CELL HEADER_OE_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_OE_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_OE_X1 : entity is TRUE;
end HEADER_OE_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_HEADER_OE_X1 of HEADER_OE_X1 is
  attribute VITAL_LEVEL1 of VITAL_HEADER_OE_X1 : architecture is TRUE;

  SIGNAL SLEEP_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (SLEEP_ipd, SLEEP, tipd_SLEEP);
  end block;

  -- Behavior
  VITALBehavior : process (SLEEP_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS SLEEPOUT_zd                        : STD_LOGIC is Results(1);

    VARIABLE glitchData_SLEEPOUT             : VitalGlitchDataType;

  begin
    SLEEPOUT_zd := SLEEP_ipd;

    VitalPathDelay01 (
      OutSignal => SLEEPOUT,
      GlitchData => glitchData_SLEEPOUT,
      OutSignalName => "SLEEPOUT",
      OutTemp => SLEEPOUT_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (SLEEP_ipd'last_event, tpd_SLEEP_SLEEPOUT, TRUE)));

  end process;

end VITAL_HEADER_OE_X1;

configuration CFG_HEADER_OE_X1_VITAL of HEADER_OE_X1 is
  for VITAL_HEADER_OE_X1
  end for;
end CFG_HEADER_OE_X1_VITAL;

---- CELL HEADER_OE_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_OE_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_OE_X2 : entity is TRUE;
end HEADER_OE_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_HEADER_OE_X2 of HEADER_OE_X2 is
  attribute VITAL_LEVEL1 of VITAL_HEADER_OE_X2 : architecture is TRUE;

  SIGNAL SLEEP_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (SLEEP_ipd, SLEEP, tipd_SLEEP);
  end block;

  -- Behavior
  VITALBehavior : process (SLEEP_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS SLEEPOUT_zd                        : STD_LOGIC is Results(1);

    VARIABLE glitchData_SLEEPOUT             : VitalGlitchDataType;

  begin
    SLEEPOUT_zd := SLEEP_ipd;

    VitalPathDelay01 (
      OutSignal => SLEEPOUT,
      GlitchData => glitchData_SLEEPOUT,
      OutSignalName => "SLEEPOUT",
      OutTemp => SLEEPOUT_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (SLEEP_ipd'last_event, tpd_SLEEP_SLEEPOUT, TRUE)));

  end process;

end VITAL_HEADER_OE_X2;

configuration CFG_HEADER_OE_X2_VITAL of HEADER_OE_X2 is
  for VITAL_HEADER_OE_X2
  end for;
end CFG_HEADER_OE_X2_VITAL;

---- CELL HEADER_OE_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_OE_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_SLEEP_SLEEPOUT                       : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC;
    SLEEPOUT                                 : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_OE_X4 : entity is TRUE;
end HEADER_OE_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_HEADER_OE_X4 of HEADER_OE_X4 is
  attribute VITAL_LEVEL1 of VITAL_HEADER_OE_X4 : architecture is TRUE;

  SIGNAL SLEEP_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (SLEEP_ipd, SLEEP, tipd_SLEEP);
  end block;

  -- Behavior
  VITALBehavior : process (SLEEP_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS SLEEPOUT_zd                        : STD_LOGIC is Results(1);

    VARIABLE glitchData_SLEEPOUT             : VitalGlitchDataType;

  begin
    SLEEPOUT_zd := SLEEP_ipd;

    VitalPathDelay01 (
      OutSignal => SLEEPOUT,
      GlitchData => glitchData_SLEEPOUT,
      OutSignalName => "SLEEPOUT",
      OutTemp => SLEEPOUT_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (SLEEP_ipd'last_event, tpd_SLEEP_SLEEPOUT, TRUE)));

  end process;

end VITAL_HEADER_OE_X4;

configuration CFG_HEADER_OE_X4_VITAL of HEADER_OE_X4 is
  for VITAL_HEADER_OE_X4
  end for;
end CFG_HEADER_OE_X4_VITAL;

---- CELL HEADER_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_X1 : entity is TRUE;
end HEADER_X1;

---- CELL HEADER_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_X2 : entity is TRUE;
end HEADER_X2;

---- CELL HEADER_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HEADER_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_SLEEP                               : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    SLEEP                                    : in       STD_ULOGIC);
attribute VITAL_LEVEL0 of HEADER_X4 : entity is TRUE;
end HEADER_X4;

---- CELL ISO_FENCE0N_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0N_X1 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0N_X1 : entity is TRUE;
end ISO_FENCE0N_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0N_X1 of ISO_FENCE0N_X1 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0N_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0N_X1;

configuration CFG_ISO_FENCE0N_X1_VITAL of ISO_FENCE0N_X1 is
  for VITAL_ISO_FENCE0N_X1
  end for;
end CFG_ISO_FENCE0N_X1_VITAL;

---- CELL ISO_FENCE0N_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0N_X2 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0N_X2 : entity is TRUE;
end ISO_FENCE0N_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0N_X2 of ISO_FENCE0N_X2 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0N_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0N_X2;

configuration CFG_ISO_FENCE0N_X2_VITAL of ISO_FENCE0N_X2 is
  for VITAL_ISO_FENCE0N_X2
  end for;
end CFG_ISO_FENCE0N_X2_VITAL;

---- CELL ISO_FENCE0N_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0N_X4 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0N_X4 : entity is TRUE;
end ISO_FENCE0N_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0N_X4 of ISO_FENCE0N_X4 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0N_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0N_X4;

configuration CFG_ISO_FENCE0N_X4_VITAL of ISO_FENCE0N_X4 is
  for VITAL_ISO_FENCE0N_X4
  end for;
end CFG_ISO_FENCE0N_X4_VITAL;

---- CELL ISO_FENCE0_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0_X1 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0_X1 : entity is TRUE;
end ISO_FENCE0_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0_X1 of ISO_FENCE0_X1 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd OR EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0_X1;

configuration CFG_ISO_FENCE0_X1_VITAL of ISO_FENCE0_X1 is
  for VITAL_ISO_FENCE0_X1
  end for;
end CFG_ISO_FENCE0_X1_VITAL;

---- CELL ISO_FENCE0_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0_X2 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0_X2 : entity is TRUE;
end ISO_FENCE0_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0_X2 of ISO_FENCE0_X2 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd OR EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0_X2;

configuration CFG_ISO_FENCE0_X2_VITAL of ISO_FENCE0_X2 is
  for VITAL_ISO_FENCE0_X2
  end for;
end CFG_ISO_FENCE0_X2_VITAL;

---- CELL ISO_FENCE0_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE0_X4 is
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
attribute VITAL_LEVEL0 of ISO_FENCE0_X4 : entity is TRUE;
end ISO_FENCE0_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE0_X4 of ISO_FENCE0_X4 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE0_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd OR EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE0_X4;

configuration CFG_ISO_FENCE0_X4_VITAL of ISO_FENCE0_X4 is
  for VITAL_ISO_FENCE0_X4
  end for;
end CFG_ISO_FENCE0_X4_VITAL;

---- CELL ISO_FENCE1N_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1N_X1 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1N_X1 : entity is TRUE;
end ISO_FENCE1N_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1N_X1 of ISO_FENCE1N_X1 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1N_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd AND EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1N_X1;

configuration CFG_ISO_FENCE1N_X1_VITAL of ISO_FENCE1N_X1 is
  for VITAL_ISO_FENCE1N_X1
  end for;
end CFG_ISO_FENCE1N_X1_VITAL;

---- CELL ISO_FENCE1N_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1N_X2 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1N_X2 : entity is TRUE;
end ISO_FENCE1N_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1N_X2 of ISO_FENCE1N_X2 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1N_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd AND EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1N_X2;

configuration CFG_ISO_FENCE1N_X2_VITAL of ISO_FENCE1N_X2 is
  for VITAL_ISO_FENCE1N_X2
  end for;
end CFG_ISO_FENCE1N_X2_VITAL;

---- CELL ISO_FENCE1N_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1N_X4 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1N_X4 : entity is TRUE;
end ISO_FENCE1N_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1N_X4 of ISO_FENCE1N_X4 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1N_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (NOT (A_ipd AND EN_ipd));

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1N_X4;

configuration CFG_ISO_FENCE1N_X4_VITAL of ISO_FENCE1N_X4 is
  for VITAL_ISO_FENCE1N_X4
  end for;
end CFG_ISO_FENCE1N_X4_VITAL;

---- CELL ISO_FENCE1_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1_X1 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1_X1 : entity is TRUE;
end ISO_FENCE1_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1_X1 of ISO_FENCE1_X1 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd OR EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1_X1;

configuration CFG_ISO_FENCE1_X1_VITAL of ISO_FENCE1_X1 is
  for VITAL_ISO_FENCE1_X1
  end for;
end CFG_ISO_FENCE1_X1_VITAL;

---- CELL ISO_FENCE1_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1_X2 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1_X2 : entity is TRUE;
end ISO_FENCE1_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1_X2 of ISO_FENCE1_X2 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd OR EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1_X2;

configuration CFG_ISO_FENCE1_X2_VITAL of ISO_FENCE1_X2 is
  for VITAL_ISO_FENCE1_X2
  end for;
end CFG_ISO_FENCE1_X2_VITAL;

---- CELL ISO_FENCE1_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ISO_FENCE1_X4 is
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
attribute VITAL_LEVEL0 of ISO_FENCE1_X4 : entity is TRUE;
end ISO_FENCE1_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_ISO_FENCE1_X4 of ISO_FENCE1_X4 is
  attribute VITAL_LEVEL1 of VITAL_ISO_FENCE1_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL EN_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (EN_ipd, EN, tipd_EN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd OR EN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (EN_ipd'last_event, tpd_EN_Z, TRUE)));

  end process;

end VITAL_ISO_FENCE1_X4;

configuration CFG_ISO_FENCE1_X4_VITAL of ISO_FENCE1_X4 is
  for VITAL_ISO_FENCE1_X4
  end for;
end CFG_ISO_FENCE1_X4_VITAL;

---- CELL LS_HLEN_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HLEN_X1 is
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
attribute VITAL_LEVEL0 of LS_HLEN_X1 : entity is TRUE;
end LS_HLEN_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HLEN_X1 of LS_HLEN_X1 is
  attribute VITAL_LEVEL1 of VITAL_LS_HLEN_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_HLEN_X1;

configuration CFG_LS_HLEN_X1_VITAL of LS_HLEN_X1 is
  for VITAL_LS_HLEN_X1
  end for;
end CFG_LS_HLEN_X1_VITAL;

---- CELL LS_HLEN_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HLEN_X2 is
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
attribute VITAL_LEVEL0 of LS_HLEN_X2 : entity is TRUE;
end LS_HLEN_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HLEN_X2 of LS_HLEN_X2 is
  attribute VITAL_LEVEL1 of VITAL_LS_HLEN_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_HLEN_X2;

configuration CFG_LS_HLEN_X2_VITAL of LS_HLEN_X2 is
  for VITAL_LS_HLEN_X2
  end for;
end CFG_LS_HLEN_X2_VITAL;

---- CELL LS_HLEN_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HLEN_X4 is
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
attribute VITAL_LEVEL0 of LS_HLEN_X4 : entity is TRUE;
end LS_HLEN_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HLEN_X4 of LS_HLEN_X4 is
  attribute VITAL_LEVEL1 of VITAL_LS_HLEN_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_HLEN_X4;

configuration CFG_LS_HLEN_X4_VITAL of LS_HLEN_X4 is
  for VITAL_LS_HLEN_X4
  end for;
end CFG_LS_HLEN_X4_VITAL;

---- CELL LS_HL_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HL_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_HL_X1 : entity is TRUE;
end LS_HL_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HL_X1 of LS_HL_X1 is
  attribute VITAL_LEVEL1 of VITAL_LS_HL_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_HL_X1;

configuration CFG_LS_HL_X1_VITAL of LS_HL_X1 is
  for VITAL_LS_HL_X1
  end for;
end CFG_LS_HL_X1_VITAL;

---- CELL LS_HL_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HL_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_HL_X2 : entity is TRUE;
end LS_HL_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HL_X2 of LS_HL_X2 is
  attribute VITAL_LEVEL1 of VITAL_LS_HL_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_HL_X2;

configuration CFG_LS_HL_X2_VITAL of LS_HL_X2 is
  for VITAL_LS_HL_X2
  end for;
end CFG_LS_HL_X2_VITAL;

---- CELL LS_HL_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_HL_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_HL_X4 : entity is TRUE;
end LS_HL_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_HL_X4 of LS_HL_X4 is
  attribute VITAL_LEVEL1 of VITAL_LS_HL_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_HL_X4;

configuration CFG_LS_HL_X4_VITAL of LS_HL_X4 is
  for VITAL_LS_HL_X4
  end for;
end CFG_LS_HL_X4_VITAL;

---- CELL LS_LHEN_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LHEN_X1 is
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
attribute VITAL_LEVEL0 of LS_LHEN_X1 : entity is TRUE;
end LS_LHEN_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LHEN_X1 of LS_LHEN_X1 is
  attribute VITAL_LEVEL1 of VITAL_LS_LHEN_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_LHEN_X1;

configuration CFG_LS_LHEN_X1_VITAL of LS_LHEN_X1 is
  for VITAL_LS_LHEN_X1
  end for;
end CFG_LS_LHEN_X1_VITAL;

---- CELL LS_LHEN_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LHEN_X2 is
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
attribute VITAL_LEVEL0 of LS_LHEN_X2 : entity is TRUE;
end LS_LHEN_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LHEN_X2 of LS_LHEN_X2 is
  attribute VITAL_LEVEL1 of VITAL_LS_LHEN_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_LHEN_X2;

configuration CFG_LS_LHEN_X2_VITAL of LS_LHEN_X2 is
  for VITAL_LS_LHEN_X2
  end for;
end CFG_LS_LHEN_X2_VITAL;

---- CELL LS_LHEN_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LHEN_X4 is
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
attribute VITAL_LEVEL0 of LS_LHEN_X4 : entity is TRUE;
end LS_LHEN_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LHEN_X4 of LS_LHEN_X4 is
  attribute VITAL_LEVEL1 of VITAL_LS_LHEN_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL ISOLN_ipd       : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (ISOLN_ipd, ISOLN, tipd_ISOLN);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, ISOLN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd AND ISOLN_ipd);

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE),
        1 => (ISOLN_ipd'last_event, tpd_ISOLN_Z, TRUE)));

  end process;

end VITAL_LS_LHEN_X4;

configuration CFG_LS_LHEN_X4_VITAL of LS_LHEN_X4 is
  for VITAL_LS_LHEN_X4
  end for;
end CFG_LS_LHEN_X4_VITAL;

---- CELL LS_LH_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LH_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_LH_X1 : entity is TRUE;
end LS_LH_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LH_X1 of LS_LH_X1 is
  attribute VITAL_LEVEL1 of VITAL_LS_LH_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_LH_X1;

configuration CFG_LS_LH_X1_VITAL of LS_LH_X1 is
  for VITAL_LS_LH_X1
  end for;
end CFG_LS_LH_X1_VITAL;

---- CELL LS_LH_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LH_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_LH_X2 : entity is TRUE;
end LS_LH_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LH_X2 of LS_LH_X2 is
  attribute VITAL_LEVEL1 of VITAL_LS_LH_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_LH_X2;

configuration CFG_LS_LH_X2_VITAL of LS_LH_X2 is
  for VITAL_LS_LH_X2
  end for;
end CFG_LS_LH_X2_VITAL;

---- CELL LS_LH_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LS_LH_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LS_LH_X4 : entity is TRUE;
end LS_LH_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library LowPowerOpenCellLibrary;
use LowPowerOpenCellLibrary.Tables.all;
use LowPowerOpenCellLibrary.Attributes.all;
architecture VITAL_LS_LH_X4 of LS_LH_X4 is
  attribute VITAL_LEVEL1 of VITAL_LS_LH_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := A_ipd;

    VitalPathDelay01 (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_Z, TRUE)));

  end process;

end VITAL_LS_LH_X4;

configuration CFG_LS_LH_X4_VITAL of LS_LH_X4 is
  for VITAL_LS_LH_X4
  end for;
end CFG_LS_LH_X4_VITAL;

--
-- End of file
--
