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

---- CELL AND2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND2_X1 is
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
attribute VITAL_LEVEL0 of AND2_X1 : entity is TRUE;
end AND2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND2_X1 of AND2_X1 is
  attribute VITAL_LEVEL1 of VITAL_AND2_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd AND A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_AND2_X1;

configuration CFG_AND2_X1_VITAL of AND2_X1 is
  for VITAL_AND2_X1
  end for;
end CFG_AND2_X1_VITAL;

---- CELL AND2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND2_X2 is
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
attribute VITAL_LEVEL0 of AND2_X2 : entity is TRUE;
end AND2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND2_X2 of AND2_X2 is
  attribute VITAL_LEVEL1 of VITAL_AND2_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd AND A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_AND2_X2;

configuration CFG_AND2_X2_VITAL of AND2_X2 is
  for VITAL_AND2_X2
  end for;
end CFG_AND2_X2_VITAL;

---- CELL AND2_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND2_X4 is
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
attribute VITAL_LEVEL0 of AND2_X4 : entity is TRUE;
end AND2_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND2_X4 of AND2_X4 is
  attribute VITAL_LEVEL1 of VITAL_AND2_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd AND A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_AND2_X4;

configuration CFG_AND2_X4_VITAL of AND2_X4 is
  for VITAL_AND2_X4
  end for;
end CFG_AND2_X4_VITAL;

---- CELL AND3_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND3_X1 is
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
attribute VITAL_LEVEL0 of AND3_X1 : entity is TRUE;
end AND3_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND3_X1 of AND3_X1 is
  attribute VITAL_LEVEL1 of VITAL_AND3_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd AND A2_ipd) AND A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_AND3_X1;

configuration CFG_AND3_X1_VITAL of AND3_X1 is
  for VITAL_AND3_X1
  end for;
end CFG_AND3_X1_VITAL;

---- CELL AND3_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND3_X2 is
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
attribute VITAL_LEVEL0 of AND3_X2 : entity is TRUE;
end AND3_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND3_X2 of AND3_X2 is
  attribute VITAL_LEVEL1 of VITAL_AND3_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd AND A2_ipd) AND A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_AND3_X2;

configuration CFG_AND3_X2_VITAL of AND3_X2 is
  for VITAL_AND3_X2
  end for;
end CFG_AND3_X2_VITAL;

---- CELL AND3_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND3_X4 is
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
attribute VITAL_LEVEL0 of AND3_X4 : entity is TRUE;
end AND3_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND3_X4 of AND3_X4 is
  attribute VITAL_LEVEL1 of VITAL_AND3_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd AND A2_ipd) AND A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_AND3_X4;

configuration CFG_AND3_X4_VITAL of AND3_X4 is
  for VITAL_AND3_X4
  end for;
end CFG_AND3_X4_VITAL;

---- CELL AND4_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND4_X1 is
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
attribute VITAL_LEVEL0 of AND4_X1 : entity is TRUE;
end AND4_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND4_X1 of AND4_X1 is
  attribute VITAL_LEVEL1 of VITAL_AND4_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_AND4_X1;

configuration CFG_AND4_X1_VITAL of AND4_X1 is
  for VITAL_AND4_X1
  end for;
end CFG_AND4_X1_VITAL;

---- CELL AND4_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND4_X2 is
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
attribute VITAL_LEVEL0 of AND4_X2 : entity is TRUE;
end AND4_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND4_X2 of AND4_X2 is
  attribute VITAL_LEVEL1 of VITAL_AND4_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_AND4_X2;

configuration CFG_AND4_X2_VITAL of AND4_X2 is
  for VITAL_AND4_X2
  end for;
end CFG_AND4_X2_VITAL;

---- CELL AND4_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AND4_X4 is
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
attribute VITAL_LEVEL0 of AND4_X4 : entity is TRUE;
end AND4_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AND4_X4 of AND4_X4 is
  attribute VITAL_LEVEL1 of VITAL_AND4_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_AND4_X4;

configuration CFG_AND4_X4_VITAL of AND4_X4 is
  for VITAL_AND4_X4
  end for;
end CFG_AND4_X4_VITAL;

---- CELL ANTENNA_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity ANTENNA_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC);
attribute VITAL_LEVEL0 of ANTENNA_X1 : entity is TRUE;
end ANTENNA_X1;

---- CELL AOI211_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI211_X1 is
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
attribute VITAL_LEVEL0 of AOI211_X1 : entity is TRUE;
end AOI211_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI211_X1 of AOI211_X1 is
  attribute VITAL_LEVEL1 of VITAL_AOI211_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd AND C2_ipd) OR B_ipd) OR A_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_AOI211_X1;

configuration CFG_AOI211_X1_VITAL of AOI211_X1 is
  for VITAL_AOI211_X1
  end for;
end CFG_AOI211_X1_VITAL;

---- CELL AOI211_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI211_X2 is
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
attribute VITAL_LEVEL0 of AOI211_X2 : entity is TRUE;
end AOI211_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI211_X2 of AOI211_X2 is
  attribute VITAL_LEVEL1 of VITAL_AOI211_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd AND C2_ipd) OR B_ipd) OR A_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_AOI211_X2;

configuration CFG_AOI211_X2_VITAL of AOI211_X2 is
  for VITAL_AOI211_X2
  end for;
end CFG_AOI211_X2_VITAL;

---- CELL AOI211_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI211_X4 is
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
attribute VITAL_LEVEL0 of AOI211_X4 : entity is TRUE;
end AOI211_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI211_X4 of AOI211_X4 is
  attribute VITAL_LEVEL1 of VITAL_AOI211_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (NOT (NOT (((C1_ipd AND C2_ipd) OR B_ipd) OR A_ipd))));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT B_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT B_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((NOT A_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_AOI211_X4;

configuration CFG_AOI211_X4_VITAL of AOI211_X4 is
  for VITAL_AOI211_X4
  end for;
end CFG_AOI211_X4_VITAL;

---- CELL AOI21_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI21_X1 is
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
attribute VITAL_LEVEL0 of AOI21_X1 : entity is TRUE;
end AOI21_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI21_X1 of AOI21_X1 is
  attribute VITAL_LEVEL1 of VITAL_AOI21_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((NOT B1_ipd) AND (NOT B2_ipd)))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_AOI21_X1;

configuration CFG_AOI21_X1_VITAL of AOI21_X1 is
  for VITAL_AOI21_X1
  end for;
end CFG_AOI21_X1_VITAL;

---- CELL AOI21_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI21_X2 is
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
attribute VITAL_LEVEL0 of AOI21_X2 : entity is TRUE;
end AOI21_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI21_X2 of AOI21_X2 is
  attribute VITAL_LEVEL1 of VITAL_AOI21_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((NOT B1_ipd) AND (NOT B2_ipd)))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_AOI21_X2;

configuration CFG_AOI21_X2_VITAL of AOI21_X2 is
  for VITAL_AOI21_X2
  end for;
end CFG_AOI21_X2_VITAL;

---- CELL AOI21_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI21_X4 is
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
attribute VITAL_LEVEL0 of AOI21_X4 : entity is TRUE;
end AOI21_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI21_X4 of AOI21_X4 is
  attribute VITAL_LEVEL1 of VITAL_AOI21_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((NOT B1_ipd) AND (NOT B2_ipd)))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_AOI21_X4;

configuration CFG_AOI21_X4_VITAL of AOI21_X4 is
  for VITAL_AOI21_X4
  end for;
end CFG_AOI21_X4_VITAL;

---- CELL AOI221_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI221_X1 is
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
attribute VITAL_LEVEL0 of AOI221_X1 : entity is TRUE;
end AOI221_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI221_X1 of AOI221_X1 is
  attribute VITAL_LEVEL1 of VITAL_AOI221_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd AND C2_ipd) OR A_ipd) OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI221_X1;

configuration CFG_AOI221_X1_VITAL of AOI221_X1 is
  for VITAL_AOI221_X1
  end for;
end CFG_AOI221_X1_VITAL;

---- CELL AOI221_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI221_X2 is
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
attribute VITAL_LEVEL0 of AOI221_X2 : entity is TRUE;
end AOI221_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI221_X2 of AOI221_X2 is
  attribute VITAL_LEVEL1 of VITAL_AOI221_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd AND C2_ipd) OR A_ipd) OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI221_X2;

configuration CFG_AOI221_X2_VITAL of AOI221_X2 is
  for VITAL_AOI221_X2
  end for;
end CFG_AOI221_X2_VITAL;

---- CELL AOI221_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI221_X4 is
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
attribute VITAL_LEVEL0 of AOI221_X4 : entity is TRUE;
end AOI221_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI221_X4 of AOI221_X4 is
  attribute VITAL_LEVEL1 of VITAL_AOI221_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (NOT (NOT (((C1_ipd AND C2_ipd) OR A_ipd) OR (B1_ipd AND B2_ipd)))));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((NOT A_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI221_X4;

configuration CFG_AOI221_X4_VITAL of AOI221_X4 is
  for VITAL_AOI221_X4
  end for;
end CFG_AOI221_X4_VITAL;

---- CELL AOI222_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI222_X1 is
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
attribute VITAL_LEVEL0 of AOI222_X1 : entity is TRUE;
end AOI222_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI222_X1 of AOI222_X1 is
  attribute VITAL_LEVEL1 of VITAL_AOI222_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)) OR (C1_ipd AND C2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI222_X1;

configuration CFG_AOI222_X1_VITAL of AOI222_X1 is
  for VITAL_AOI222_X1
  end for;
end CFG_AOI222_X1_VITAL;

---- CELL AOI222_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI222_X2 is
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
attribute VITAL_LEVEL0 of AOI222_X2 : entity is TRUE;
end AOI222_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI222_X2 of AOI222_X2 is
  attribute VITAL_LEVEL1 of VITAL_AOI222_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)) OR (C1_ipd AND C2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI222_X2;

configuration CFG_AOI222_X2_VITAL of AOI222_X2 is
  for VITAL_AOI222_X2
  end for;
end CFG_AOI222_X2_VITAL;

---- CELL AOI222_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI222_X4 is
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
attribute VITAL_LEVEL0 of AOI222_X4 : entity is TRUE;
end AOI222_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI222_X4 of AOI222_X4 is
  attribute VITAL_LEVEL1 of VITAL_AOI222_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (NOT (NOT (((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)) OR (C1_ipd AND C2_ipd)))));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A2_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND (NOT C2_ipd)))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C2_ipd))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C2_ipd))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND C1_ipd))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd))='1'))));

  end process;

end VITAL_AOI222_X4;

configuration CFG_AOI222_X4_VITAL of AOI222_X4 is
  for VITAL_AOI222_X4
  end for;
end CFG_AOI222_X4_VITAL;

---- CELL AOI22_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI22_X1 is
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
attribute VITAL_LEVEL0 of AOI22_X1 : entity is TRUE;
end AOI22_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI22_X1 of AOI22_X1 is
  attribute VITAL_LEVEL1 of VITAL_AOI22_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B2_ipd))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B2_ipd))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B1_ipd))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B1_ipd))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd))='1'))));

  end process;

end VITAL_AOI22_X1;

configuration CFG_AOI22_X1_VITAL of AOI22_X1 is
  for VITAL_AOI22_X1
  end for;
end CFG_AOI22_X1_VITAL;

---- CELL AOI22_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI22_X2 is
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
attribute VITAL_LEVEL0 of AOI22_X2 : entity is TRUE;
end AOI22_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI22_X2 of AOI22_X2 is
  attribute VITAL_LEVEL1 of VITAL_AOI22_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B2_ipd))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B2_ipd))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B1_ipd))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B1_ipd))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd))='1'))));

  end process;

end VITAL_AOI22_X2;

configuration CFG_AOI22_X2_VITAL of AOI22_X2 is
  for VITAL_AOI22_X2
  end for;
end CFG_AOI22_X2_VITAL;

---- CELL AOI22_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity AOI22_X4 is
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
attribute VITAL_LEVEL0 of AOI22_X4 : entity is TRUE;
end AOI22_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_AOI22_X4 of AOI22_X4 is
  attribute VITAL_LEVEL1 of VITAL_AOI22_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) OR (B1_ipd AND B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A2_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B2_ipd))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B2_ipd))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B2_ipd))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND B1_ipd))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND B1_ipd))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd))='1'))));

  end process;

end VITAL_AOI22_X4;

configuration CFG_AOI22_X4_VITAL of AOI22_X4 is
  for VITAL_AOI22_X4
  end for;
end CFG_AOI22_X4_VITAL;

---- CELL BUF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X1 : entity is TRUE;
end BUF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X1 of BUF_X1 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X1 : architecture is TRUE;

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

end VITAL_BUF_X1;

configuration CFG_BUF_X1_VITAL of BUF_X1 is
  for VITAL_BUF_X1
  end for;
end CFG_BUF_X1_VITAL;

---- CELL BUF_X16 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X16 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X16 : entity is TRUE;
end BUF_X16;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X16 of BUF_X16 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X16 : architecture is TRUE;

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

end VITAL_BUF_X16;

configuration CFG_BUF_X16_VITAL of BUF_X16 is
  for VITAL_BUF_X16
  end for;
end CFG_BUF_X16_VITAL;

---- CELL BUF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X2 : entity is TRUE;
end BUF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X2 of BUF_X2 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X2 : architecture is TRUE;

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

end VITAL_BUF_X2;

configuration CFG_BUF_X2_VITAL of BUF_X2 is
  for VITAL_BUF_X2
  end for;
end CFG_BUF_X2_VITAL;

---- CELL BUF_X32 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X32 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X32 : entity is TRUE;
end BUF_X32;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X32 of BUF_X32 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X32 : architecture is TRUE;

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

end VITAL_BUF_X32;

configuration CFG_BUF_X32_VITAL of BUF_X32 is
  for VITAL_BUF_X32
  end for;
end CFG_BUF_X32_VITAL;

---- CELL BUF_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X4 : entity is TRUE;
end BUF_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X4 of BUF_X4 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X4 : architecture is TRUE;

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

end VITAL_BUF_X4;

configuration CFG_BUF_X4_VITAL of BUF_X4 is
  for VITAL_BUF_X4
  end for;
end CFG_BUF_X4_VITAL;

---- CELL BUF_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity BUF_X8 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of BUF_X8 : entity is TRUE;
end BUF_X8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_BUF_X8 of BUF_X8 is
  attribute VITAL_LEVEL1 of VITAL_BUF_X8 : architecture is TRUE;

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

end VITAL_BUF_X8;

configuration CFG_BUF_X8_VITAL of BUF_X8 is
  for VITAL_BUF_X8
  end for;
end CFG_BUF_X8_VITAL;

---- CELL CLKBUF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKBUF_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of CLKBUF_X1 : entity is TRUE;
end CLKBUF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKBUF_X1 of CLKBUF_X1 is
  attribute VITAL_LEVEL1 of VITAL_CLKBUF_X1 : architecture is TRUE;

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

end VITAL_CLKBUF_X1;

configuration CFG_CLKBUF_X1_VITAL of CLKBUF_X1 is
  for VITAL_CLKBUF_X1
  end for;
end CFG_CLKBUF_X1_VITAL;

---- CELL CLKBUF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKBUF_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of CLKBUF_X2 : entity is TRUE;
end CLKBUF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKBUF_X2 of CLKBUF_X2 is
  attribute VITAL_LEVEL1 of VITAL_CLKBUF_X2 : architecture is TRUE;

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

end VITAL_CLKBUF_X2;

configuration CFG_CLKBUF_X2_VITAL of CLKBUF_X2 is
  for VITAL_CLKBUF_X2
  end for;
end CFG_CLKBUF_X2_VITAL;

---- CELL CLKBUF_X3 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKBUF_X3 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_Z                                  : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of CLKBUF_X3 : entity is TRUE;
end CLKBUF_X3;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKBUF_X3 of CLKBUF_X3 is
  attribute VITAL_LEVEL1 of VITAL_CLKBUF_X3 : architecture is TRUE;

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

end VITAL_CLKBUF_X3;

configuration CFG_CLKBUF_X3_VITAL of CLKBUF_X3 is
  for VITAL_CLKBUF_X3
  end for;
end CFG_CLKBUF_X3_VITAL;

---- CELL CLKGATETST_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATETST_X1 is
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
attribute VITAL_LEVEL0 of CLKGATETST_X1 : entity is TRUE;
end CLKGATETST_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATETST_X1 of CLKGATETST_X1 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATETST_X1 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATETST_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_E_CK_posedge;
    nextstate := (E_dly OR SE_dly);
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATETST_X1_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (IQ AND CK_dly);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATETST_X1_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP, (TO_X01((E_dly AND SE_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP, (TO_X01(((NOT E_dly) AND SE_dly))='1')),
        2 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge, (TO_X01(((NOT E_dly) AND (NOT SE_dly)))='1')),
        3 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP, (TO_X01((E_dly AND (NOT SE_dly)))='1'))));

  end process;

end VITAL_CLKGATETST_X1;

configuration CFG_CLKGATETST_X1_VITAL of CLKGATETST_X1 is
  for VITAL_CLKGATETST_X1
  end for;
end CFG_CLKGATETST_X1_VITAL;

---- CELL CLKGATETST_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATETST_X2 is
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
attribute VITAL_LEVEL0 of CLKGATETST_X2 : entity is TRUE;
end CLKGATETST_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATETST_X2 of CLKGATETST_X2 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATETST_X2 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATETST_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_E_CK_posedge;
    nextstate := (E_dly OR SE_dly);
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATETST_X2_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (IQ AND CK_dly);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATETST_X2_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP, (TO_X01((E_dly AND SE_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP, (TO_X01(((NOT E_dly) AND SE_dly))='1')),
        2 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge, (TO_X01(((NOT E_dly) AND (NOT SE_dly)))='1')),
        3 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP, (TO_X01((E_dly AND (NOT SE_dly)))='1'))));

  end process;

end VITAL_CLKGATETST_X2;

configuration CFG_CLKGATETST_X2_VITAL of CLKGATETST_X2 is
  for VITAL_CLKGATETST_X2
  end for;
end CFG_CLKGATETST_X2_VITAL;

---- CELL CLKGATETST_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATETST_X4 is
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
attribute VITAL_LEVEL0 of CLKGATETST_X4 : entity is TRUE;
end CLKGATETST_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATETST_X4 of CLKGATETST_X4 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATETST_X4 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATETST_X4",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X4",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X4",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_E_CK_posedge;
    nextstate := (E_dly OR SE_dly);
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATETST_X4_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (IQ AND CK_dly);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATETST_X4_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP, (TO_X01((E_dly AND SE_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP, (TO_X01(((NOT E_dly) AND SE_dly))='1')),
        2 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge, (TO_X01(((NOT E_dly) AND (NOT SE_dly)))='1')),
        3 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP, (TO_X01((E_dly AND (NOT SE_dly)))='1'))));

  end process;

end VITAL_CLKGATETST_X4;

configuration CFG_CLKGATETST_X4_VITAL of CLKGATETST_X4 is
  for VITAL_CLKGATETST_X4
  end for;
end CFG_CLKGATETST_X4_VITAL;

---- CELL CLKGATETST_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATETST_X8 is
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
attribute VITAL_LEVEL0 of CLKGATETST_X8 : entity is TRUE;
end CLKGATETST_X8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATETST_X8 of CLKGATETST_X8 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATETST_X8 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATETST_X8",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X8",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATETST_X8",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_E_CK_posedge;
    nextstate := (E_dly OR SE_dly);
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATETST_X8_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (IQ AND CK_dly);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATETST_X8_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_1_CP, (TO_X01((E_dly AND SE_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_1_CP, (TO_X01(((NOT E_dly) AND SE_dly))='1')),
        2 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_AN_OP_SE_EQ_0_CP_negedge, (TO_X01(((NOT E_dly) AND (NOT SE_dly)))='1')),
        3 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP_AN_OP_SE_EQ_0_CP, (TO_X01((E_dly AND (NOT SE_dly)))='1'))));

  end process;

end VITAL_CLKGATETST_X8;

configuration CFG_CLKGATETST_X8_VITAL of CLKGATETST_X8 is
  for VITAL_CLKGATETST_X8
  end for;
end CFG_CLKGATETST_X8_VITAL;

---- CELL CLKGATE_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATE_X1 is
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
attribute VITAL_LEVEL0 of CLKGATE_X1 : entity is TRUE;
end CLKGATE_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATE_X1 of CLKGATE_X1 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATE_X1 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATE_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATE_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_E_CK_posedge;
    nextstate := E_dly;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATE_X1_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (CK_dly AND IQ);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATE_X1_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_negedge, (TO_X01((NOT E_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP, (TO_X01(E_dly)='1'))));

  end process;

end VITAL_CLKGATE_X1;

configuration CFG_CLKGATE_X1_VITAL of CLKGATE_X1 is
  for VITAL_CLKGATE_X1
  end for;
end CFG_CLKGATE_X1_VITAL;

---- CELL CLKGATE_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATE_X2 is
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
attribute VITAL_LEVEL0 of CLKGATE_X2 : entity is TRUE;
end CLKGATE_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATE_X2 of CLKGATE_X2 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATE_X2 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATE_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATE_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_E_CK_posedge;
    nextstate := E_dly;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATE_X2_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (CK_dly AND IQ);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATE_X2_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_negedge, (TO_X01((NOT E_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP, (TO_X01(E_dly)='1'))));

  end process;

end VITAL_CLKGATE_X2;

configuration CFG_CLKGATE_X2_VITAL of CLKGATE_X2 is
  for VITAL_CLKGATE_X2
  end for;
end CFG_CLKGATE_X2_VITAL;

---- CELL CLKGATE_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATE_X4 is
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
attribute VITAL_LEVEL0 of CLKGATE_X4 : entity is TRUE;
end CLKGATE_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATE_X4 of CLKGATE_X4 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATE_X4 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATE_X4",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATE_X4",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_E_CK_posedge;
    nextstate := E_dly;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATE_X4_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (CK_dly AND IQ);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATE_X4_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_negedge, (TO_X01((NOT E_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP, (TO_X01(E_dly)='1'))));

  end process;

end VITAL_CLKGATE_X4;

configuration CFG_CLKGATE_X4_VITAL of CLKGATE_X4 is
  for VITAL_CLKGATE_X4
  end for;
end CFG_CLKGATE_X4_VITAL;

---- CELL CLKGATE_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity CLKGATE_X8 is
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
attribute VITAL_LEVEL0 of CLKGATE_X8 : entity is TRUE;
end CLKGATE_X8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_CLKGATE_X8 of CLKGATE_X8 is
  attribute VITAL_LEVEL1 of VITAL_CLKGATE_X8 : architecture is TRUE;

  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL E_ipd           : STD_ULOGIC := 'X';
  SIGNAL E_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (CK_ipd, CK, tipd_CK);
    VitalWireDelay (E_ipd, E, tipd_E);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (E_dly, E_ipd, tisd_E_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (E_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_E_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_E_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQn                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQn                             : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS GCK_zd                             : STD_LOGIC is Results(1);

    VARIABLE glitchData_GCK                  : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/CLKGATE_X8",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_E_CK_posedge,
        TimingData                => Tmkr_E_CK_posedge,
        TestSignal                => E_dly,
        TestSignalName            => "E",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_E_CK_posedge_posedge,
        SetupLow                  => tsetup_E_CK_negedge_posedge,
        HoldHigh                  => thold_E_CK_posedge_posedge,
        HoldLow                   => thold_E_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/CLKGATE_X8",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_E_CK_posedge;
    nextstate := E_dly;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => CLKGATE_X8_IQ_tab,
      DataIn => (CK_dly, nextstate));
    IQ := Violation XOR IQ;
    GCK_zd := (CK_dly AND IQ);
    VitalStateTable (
      Result => IQn,
      PreviousDataIn => PrevData_IQn,
      StateTable => CLKGATE_X8_IQn_tab,
      DataIn => (CK_dly, nextstate));
    IQn := Violation XOR IQn;

    VitalPathDelay01 (
      OutSignal => GCK,
      GlitchData => glitchData_GCK,
      OutSignalName => "GCK",
      OutTemp => GCK_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_0_CP_negedge, (TO_X01((NOT E_dly))='1')),
        1 => (CK_dly'last_event, tpd_CK_GCK_OP_E_EQ_1_CP, (TO_X01(E_dly)='1'))));

  end process;

end VITAL_CLKGATE_X8;

configuration CFG_CLKGATE_X8_VITAL of CLKGATE_X8 is
  for VITAL_CLKGATE_X8
  end for;
end CFG_CLKGATE_X8_VITAL;

---- CELL DFFRS_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFRS_X1 is
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
attribute VITAL_LEVEL0 of DFFRS_X1 : entity is TRUE;
end DFFRS_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFRS_X1 of DFFRS_X1 is
  attribute VITAL_LEVEL1 of VITAL_DFFRS_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, RN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_AND_SN_eq3_1        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_AND_SN_eq3_1        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_RN_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SN_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_SN_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN_SN_eq3_1,
        PeriodData                => PInfo_RN_SN_eq3_1,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_RN_CK_SN_eq3_1_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_SN_eq3_1_posedge,
        Removal                   => tremoval_RN_CK_posedge_SN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_AND_SN_eq3_1,
        PeriodData                => PInfo_CK_RN_AND_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_AND_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_AND_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN_RN_eq3_1,
        PeriodData                => PInfo_SN_RN_eq3_1,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SN_CK_RN_eq3_1_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_RN_eq3_1_posedge,
        Removal                   => tremoval_SN_CK_posedge_RN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_CK_RN_AND_SN_eq3_1_posedge or Pviol_RN_SN_eq3_1 or Tviol_RN_CK_SN_eq3_1_posedge or Pviol_CK_RN_AND_SN_eq3_1 or Pviol_SN_RN_eq3_1 or Tviol_SN_CK_RN_eq3_1_posedge;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFRS_X1_IQN_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFRS_X1_IQ_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND SN_dly))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND SN_dly))='1')),
        5 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)))='1')),
        6 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND RN_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP, (TO_X01(((CK_dly AND D_dly) AND (NOT RN_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)))='1')),
        9 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP, (TO_X01(((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND RN_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND RN_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((CK_dly AND D_dly) AND (NOT SN_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND D_dly) AND (NOT SN_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND SN_dly))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((CK_dly AND (NOT D_dly)) AND (NOT SN_dly)))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND SN_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SN_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND SN_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND RN_dly))='1')),
        10 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND RN_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND RN_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly))='1'))));

  end process;

end VITAL_DFFRS_X1;

configuration CFG_DFFRS_X1_VITAL of DFFRS_X1 is
  for VITAL_DFFRS_X1
  end for;
end CFG_DFFRS_X1_VITAL;

---- CELL DFFRS_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFRS_X2 is
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
attribute VITAL_LEVEL0 of DFFRS_X2 : entity is TRUE;
end DFFRS_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFRS_X2 of DFFRS_X2 is
  attribute VITAL_LEVEL1 of VITAL_DFFRS_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, RN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_AND_SN_eq3_1        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_AND_SN_eq3_1        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_RN_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SN_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_SN_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN_SN_eq3_1,
        PeriodData                => PInfo_RN_SN_eq3_1,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_RN_CK_SN_eq3_1_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_SN_eq3_1_posedge,
        Removal                   => tremoval_RN_CK_posedge_SN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_AND_SN_eq3_1,
        PeriodData                => PInfo_CK_RN_AND_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_AND_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_AND_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN_RN_eq3_1,
        PeriodData                => PInfo_SN_RN_eq3_1,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SN_CK_RN_eq3_1_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_RN_eq3_1_posedge,
        Removal                   => tremoval_SN_CK_posedge_RN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_CK_RN_AND_SN_eq3_1_posedge or Pviol_RN_SN_eq3_1 or Tviol_RN_CK_SN_eq3_1_posedge or Pviol_CK_RN_AND_SN_eq3_1 or Pviol_SN_RN_eq3_1 or Tviol_SN_CK_RN_eq3_1_posedge;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFRS_X2_IQN_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFRS_X2_IQ_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND SN_dly))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND SN_dly))='1')),
        5 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)))='1')),
        6 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND RN_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP, (TO_X01(((CK_dly AND D_dly) AND (NOT RN_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)))='1')),
        9 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP, (TO_X01(((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND RN_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND RN_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((CK_dly AND D_dly) AND (NOT SN_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND D_dly) AND (NOT SN_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND SN_dly))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((CK_dly AND (NOT D_dly)) AND (NOT SN_dly)))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND SN_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SN_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND SN_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND D_dly) AND RN_dly))='1')),
        10 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND (NOT D_dly)) AND RN_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01(((CK_dly AND D_dly) AND RN_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_negedge, (TO_X01((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly))='1'))));

  end process;

end VITAL_DFFRS_X2;

configuration CFG_DFFRS_X2_VITAL of DFFRS_X2 is
  for VITAL_DFFRS_X2
  end for;
end CFG_DFFRS_X2_VITAL;

---- CELL DFFR_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFR_X1 is
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
attribute VITAL_LEVEL0 of DFFR_X1 : entity is TRUE;
end DFFR_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFR_X1 of DFFR_X1 is
  attribute VITAL_LEVEL1 of VITAL_DFFR_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (RN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_eq3_1_posedge     : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_eq3_1_posedge      : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_RN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_posedge,
        TimingData                => Tmkr_RN_CK_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_posedge,
        Removal                   => tremoval_RN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN,
        PeriodData                => PInfo_RN,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_eq3_1,
        PeriodData                => PInfo_CK_RN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_RN_CK_posedge or Tviol_D_CK_RN_eq3_1_posedge or Pviol_RN or Pviol_CK_RN_eq3_1;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFR_X1_IQN_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFR_X1_IQ_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));

  end process;

end VITAL_DFFR_X1;

configuration CFG_DFFR_X1_VITAL of DFFR_X1 is
  for VITAL_DFFR_X1
  end for;
end CFG_DFFR_X1_VITAL;

---- CELL DFFR_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFR_X2 is
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
attribute VITAL_LEVEL0 of DFFR_X2 : entity is TRUE;
end DFFR_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFR_X2 of DFFR_X2 is
  attribute VITAL_LEVEL1 of VITAL_DFFR_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (RN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_eq3_1_posedge     : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_eq3_1_posedge      : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_RN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_posedge,
        TimingData                => Tmkr_RN_CK_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_posedge,
        Removal                   => tremoval_RN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN,
        PeriodData                => PInfo_RN,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_eq3_1,
        PeriodData                => PInfo_CK_RN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_RN_CK_posedge or Tviol_D_CK_RN_eq3_1_posedge or Pviol_RN or Pviol_CK_RN_eq3_1;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFR_X2_IQN_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFR_X2_IQ_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));

  end process;

end VITAL_DFFR_X2;

configuration CFG_DFFR_X2_VITAL of DFFR_X2 is
  for VITAL_DFFR_X2
  end for;
end CFG_DFFR_X2_VITAL;

---- CELL DFFS_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFS_X1 is
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
attribute VITAL_LEVEL0 of DFFS_X1 : entity is TRUE;
end DFFS_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFS_X1 of DFFS_X1 is
  attribute VITAL_LEVEL1 of VITAL_DFFS_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_SN_eq3_1_posedge     : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_SN_eq3_1_posedge      : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_SN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_SN_eq3_1,
        PeriodData                => PInfo_CK_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_posedge,
        TimingData                => Tmkr_SN_CK_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_posedge,
        Removal                   => tremoval_SN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN,
        PeriodData                => PInfo_SN,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_CK_SN_eq3_1_posedge or Pviol_CK_SN_eq3_1 or Tviol_SN_CK_posedge or Pviol_SN;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFS_X1_IQN_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFS_X1_IQ_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));

  end process;

end VITAL_DFFS_X1;

configuration CFG_DFFS_X1_VITAL of DFFS_X1 is
  for VITAL_DFFS_X1
  end for;
end CFG_DFFS_X1_VITAL;

---- CELL DFFS_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFFS_X2 is
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
attribute VITAL_LEVEL0 of DFFS_X2 : entity is TRUE;
end DFFS_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFFS_X2 of DFFS_X2 is
  attribute VITAL_LEVEL1 of VITAL_DFFS_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_SN_eq3_1_posedge     : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_SN_eq3_1_posedge      : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_SN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_SN_eq3_1,
        PeriodData                => PInfo_CK_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_posedge,
        TimingData                => Tmkr_SN_CK_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_posedge,
        Removal                   => tremoval_SN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN,
        PeriodData                => PInfo_SN,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/DFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_CK_SN_eq3_1_posedge or Pviol_CK_SN_eq3_1 or Tviol_SN_CK_posedge or Pviol_SN;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFFS_X2_IQN_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFFS_X2_IQ_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01((CK_dly AND D_dly))='1')),
        2 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01((CK_dly AND (NOT D_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_negedge, (TO_X01(((NOT CK_dly) AND (NOT D_dly)))='1')),
        4 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_negedge, (TO_X01(((NOT CK_dly) AND D_dly))='1'))));

  end process;

end VITAL_DFFS_X2;

configuration CFG_DFFS_X2_VITAL of DFFS_X2 is
  for VITAL_DFFS_X2
  end for;
end CFG_DFFS_X2_VITAL;

---- CELL DFF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFF_X1 is
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
attribute VITAL_LEVEL0 of DFF_X1 : entity is TRUE;
end DFF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFF_X1 of DFF_X1 is
  attribute VITAL_LEVEL1 of VITAL_DFF_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_posedge,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_posedge,
        TimingData                => Tmkr_D_CK_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_posedge,
        SetupLow                  => tsetup_D_CK_negedge_posedge,
        HoldHigh                  => thold_D_CK_posedge_posedge,
        HoldLow                   => thold_D_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_D_CK_posedge;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFF_X1_IQN_tab,
      DataIn => (clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFF_X1_IQ_tab,
      DataIn => (clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE)));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE)));

  end process;

end VITAL_DFF_X1;

configuration CFG_DFF_X1_VITAL of DFF_X1 is
  for VITAL_DFF_X1
  end for;
end CFG_DFF_X1_VITAL;

---- CELL DFF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DFF_X2 is
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
attribute VITAL_LEVEL0 of DFF_X2 : entity is TRUE;
end DFF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DFF_X2 of DFF_X2 is
  attribute VITAL_LEVEL1 of VITAL_DFF_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_posedge               : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_posedge,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_posedge,
        TimingData                => Tmkr_D_CK_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_posedge,
        SetupLow                  => tsetup_D_CK_negedge_posedge,
        HoldHigh                  => thold_D_CK_posedge_posedge,
        HoldLow                   => thold_D_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/DFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_D_CK_posedge;
    nextstate := D_dly;
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DFF_X2_IQN_tab,
      DataIn => (clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DFF_X2_IQ_tab,
      DataIn => (clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE)));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE)));

  end process;

end VITAL_DFF_X2;

configuration CFG_DFF_X2_VITAL of DFF_X2 is
  for VITAL_DFF_X2
  end for;
end CFG_DFF_X2_VITAL;

---- CELL DLH_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DLH_X1 is
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
attribute VITAL_LEVEL0 of DLH_X1 : entity is TRUE;
end DLH_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DLH_X1 of DLH_X1 is
  attribute VITAL_LEVEL1 of VITAL_DLH_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL G_ipd           : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL G_dly           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (G_ipd, G, tipd_G);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_G);
    VitalSignalDelay (G_dly, G_ipd, ticd_G);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, G_dly)
    VARIABLE Tviol_D_G_negedge               : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_G_negedge                : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_G                         : STD_ULOGIC := '0';
    VARIABLE PInfo_G                         : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_G,
        PeriodData                => PInfo_G,
        TestSignal                => G_dly,
        TestSignalName            => "G",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_G_posedge,
        PulseWidthLow             => 0.0 ns,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DLH_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_G_negedge,
        TimingData                => Tmkr_D_G_negedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => G_dly,
        RefSignalName             => "G",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_G_posedge_negedge,
        SetupLow                  => tsetup_D_G_negedge_negedge,
        HoldHigh                  => thold_D_G_posedge_negedge,
        HoldLow                   => thold_D_G_negedge_negedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/DLH_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_G or Tviol_D_G_negedge;
    nextstate := D_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DLH_X1_IQN_tab,
      DataIn => (G_dly, nextstate));
    IQN := Violation XOR IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DLH_X1_IQ_tab,
      DataIn => (G_dly, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (D_dly'last_event, tpd_D_Q, TRUE),
        1 => (G_dly'last_event, tpd_G_Q_posedge, TRUE)));

  end process;

end VITAL_DLH_X1;

configuration CFG_DLH_X1_VITAL of DLH_X1 is
  for VITAL_DLH_X1
  end for;
end CFG_DLH_X1_VITAL;

---- CELL DLH_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DLH_X2 is
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
attribute VITAL_LEVEL0 of DLH_X2 : entity is TRUE;
end DLH_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DLH_X2 of DLH_X2 is
  attribute VITAL_LEVEL1 of VITAL_DLH_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL G_ipd           : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL G_dly           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (G_ipd, G, tipd_G);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_G);
    VitalSignalDelay (G_dly, G_ipd, ticd_G);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, G_dly)
    VARIABLE Tviol_D_G_negedge               : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_G_negedge                : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_G                         : STD_ULOGIC := '0';
    VARIABLE PInfo_G                         : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_G,
        PeriodData                => PInfo_G,
        TestSignal                => G_dly,
        TestSignalName            => "G",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_G_posedge,
        PulseWidthLow             => 0.0 ns,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DLH_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_G_negedge,
        TimingData                => Tmkr_D_G_negedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => G_dly,
        RefSignalName             => "G",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_G_posedge_negedge,
        SetupLow                  => tsetup_D_G_negedge_negedge,
        HoldHigh                  => thold_D_G_posedge_negedge,
        HoldLow                   => thold_D_G_negedge_negedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/DLH_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_G or Tviol_D_G_negedge;
    nextstate := D_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DLH_X2_IQN_tab,
      DataIn => (G_dly, nextstate));
    IQN := Violation XOR IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DLH_X2_IQ_tab,
      DataIn => (G_dly, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (D_dly'last_event, tpd_D_Q, TRUE),
        1 => (G_dly'last_event, tpd_G_Q_posedge, TRUE)));

  end process;

end VITAL_DLH_X2;

configuration CFG_DLH_X2_VITAL of DLH_X2 is
  for VITAL_DLH_X2
  end for;
end CFG_DLH_X2_VITAL;

---- CELL DLL_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DLL_X1 is
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
attribute VITAL_LEVEL0 of DLL_X1 : entity is TRUE;
end DLL_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DLL_X1 of DLL_X1 is
  attribute VITAL_LEVEL1 of VITAL_DLL_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL GN_ipd          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL GN_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (GN_ipd, GN, tipd_GN);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_GN);
    VitalSignalDelay (GN_dly, GN_ipd, ticd_GN);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, GN_dly)
    VARIABLE Tviol_D_GN_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_GN_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_GN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_GN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_GN_posedge,
        TimingData                => Tmkr_D_GN_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => GN_dly,
        RefSignalName             => "GN",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_GN_posedge_posedge,
        SetupLow                  => tsetup_D_GN_negedge_posedge,
        HoldHigh                  => thold_D_GN_posedge_posedge,
        HoldLow                   => thold_D_GN_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/DLL_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_GN,
        PeriodData                => PInfo_GN,
        TestSignal                => GN_dly,
        TestSignalName            => "GN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_GN_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DLL_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_GN_posedge or Pviol_GN;
    nextstate := D_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DLL_X1_IQN_tab,
      DataIn => (GN_dly, nextstate));
    IQN := Violation XOR IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DLL_X1_IQ_tab,
      DataIn => (GN_dly, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (D_dly'last_event, tpd_D_Q, TRUE),
        1 => (GN_dly'last_event, tpd_GN_Q_negedge, TRUE)));

  end process;

end VITAL_DLL_X1;

configuration CFG_DLL_X1_VITAL of DLL_X1 is
  for VITAL_DLL_X1
  end for;
end CFG_DLL_X1_VITAL;

---- CELL DLL_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity DLL_X2 is
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
attribute VITAL_LEVEL0 of DLL_X2 : entity is TRUE;
end DLL_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_DLL_X2 of DLL_X2 is
  attribute VITAL_LEVEL1 of VITAL_DLL_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL GN_ipd          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL GN_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (GN_ipd, GN, tipd_GN);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_GN);
    VitalSignalDelay (GN_dly, GN_ipd, ticd_GN);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, GN_dly)
    VARIABLE Tviol_D_GN_posedge              : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_GN_posedge               : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_GN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_GN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_GN_posedge,
        TimingData                => Tmkr_D_GN_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => GN_dly,
        RefSignalName             => "GN",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_GN_posedge_posedge,
        SetupLow                  => tsetup_D_GN_negedge_posedge,
        HoldHigh                  => thold_D_GN_posedge_posedge,
        HoldLow                   => thold_D_GN_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/DLL_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_GN,
        PeriodData                => PInfo_GN,
        TestSignal                => GN_dly,
        TestSignalName            => "GN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_GN_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/DLL_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_D_GN_posedge or Pviol_GN;
    nextstate := D_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => DLL_X2_IQN_tab,
      DataIn => (GN_dly, nextstate));
    IQN := Violation XOR IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => DLL_X2_IQ_tab,
      DataIn => (GN_dly, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (D_dly'last_event, tpd_D_Q, TRUE),
        1 => (GN_dly'last_event, tpd_GN_Q_negedge, TRUE)));

  end process;

end VITAL_DLL_X2;

configuration CFG_DLL_X2_VITAL of DLL_X2 is
  for VITAL_DLL_X2
  end for;
end CFG_DLL_X2_VITAL;

---- CELL FA_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FA_X1 is
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
attribute VITAL_LEVEL0 of FA_X1 : entity is TRUE;
end FA_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_FA_X1 of FA_X1 is
  attribute VITAL_LEVEL1 of VITAL_FA_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL CI_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (CI_ipd, CI, tipd_CI);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, CI_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS CO_zd                              : STD_LOGIC is Results(1);
    ALIAS S_zd                               : STD_LOGIC is Results(2);

    VARIABLE glitchData_S                    : VitalGlitchDataType;
    VARIABLE glitchData_CO                   : VitalGlitchDataType;

  begin
    S_zd := (CI_ipd XOR (A_ipd XOR B_ipd));
    CO_zd := ((A_ipd AND B_ipd) OR (CI_ipd AND (A_ipd OR B_ipd)));

    VitalPathDelay01 (
      OutSignal => S,
      GlitchData => glitchData_S,
      OutSignalName => "S",
      OutTemp => S_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_0_CP_AN_OP_CI_EQ_1_CP, (TO_X01(((NOT B_ipd) AND CI_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_0_CP_AN_OP_CI_EQ_0_CP, (TO_X01(((NOT B_ipd) AND (NOT CI_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_1_CP_AN_OP_CI_EQ_1_CP, (TO_X01((B_ipd AND CI_ipd))='1')),
        3 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_1_CP_AN_OP_CI_EQ_0_CP, (TO_X01((B_ipd AND (NOT CI_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_0_CP_AN_OP_CI_EQ_0_CP, (TO_X01(((NOT A_ipd) AND (NOT CI_ipd)))='1')),
        5 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_1_CP_AN_OP_CI_EQ_0_CP, (TO_X01((A_ipd AND (NOT CI_ipd)))='1')),
        6 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_1_CP_AN_OP_CI_EQ_1_CP, (TO_X01((A_ipd AND CI_ipd))='1')),
        7 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_0_CP_AN_OP_CI_EQ_1_CP, (TO_X01(((NOT A_ipd) AND CI_ipd))='1')),
        8 => (CI_ipd'last_event, tpd_CI_S_OP_A_EQ_1_CP_AN_OP_B_EQ_1_CP, (TO_X01((A_ipd AND B_ipd))='1')),
        9 => (CI_ipd'last_event, tpd_CI_S_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP, (TO_X01((A_ipd AND (NOT B_ipd)))='1')),
        10 => (CI_ipd'last_event, tpd_CI_S_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP, (TO_X01(((NOT A_ipd) AND B_ipd))='1')),
        11 => (CI_ipd'last_event, tpd_CI_S_OP_A_EQ_0_CP_AN_OP_B_EQ_0_CP, (TO_X01(((NOT A_ipd) AND (NOT B_ipd)))='1'))));
    VitalPathDelay01 (
      OutSignal => CO,
      GlitchData => glitchData_CO,
      OutSignalName => "CO",
      OutTemp => CO_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_CO_OP_B_EQ_0_CP_AN_OP_CI_EQ_1_CP, (TO_X01(((NOT B_ipd) AND CI_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_CO_OP_B_EQ_1_CP_AN_OP_CI_EQ_0_CP, (TO_X01((B_ipd AND (NOT CI_ipd)))='1')),
        2 => (B_ipd'last_event, tpd_B_CO_OP_A_EQ_1_CP_AN_OP_CI_EQ_0_CP, (TO_X01((A_ipd AND (NOT CI_ipd)))='1')),
        3 => (B_ipd'last_event, tpd_B_CO_OP_A_EQ_0_CP_AN_OP_CI_EQ_1_CP, (TO_X01(((NOT A_ipd) AND CI_ipd))='1')),
        4 => (CI_ipd'last_event, tpd_CI_CO_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP, (TO_X01((A_ipd AND (NOT B_ipd)))='1')),
        5 => (CI_ipd'last_event, tpd_CI_CO_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP, (TO_X01(((NOT A_ipd) AND B_ipd))='1'))));

  end process;

end VITAL_FA_X1;

configuration CFG_FA_X1_VITAL of FA_X1 is
  for VITAL_FA_X1
  end for;
end CFG_FA_X1_VITAL;

-- entity declaration --
entity FILLCELL_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X1 : entity is TRUE;
end FILLCELL_X1;

---- CELL FILLCELL_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FILLCELL_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X2 : entity is TRUE;
end FILLCELL_X2;

---- CELL FILLCELL_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FILLCELL_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X4 : entity is TRUE;
end FILLCELL_X4;

---- CELL FILLCELL_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FILLCELL_X8 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X8 : entity is TRUE;
end FILLCELL_X8;

---- CELL FILLCELL_X16 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FILLCELL_X16 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X16 : entity is TRUE;
end FILLCELL_X16;

---- CELL FILLCELL_X32 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity FILLCELL_X32 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
attribute VITAL_LEVEL0 of FILLCELL_X32 : entity is TRUE;
end FILLCELL_X32;

---- CELL HA_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity HA_X1 is
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
attribute VITAL_LEVEL0 of HA_X1 : entity is TRUE;
end HA_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_HA_X1 of HA_X1 is
  attribute VITAL_LEVEL1 of VITAL_HA_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS CO_zd                              : STD_LOGIC is Results(1);
    ALIAS S_zd                               : STD_LOGIC is Results(2);

    VARIABLE glitchData_S                    : VitalGlitchDataType;
    VARIABLE glitchData_CO                   : VitalGlitchDataType;

  begin
    S_zd := (A_ipd XOR B_ipd);
    CO_zd := (A_ipd AND B_ipd);

    VitalPathDelay01 (
      OutSignal => S,
      GlitchData => glitchData_S,
      OutSignalName => "S",
      OutTemp => S_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_0_CP, (TO_X01((NOT B_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_S_OP_B_EQ_1_CP, (TO_X01(B_ipd)='1')),
        2 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_1_CP, (TO_X01(A_ipd)='1')),
        3 => (B_ipd'last_event, tpd_B_S_OP_A_EQ_0_CP, (TO_X01((NOT A_ipd))='1'))));
    VitalPathDelay01 (
      OutSignal => CO,
      GlitchData => glitchData_CO,
      OutSignalName => "CO",
      OutTemp => CO_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_CO, TRUE),
        1 => (B_ipd'last_event, tpd_B_CO, TRUE)));

  end process;

end VITAL_HA_X1;

configuration CFG_HA_X1_VITAL of HA_X1 is
  for VITAL_HA_X1
  end for;
end CFG_HA_X1_VITAL;

---- CELL INV_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X1 : entity is TRUE;
end INV_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X1 of INV_X1 is
  attribute VITAL_LEVEL1 of VITAL_INV_X1 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X1;

configuration CFG_INV_X1_VITAL of INV_X1 is
  for VITAL_INV_X1
  end for;
end CFG_INV_X1_VITAL;

---- CELL INV_X16 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X16 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X16 : entity is TRUE;
end INV_X16;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X16 of INV_X16 is
  attribute VITAL_LEVEL1 of VITAL_INV_X16 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X16;

configuration CFG_INV_X16_VITAL of INV_X16 is
  for VITAL_INV_X16
  end for;
end CFG_INV_X16_VITAL;

---- CELL INV_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X2 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X2 : entity is TRUE;
end INV_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X2 of INV_X2 is
  attribute VITAL_LEVEL1 of VITAL_INV_X2 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X2;

configuration CFG_INV_X2_VITAL of INV_X2 is
  for VITAL_INV_X2
  end for;
end CFG_INV_X2_VITAL;

---- CELL INV_X32 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X32 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X32 : entity is TRUE;
end INV_X32;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X32 of INV_X32 is
  attribute VITAL_LEVEL1 of VITAL_INV_X32 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X32;

configuration CFG_INV_X32_VITAL of INV_X32 is
  for VITAL_INV_X32
  end for;
end CFG_INV_X32_VITAL;

---- CELL INV_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X4 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X4 : entity is TRUE;
end INV_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X4 of INV_X4 is
  attribute VITAL_LEVEL1 of VITAL_INV_X4 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X4;

configuration CFG_INV_X4_VITAL of INV_X4 is
  for VITAL_INV_X4
  end for;
end CFG_INV_X4_VITAL;

---- CELL INV_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity INV_X8 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*";
    tipd_A                                   : VitalDelayType01 := (0.0 ns, 0.0 ns);
    tpd_A_ZN                                 : VitalDelayType01 := (0.0 ns, 0.0 ns));
  port (
    A                                        : in       STD_ULOGIC;
    ZN                                       : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of INV_X8 : entity is TRUE;
end INV_X8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_INV_X8 of INV_X8 is
  attribute VITAL_LEVEL1 of VITAL_INV_X8 : architecture is TRUE;

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
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT A_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN, TRUE)));

  end process;

end VITAL_INV_X8;

configuration CFG_INV_X8_VITAL of INV_X8 is
  for VITAL_INV_X8
  end for;
end CFG_INV_X8_VITAL;

---- CELL LOGIC0_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LOGIC0_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
  port (
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LOGIC0_X1 : entity is TRUE;
end LOGIC0_X1;

---- CELL LOGIC1_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity LOGIC1_X1 is
  generic (
    TimingChecksOn                           : Boolean := True;
    InstancePath                             : STRING := "*");
  port (
    Z                                        : out      STD_ULOGIC);
attribute VITAL_LEVEL0 of LOGIC1_X1 : entity is TRUE;
end LOGIC1_X1;

---- CELL MUX2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity MUX2_X1 is
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
attribute VITAL_LEVEL0 of MUX2_X1 : entity is TRUE;
end MUX2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_MUX2_X1 of MUX2_X1 is
  attribute VITAL_LEVEL1 of VITAL_MUX2_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL S_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (S_ipd, S, tipd_S);
  end block;

  -- Behavior
  VITALBehavior : process (S_ipd, A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := ((S_ipd AND B_ipd) OR (A_ipd AND (NOT S_ipd)));

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
        0 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_1_CP_AN_OP_S_EQ_0_CP, (TO_X01((B_ipd AND (NOT S_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_0_CP_AN_OP_S_EQ_0_CP, (TO_X01(((NOT B_ipd) AND (NOT S_ipd)))='1')),
        2 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_1_CP_AN_OP_S_EQ_1_CP, (TO_X01((A_ipd AND S_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_0_CP_AN_OP_S_EQ_1_CP, (TO_X01(((NOT A_ipd) AND S_ipd))='1')),
        4 => (S_ipd'last_event, tpd_S_Z_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP, (TO_X01((A_ipd AND (NOT B_ipd)))='1')),
        5 => (S_ipd'last_event, tpd_S_Z_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP, (TO_X01(((NOT A_ipd) AND B_ipd))='1'))));

  end process;

end VITAL_MUX2_X1;

configuration CFG_MUX2_X1_VITAL of MUX2_X1 is
  for VITAL_MUX2_X1
  end for;
end CFG_MUX2_X1_VITAL;

---- CELL MUX2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity MUX2_X2 is
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
attribute VITAL_LEVEL0 of MUX2_X2 : entity is TRUE;
end MUX2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_MUX2_X2 of MUX2_X2 is
  attribute VITAL_LEVEL1 of VITAL_MUX2_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL S_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (S_ipd, S, tipd_S);
  end block;

  -- Behavior
  VITALBehavior : process (S_ipd, A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := ((S_ipd AND B_ipd) OR (A_ipd AND (NOT S_ipd)));

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
        0 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_1_CP_AN_OP_S_EQ_0_CP, (TO_X01((B_ipd AND (NOT S_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_0_CP_AN_OP_S_EQ_0_CP, (TO_X01(((NOT B_ipd) AND (NOT S_ipd)))='1')),
        2 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_1_CP_AN_OP_S_EQ_1_CP, (TO_X01((A_ipd AND S_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_0_CP_AN_OP_S_EQ_1_CP, (TO_X01(((NOT A_ipd) AND S_ipd))='1')),
        4 => (S_ipd'last_event, tpd_S_Z_OP_A_EQ_1_CP_AN_OP_B_EQ_0_CP, (TO_X01((A_ipd AND (NOT B_ipd)))='1')),
        5 => (S_ipd'last_event, tpd_S_Z_OP_A_EQ_0_CP_AN_OP_B_EQ_1_CP, (TO_X01(((NOT A_ipd) AND B_ipd))='1'))));

  end process;

end VITAL_MUX2_X2;

configuration CFG_MUX2_X2_VITAL of MUX2_X2 is
  for VITAL_MUX2_X2
  end for;
end CFG_MUX2_X2_VITAL;

---- CELL NAND2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND2_X1 is
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
attribute VITAL_LEVEL0 of NAND2_X1 : entity is TRUE;
end NAND2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND2_X1 of NAND2_X1 is
  attribute VITAL_LEVEL1 of VITAL_NAND2_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd AND A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NAND2_X1;

configuration CFG_NAND2_X1_VITAL of NAND2_X1 is
  for VITAL_NAND2_X1
  end for;
end CFG_NAND2_X1_VITAL;

---- CELL NAND2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND2_X2 is
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
attribute VITAL_LEVEL0 of NAND2_X2 : entity is TRUE;
end NAND2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND2_X2 of NAND2_X2 is
  attribute VITAL_LEVEL1 of VITAL_NAND2_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd AND A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NAND2_X2;

configuration CFG_NAND2_X2_VITAL of NAND2_X2 is
  for VITAL_NAND2_X2
  end for;
end CFG_NAND2_X2_VITAL;

---- CELL NAND2_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND2_X4 is
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
attribute VITAL_LEVEL0 of NAND2_X4 : entity is TRUE;
end NAND2_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND2_X4 of NAND2_X4 is
  attribute VITAL_LEVEL1 of VITAL_NAND2_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd AND A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NAND2_X4;

configuration CFG_NAND2_X4_VITAL of NAND2_X4 is
  for VITAL_NAND2_X4
  end for;
end CFG_NAND2_X4_VITAL;

---- CELL NAND3_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND3_X1 is
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
attribute VITAL_LEVEL0 of NAND3_X1 : entity is TRUE;
end NAND3_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND3_X1 of NAND3_X1 is
  attribute VITAL_LEVEL1 of VITAL_NAND3_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) AND A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NAND3_X1;

configuration CFG_NAND3_X1_VITAL of NAND3_X1 is
  for VITAL_NAND3_X1
  end for;
end CFG_NAND3_X1_VITAL;

---- CELL NAND3_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND3_X2 is
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
attribute VITAL_LEVEL0 of NAND3_X2 : entity is TRUE;
end NAND3_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND3_X2 of NAND3_X2 is
  attribute VITAL_LEVEL1 of VITAL_NAND3_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) AND A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NAND3_X2;

configuration CFG_NAND3_X2_VITAL of NAND3_X2 is
  for VITAL_NAND3_X2
  end for;
end CFG_NAND3_X2_VITAL;

---- CELL NAND3_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND3_X4 is
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
attribute VITAL_LEVEL0 of NAND3_X4 : entity is TRUE;
end NAND3_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND3_X4 of NAND3_X4 is
  attribute VITAL_LEVEL1 of VITAL_NAND3_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd AND A2_ipd) AND A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NAND3_X4;

configuration CFG_NAND3_X4_VITAL of NAND3_X4 is
  for VITAL_NAND3_X4
  end for;
end CFG_NAND3_X4_VITAL;

---- CELL NAND4_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND4_X1 is
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
attribute VITAL_LEVEL0 of NAND4_X1 : entity is TRUE;
end NAND4_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND4_X1 of NAND4_X1 is
  attribute VITAL_LEVEL1 of VITAL_NAND4_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NAND4_X1;

configuration CFG_NAND4_X1_VITAL of NAND4_X1 is
  for VITAL_NAND4_X1
  end for;
end CFG_NAND4_X1_VITAL;

---- CELL NAND4_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND4_X2 is
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
attribute VITAL_LEVEL0 of NAND4_X2 : entity is TRUE;
end NAND4_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND4_X2 of NAND4_X2 is
  attribute VITAL_LEVEL1 of VITAL_NAND4_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NAND4_X2;

configuration CFG_NAND4_X2_VITAL of NAND4_X2 is
  for VITAL_NAND4_X2
  end for;
end CFG_NAND4_X2_VITAL;

---- CELL NAND4_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NAND4_X4 is
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
attribute VITAL_LEVEL0 of NAND4_X4 : entity is TRUE;
end NAND4_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NAND4_X4 of NAND4_X4 is
  attribute VITAL_LEVEL1 of VITAL_NAND4_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd AND A2_ipd) AND A3_ipd) AND A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NAND4_X4;

configuration CFG_NAND4_X4_VITAL of NAND4_X4 is
  for VITAL_NAND4_X4
  end for;
end CFG_NAND4_X4_VITAL;

---- CELL NOR2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR2_X1 is
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
attribute VITAL_LEVEL0 of NOR2_X1 : entity is TRUE;
end NOR2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR2_X1 of NOR2_X1 is
  attribute VITAL_LEVEL1 of VITAL_NOR2_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd OR A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NOR2_X1;

configuration CFG_NOR2_X1_VITAL of NOR2_X1 is
  for VITAL_NOR2_X1
  end for;
end CFG_NOR2_X1_VITAL;

---- CELL NOR2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR2_X2 is
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
attribute VITAL_LEVEL0 of NOR2_X2 : entity is TRUE;
end NOR2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR2_X2 of NOR2_X2 is
  attribute VITAL_LEVEL1 of VITAL_NOR2_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd OR A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NOR2_X2;

configuration CFG_NOR2_X2_VITAL of NOR2_X2 is
  for VITAL_NOR2_X2
  end for;
end CFG_NOR2_X2_VITAL;

---- CELL NOR2_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR2_X4 is
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
attribute VITAL_LEVEL0 of NOR2_X4 : entity is TRUE;
end NOR2_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR2_X4 of NOR2_X4 is
  attribute VITAL_LEVEL1 of VITAL_NOR2_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A1_ipd OR A2_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_NOR2_X4;

configuration CFG_NOR2_X4_VITAL of NOR2_X4 is
  for VITAL_NOR2_X4
  end for;
end CFG_NOR2_X4_VITAL;

---- CELL NOR3_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR3_X1 is
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
attribute VITAL_LEVEL0 of NOR3_X1 : entity is TRUE;
end NOR3_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR3_X1 of NOR3_X1 is
  attribute VITAL_LEVEL1 of VITAL_NOR3_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) OR A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NOR3_X1;

configuration CFG_NOR3_X1_VITAL of NOR3_X1 is
  for VITAL_NOR3_X1
  end for;
end CFG_NOR3_X1_VITAL;

---- CELL NOR3_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR3_X2 is
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
attribute VITAL_LEVEL0 of NOR3_X2 : entity is TRUE;
end NOR3_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR3_X2 of NOR3_X2 is
  attribute VITAL_LEVEL1 of VITAL_NOR3_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) OR A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NOR3_X2;

configuration CFG_NOR3_X2_VITAL of NOR3_X2 is
  for VITAL_NOR3_X2
  end for;
end CFG_NOR3_X2_VITAL;

---- CELL NOR3_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR3_X4 is
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
attribute VITAL_LEVEL0 of NOR3_X4 : entity is TRUE;
end NOR3_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR3_X4 of NOR3_X4 is
  attribute VITAL_LEVEL1 of VITAL_NOR3_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) OR A3_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_NOR3_X4;

configuration CFG_NOR3_X4_VITAL of NOR3_X4 is
  for VITAL_NOR3_X4
  end for;
end CFG_NOR3_X4_VITAL;

---- CELL NOR4_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR4_X1 is
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
attribute VITAL_LEVEL0 of NOR4_X1 : entity is TRUE;
end NOR4_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR4_X1 of NOR4_X1 is
  attribute VITAL_LEVEL1 of VITAL_NOR4_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NOR4_X1;

configuration CFG_NOR4_X1_VITAL of NOR4_X1 is
  for VITAL_NOR4_X1
  end for;
end CFG_NOR4_X1_VITAL;

---- CELL NOR4_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR4_X2 is
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
attribute VITAL_LEVEL0 of NOR4_X2 : entity is TRUE;
end NOR4_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR4_X2 of NOR4_X2 is
  attribute VITAL_LEVEL1 of VITAL_NOR4_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NOR4_X2;

configuration CFG_NOR4_X2_VITAL of NOR4_X2 is
  for VITAL_NOR4_X2
  end for;
end CFG_NOR4_X2_VITAL;

---- CELL NOR4_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity NOR4_X4 is
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
attribute VITAL_LEVEL0 of NOR4_X4 : entity is TRUE;
end NOR4_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_NOR4_X4 of NOR4_X4 is
  attribute VITAL_LEVEL1 of VITAL_NOR4_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_NOR4_X4;

configuration CFG_NOR4_X4_VITAL of NOR4_X4 is
  for VITAL_NOR4_X4
  end for;
end CFG_NOR4_X4_VITAL;

---- CELL OAI211_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI211_X1 is
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
attribute VITAL_LEVEL0 of OAI211_X1 : entity is TRUE;
end OAI211_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI211_X1 of OAI211_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI211_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND B_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((B_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND C1_ipd) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((A_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND C1_ipd) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_OAI211_X1;

configuration CFG_OAI211_X1_VITAL of OAI211_X1 is
  for VITAL_OAI211_X1
  end for;
end CFG_OAI211_X1_VITAL;

---- CELL OAI211_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI211_X2 is
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
attribute VITAL_LEVEL0 of OAI211_X2 : entity is TRUE;
end OAI211_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI211_X2 of OAI211_X2 is
  attribute VITAL_LEVEL1 of VITAL_OAI211_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND B_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((B_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND C1_ipd) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((A_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND C1_ipd) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_OAI211_X2;

configuration CFG_OAI211_X2_VITAL of OAI211_X2 is
  for VITAL_OAI211_X2
  end for;
end CFG_OAI211_X2_VITAL;

---- CELL OAI211_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI211_X4 is
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
attribute VITAL_LEVEL0 of OAI211_X4 : entity is TRUE;
end OAI211_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI211_X4 of OAI211_X4 is
  attribute VITAL_LEVEL1 of VITAL_OAI211_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND B_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((B_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((B_ipd AND C1_ipd) AND C2_ipd))='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((A_ipd AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((A_ipd AND C1_ipd) AND C2_ipd))='1')),
        6 => (C1_ipd'last_event, tpd_C1_ZN, TRUE),
        7 => (C2_ipd'last_event, tpd_C2_ZN, TRUE)));

  end process;

end VITAL_OAI211_X4;

configuration CFG_OAI211_X4_VITAL of OAI211_X4 is
  for VITAL_OAI211_X4
  end for;
end CFG_OAI211_X4_VITAL;

---- CELL OAI21_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI21_X1 is
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
attribute VITAL_LEVEL0 of OAI21_X1 : entity is TRUE;
end OAI21_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI21_X1 of OAI21_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI21_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((B1_ipd AND B2_ipd))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_OAI21_X1;

configuration CFG_OAI21_X1_VITAL of OAI21_X1 is
  for VITAL_OAI21_X1
  end for;
end CFG_OAI21_X1_VITAL;

---- CELL OAI21_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI21_X2 is
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
attribute VITAL_LEVEL0 of OAI21_X2 : entity is TRUE;
end OAI21_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI21_X2 of OAI21_X2 is
  attribute VITAL_LEVEL1 of VITAL_OAI21_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((B1_ipd AND B2_ipd))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_OAI21_X2;

configuration CFG_OAI21_X2_VITAL of OAI21_X2 is
  for VITAL_OAI21_X2
  end for;
end CFG_OAI21_X2_VITAL;

---- CELL OAI21_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI21_X4 is
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
attribute VITAL_LEVEL0 of OAI21_X4 : entity is TRUE;
end OAI21_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI21_X4 of OAI21_X4 is
  attribute VITAL_LEVEL1 of VITAL_OAI21_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((B1_ipd AND (NOT B2_ipd)))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01(((NOT B1_ipd) AND B2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((B1_ipd AND B2_ipd))='1')),
        3 => (B1_ipd'last_event, tpd_B1_ZN, TRUE),
        4 => (B2_ipd'last_event, tpd_B2_ZN, TRUE)));

  end process;

end VITAL_OAI21_X4;

configuration CFG_OAI21_X4_VITAL of OAI21_X4 is
  for VITAL_OAI21_X4
  end for;
end CFG_OAI21_X4_VITAL;

---- CELL OAI221_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI221_X1 is
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
attribute VITAL_LEVEL0 of OAI221_X1 : entity is TRUE;
end OAI221_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI221_X1 of OAI221_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI221_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI221_X1;

configuration CFG_OAI221_X1_VITAL of OAI221_X1 is
  for VITAL_OAI221_X1
  end for;
end CFG_OAI221_X1_VITAL;

---- CELL OAI221_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI221_X2 is
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
attribute VITAL_LEVEL0 of OAI221_X2 : entity is TRUE;
end OAI221_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI221_X2 of OAI221_X2 is
  attribute VITAL_LEVEL1 of VITAL_OAI221_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI221_X2;

configuration CFG_OAI221_X2_VITAL of OAI221_X2 is
  for VITAL_OAI221_X2
  end for;
end CFG_OAI221_X2_VITAL;

---- CELL OAI221_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI221_X4 is
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
attribute VITAL_LEVEL0 of OAI221_X4 : entity is TRUE;
end OAI221_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI221_X4 of OAI221_X4 is
  attribute VITAL_LEVEL1 of VITAL_OAI221_X4 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B1_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (NOT (NOT (((C1_ipd OR C2_ipd) AND A_ipd) AND (B1_ipd OR B2_ipd)))));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((B1_ipd AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        4 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        5 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((B1_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        8 => (A_ipd'last_event, tpd_A_ZN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((NOT B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        10 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        11 => (B1_ipd'last_event, tpd_B1_ZN_OP_A_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        14 => (B2_ipd'last_event, tpd_B2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        15 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        16 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        17 => (C1_ipd'last_event, tpd_C1_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        18 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        19 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        20 => (C2_ipd'last_event, tpd_C2_ZN_OP_A_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((A_ipd AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI221_X4;

configuration CFG_OAI221_X4_VITAL of OAI221_X4 is
  for VITAL_OAI221_X4
  end for;
end CFG_OAI221_X4_VITAL;

---- CELL OAI222_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI222_X1 is
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
attribute VITAL_LEVEL0 of OAI222_X1 : entity is TRUE;
end OAI222_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI222_X1 of OAI222_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI222_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)) AND (C1_ipd OR C2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI222_X1;

configuration CFG_OAI222_X1_VITAL of OAI222_X1 is
  for VITAL_OAI222_X1
  end for;
end CFG_OAI222_X1_VITAL;

---- CELL OAI222_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI222_X2 is
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
attribute VITAL_LEVEL0 of OAI222_X2 : entity is TRUE;
end OAI222_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI222_X2 of OAI222_X2 is
  attribute VITAL_LEVEL1 of VITAL_OAI222_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)) AND (C1_ipd OR C2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI222_X2;

configuration CFG_OAI222_X2_VITAL of OAI222_X2 is
  for VITAL_OAI222_X2
  end for;
end CFG_OAI222_X2_VITAL;

---- CELL OAI222_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI222_X4 is
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
attribute VITAL_LEVEL0 of OAI222_X4 : entity is TRUE;
end OAI222_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI222_X4 of OAI222_X4 is
  attribute VITAL_LEVEL1 of VITAL_OAI222_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL C1_ipd          : STD_ULOGIC := 'X';
  SIGNAL C2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (C1_ipd, C1, tipd_C1);
    VitalWireDelay (C2_ipd, C2, tipd_C2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd, C1_ipd, C2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (NOT (NOT (((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)) AND (C1_ipd OR C2_ipd)))));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        7 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        8 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND C2_ipd))='1')),
        14 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        15 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        16 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        17 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        18 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        19 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        20 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        27 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_0_CP_AN_OP_C2_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND (NOT C1_ipd)) AND C2_ipd))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_1_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND C2_ipd))='1')),
        35 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_C1_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND C1_ipd) AND (NOT C2_ipd)))='1')),
        36 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        37 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        38 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        39 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        40 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        41 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        42 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        43 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C2_ipd)))='1')),
        44 => (C1_ipd'last_event, tpd_C1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C2_ipd)))='1')),
        45 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        46 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        47 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        48 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        49 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        50 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        51 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT C1_ipd)))='1')),
        52 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1')),
        53 => (C2_ipd'last_event, tpd_C2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_C1_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND B1_ipd) AND B2_ipd) AND (NOT C1_ipd)))='1'))));

  end process;

end VITAL_OAI222_X4;

configuration CFG_OAI222_X4_VITAL of OAI222_X4 is
  for VITAL_OAI222_X4
  end for;
end CFG_OAI222_X4_VITAL;

---- CELL OAI22_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI22_X1 is
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
attribute VITAL_LEVEL0 of OAI22_X1 : entity is TRUE;
end OAI22_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI22_X1 of OAI22_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI22_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND B2_ipd))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B2_ipd)))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B1_ipd)))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)))='1'))));

  end process;

end VITAL_OAI22_X1;

configuration CFG_OAI22_X1_VITAL of OAI22_X1 is
  for VITAL_OAI22_X1
  end for;
end CFG_OAI22_X1_VITAL;

---- CELL OAI22_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI22_X2 is
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
attribute VITAL_LEVEL0 of OAI22_X2 : entity is TRUE;
end OAI22_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI22_X2 of OAI22_X2 is
  attribute VITAL_LEVEL1 of VITAL_OAI22_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND B2_ipd))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B2_ipd)))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B1_ipd)))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)))='1'))));

  end process;

end VITAL_OAI22_X2;

configuration CFG_OAI22_X2_VITAL of OAI22_X2 is
  for VITAL_OAI22_X2
  end for;
end CFG_OAI22_X2_VITAL;

---- CELL OAI22_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI22_X4 is
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
attribute VITAL_LEVEL0 of OAI22_X4 : entity is TRUE;
end OAI22_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI22_X4 of OAI22_X4 is
  attribute VITAL_LEVEL1 of VITAL_OAI22_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, B1_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT ((A1_ipd OR A2_ipd) AND (B1_ipd OR B2_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A2_ipd) AND B1_ipd) AND B2_ipd))='1')),
        3 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND B2_ipd))='1')),
        4 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP, (TO_X01((((NOT A1_ipd) AND (NOT B1_ipd)) AND B2_ipd))='1')),
        5 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND B1_ipd) AND (NOT B2_ipd)))='1')),
        6 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B2_ipd)))='1')),
        7 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B2_ipd)))='1')),
        8 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B2_ipd)))='1')),
        9 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND (NOT A2_ipd)) AND (NOT B1_ipd)))='1')),
        10 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01(((A1_ipd AND A2_ipd) AND (NOT B1_ipd)))='1')),
        11 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_B1_EQ_0_CP, (TO_X01((((NOT A1_ipd) AND A2_ipd) AND (NOT B1_ipd)))='1'))));

  end process;

end VITAL_OAI22_X4;

configuration CFG_OAI22_X4_VITAL of OAI22_X4 is
  for VITAL_OAI22_X4
  end for;
end CFG_OAI22_X4_VITAL;

---- CELL OAI33_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OAI33_X1 is
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
attribute VITAL_LEVEL0 of OAI33_X1 : entity is TRUE;
end OAI33_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OAI33_X1 of OAI33_X1 is
  attribute VITAL_LEVEL1 of VITAL_OAI33_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL B1_ipd          : STD_ULOGIC := 'X';
  SIGNAL B2_ipd          : STD_ULOGIC := 'X';
  SIGNAL B3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (B1_ipd, B1, tipd_B1);
    VitalWireDelay (B2_ipd, B2, tipd_B2);
    VitalWireDelay (B3_ipd, B3, tipd_B3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, B1_ipd, B3_ipd, A2_ipd, B2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (((A1_ipd OR A2_ipd) OR A3_ipd) AND ((B1_ipd OR B2_ipd) OR B3_ipd)));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        1 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        2 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND B2_ipd) AND B3_ipd))='1')),
        3 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        4 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        5 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND B3_ipd))='1')),
        6 => (A1_ipd'last_event, tpd_A1_ZN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        7 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        8 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        9 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        10 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND B2_ipd) AND B3_ipd))='1')),
        11 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND B3_ipd))='1')),
        12 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        13 => (A2_ipd'last_event, tpd_A2_ZN_OP_A1_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A3_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        14 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        15 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND B3_ipd))='1')),
        16 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        17 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        18 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND (NOT B1_ipd)) AND B2_ipd) AND (NOT B3_ipd)))='1')),
        19 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_1_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND B2_ipd) AND B3_ipd))='1')),
        20 => (A3_ipd'last_event, tpd_A3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_B1_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_1_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND B1_ipd) AND (NOT B2_ipd)) AND B3_ipd))='1')),
        21 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        22 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND A3_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        23 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND A3_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        24 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        25 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        26 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT A3_ipd)) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        27 => (B1_ipd'last_event, tpd_B1_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B2_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B2_ipd)) AND (NOT B3_ipd)))='1')),
        28 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        29 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        30 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        31 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        32 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        33 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        34 => (B2_ipd'last_event, tpd_B2_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B3_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B3_ipd)))='1')),
        35 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        36 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        37 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        38 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_0_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((((A1_ipd AND (NOT A2_ipd)) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        39 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_1_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND A3_ipd) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        40 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_1_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01(((((A1_ipd AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1')),
        41 => (B3_ipd'last_event, tpd_B3_ZN_OP_A1_EQ_0_CP_AN_OP_A2_EQ_1_CP_AN_OP_A3_EQ_0_CP_AN_OP_B1_EQ_0_CP_AN_OP_B2_EQ_0_CP, (TO_X01((((((NOT A1_ipd) AND A2_ipd) AND (NOT A3_ipd)) AND (NOT B1_ipd)) AND (NOT B2_ipd)))='1'))));

  end process;

end VITAL_OAI33_X1;

configuration CFG_OAI33_X1_VITAL of OAI33_X1 is
  for VITAL_OAI33_X1
  end for;
end CFG_OAI33_X1_VITAL;

---- CELL OR2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR2_X1 is
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
attribute VITAL_LEVEL0 of OR2_X1 : entity is TRUE;
end OR2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR2_X1 of OR2_X1 is
  attribute VITAL_LEVEL1 of VITAL_OR2_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd OR A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_OR2_X1;

configuration CFG_OR2_X1_VITAL of OR2_X1 is
  for VITAL_OR2_X1
  end for;
end CFG_OR2_X1_VITAL;

---- CELL OR2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR2_X2 is
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
attribute VITAL_LEVEL0 of OR2_X2 : entity is TRUE;
end OR2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR2_X2 of OR2_X2 is
  attribute VITAL_LEVEL1 of VITAL_OR2_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd OR A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_OR2_X2;

configuration CFG_OR2_X2_VITAL of OR2_X2 is
  for VITAL_OR2_X2
  end for;
end CFG_OR2_X2_VITAL;

---- CELL OR2_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR2_X4 is
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
attribute VITAL_LEVEL0 of OR2_X4 : entity is TRUE;
end OR2_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR2_X4 of OR2_X4 is
  attribute VITAL_LEVEL1 of VITAL_OR2_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
  end block;

  -- Behavior
  VITALBehavior : process (A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (A1_ipd OR A2_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE)));

  end process;

end VITAL_OR2_X4;

configuration CFG_OR2_X4_VITAL of OR2_X4 is
  for VITAL_OR2_X4
  end for;
end CFG_OR2_X4_VITAL;

---- CELL OR3_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR3_X1 is
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
attribute VITAL_LEVEL0 of OR3_X1 : entity is TRUE;
end OR3_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR3_X1 of OR3_X1 is
  attribute VITAL_LEVEL1 of VITAL_OR3_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd OR A2_ipd) OR A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_OR3_X1;

configuration CFG_OR3_X1_VITAL of OR3_X1 is
  for VITAL_OR3_X1
  end for;
end CFG_OR3_X1_VITAL;

---- CELL OR3_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR3_X2 is
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
attribute VITAL_LEVEL0 of OR3_X2 : entity is TRUE;
end OR3_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR3_X2 of OR3_X2 is
  attribute VITAL_LEVEL1 of VITAL_OR3_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd OR A2_ipd) OR A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_OR3_X2;

configuration CFG_OR3_X2_VITAL of OR3_X2 is
  for VITAL_OR3_X2
  end for;
end CFG_OR3_X2_VITAL;

---- CELL OR3_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR3_X4 is
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
attribute VITAL_LEVEL0 of OR3_X4 : entity is TRUE;
end OR3_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR3_X4 of OR3_X4 is
  attribute VITAL_LEVEL1 of VITAL_OR3_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := ((A1_ipd OR A2_ipd) OR A3_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE)));

  end process;

end VITAL_OR3_X4;

configuration CFG_OR3_X4_VITAL of OR3_X4 is
  for VITAL_OR3_X4
  end for;
end CFG_OR3_X4_VITAL;

---- CELL OR4_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR4_X1 is
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
attribute VITAL_LEVEL0 of OR4_X1 : entity is TRUE;
end OR4_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR4_X1 of OR4_X1 is
  attribute VITAL_LEVEL1 of VITAL_OR4_X1 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_OR4_X1;

configuration CFG_OR4_X1_VITAL of OR4_X1 is
  for VITAL_OR4_X1
  end for;
end CFG_OR4_X1_VITAL;

---- CELL OR4_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR4_X2 is
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
attribute VITAL_LEVEL0 of OR4_X2 : entity is TRUE;
end OR4_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR4_X2 of OR4_X2 is
  attribute VITAL_LEVEL1 of VITAL_OR4_X2 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_OR4_X2;

configuration CFG_OR4_X2_VITAL of OR4_X2 is
  for VITAL_OR4_X2
  end for;
end CFG_OR4_X2_VITAL;

---- CELL OR4_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity OR4_X4 is
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
attribute VITAL_LEVEL0 of OR4_X4 : entity is TRUE;
end OR4_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_OR4_X4 of OR4_X4 is
  attribute VITAL_LEVEL1 of VITAL_OR4_X4 : architecture is TRUE;

  SIGNAL A1_ipd          : STD_ULOGIC := 'X';
  SIGNAL A2_ipd          : STD_ULOGIC := 'X';
  SIGNAL A3_ipd          : STD_ULOGIC := 'X';
  SIGNAL A4_ipd          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A1_ipd, A1, tipd_A1);
    VitalWireDelay (A2_ipd, A2, tipd_A2);
    VitalWireDelay (A3_ipd, A3, tipd_A3);
    VitalWireDelay (A4_ipd, A4, tipd_A4);
  end block;

  -- Behavior
  VITALBehavior : process (A3_ipd, A1_ipd, A2_ipd, A4_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (((A1_ipd OR A2_ipd) OR A3_ipd) OR A4_ipd);

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A1_ipd'last_event, tpd_A1_ZN, TRUE),
        1 => (A2_ipd'last_event, tpd_A2_ZN, TRUE),
        2 => (A3_ipd'last_event, tpd_A3_ZN, TRUE),
        3 => (A4_ipd'last_event, tpd_A4_ZN, TRUE)));

  end process;

end VITAL_OR4_X4;

configuration CFG_OR4_X4_VITAL of OR4_X4 is
  for VITAL_OR4_X4
  end for;
end CFG_OR4_X4_VITAL;

---- CELL SDFFRS_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFRS_X1 is
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
attribute VITAL_LEVEL0 of SDFFRS_X1 : entity is TRUE;
end SDFFRS_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFRS_X1 of SDFFRS_X1 is
  attribute VITAL_LEVEL1 of VITAL_SDFFRS_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, RN_dly, SE_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_AND_SN_eq3_1        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_AND_SN_eq3_1        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_RN_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SE_CK_RN_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_RN_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_SN_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_RN_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_RN_AND_SN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_RN_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_RN_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_RN_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_RN_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN_SN_eq3_1,
        PeriodData                => PInfo_RN_SN_eq3_1,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_RN_CK_SN_eq3_1_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_SN_eq3_1_posedge,
        Removal                   => tremoval_RN_CK_posedge_SN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_AND_SN_eq3_1,
        PeriodData                => PInfo_CK_RN_AND_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_AND_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_AND_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN_RN_eq3_1,
        PeriodData                => PInfo_SN_RN_eq3_1,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SN_CK_RN_eq3_1_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_RN_eq3_1_posedge,
        Removal                   => tremoval_SN_CK_posedge_RN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge or Tviol_SE_CK_RN_AND_SN_eq3_1_posedge or Pviol_RN_SN_eq3_1 or Tviol_RN_CK_SN_eq3_1_posedge or Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge or Pviol_CK_RN_AND_SN_eq3_1 or Pviol_SN_RN_eq3_1 or Tviol_SN_CK_RN_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFRS_X1_IQN_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFRS_X1_IQ_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        5 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        8 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        10 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        15 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        16 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        17 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        18 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        19 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        20 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        21 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        22 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        23 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        24 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        25 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        26 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        27 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        28 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        29 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        30 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        31 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        32 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        33 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        34 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        35 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        36 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        37 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        38 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        39 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        40 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        41 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        42 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        43 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        44 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        45 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        46 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        47 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        48 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        10 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        11 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        14 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        15 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        16 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        17 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        18 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        19 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        20 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        21 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        22 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        23 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        24 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        25 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        26 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        27 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        28 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        29 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        30 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        31 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        32 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        33 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        34 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        35 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        36 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        37 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        38 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        39 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        40 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        41 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        42 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        43 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        44 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        45 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        46 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        47 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        48 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1'))));

  end process;

end VITAL_SDFFRS_X1;

configuration CFG_SDFFRS_X1_VITAL of SDFFRS_X1 is
  for VITAL_SDFFRS_X1
  end for;
end CFG_SDFFRS_X1_VITAL;

---- CELL SDFFRS_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFRS_X2 is
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
attribute VITAL_LEVEL0 of SDFFRS_X2 : entity is TRUE;
end SDFFRS_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFRS_X2 of SDFFRS_X2 is
  attribute VITAL_LEVEL1 of VITAL_SDFFRS_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SN_dly, RN_dly, SE_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_AND_SN_eq3_1        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_AND_SN_eq3_1        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_RN_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SE_CK_RN_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_RN_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_SN_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 3);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_RN_AND_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_RN_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_RN_AND_SN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_RN_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_RN_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_RN_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_RN_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN_SN_eq3_1,
        PeriodData                => PInfo_RN_SN_eq3_1,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_RN_CK_SN_eq3_1_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_SN_eq3_1_posedge,
        Removal                   => tremoval_RN_CK_posedge_SN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_NEG_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_AND_SN_eq3_1,
        PeriodData                => PInfo_CK_RN_AND_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_AND_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_AND_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN_RN_eq3_1,
        PeriodData                => PInfo_SN_RN_eq3_1,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SN_CK_RN_eq3_1_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_RN_eq3_1_posedge,
        Removal                   => tremoval_SN_CK_posedge_RN_eq3_1_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01(((NOT RN_dly)) OR ((NOT SN_dly))) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFRS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_SI_CK_RN_AND_SE_AND_SN_eq3_1_posedge or Tviol_SE_CK_RN_AND_SN_eq3_1_posedge or Pviol_RN_SN_eq3_1 or Tviol_RN_CK_SN_eq3_1_posedge or Tviol_D_CK_RN_AND_NEG_SE_AND_SN_eq3_1_posedge or Pviol_CK_RN_AND_SN_eq3_1 or Pviol_SN_RN_eq3_1 or Tviol_SN_CK_RN_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFRS_X2_IQN_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFRS_X2_IQ_tab,
      DataIn => (RN_dly, SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        5 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        8 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        10 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        15 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        16 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        17 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        18 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        19 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        20 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        21 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        22 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        23 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        24 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        25 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        26 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        27 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        28 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        29 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        30 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        31 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        32 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        33 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        34 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        35 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        36 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        37 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        38 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        39 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        40 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        41 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND SE_dly) AND SI_dly))='1')),
        42 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT RN_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        43 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        44 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        45 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        46 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        47 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        48 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        10 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        11 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        14 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        15 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        16 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        17 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        18 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND SN_dly))='1')),
        19 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        20 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND SN_dly))='1')),
        21 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        22 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        23 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND SN_dly))='1')),
        24 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        25 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        26 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        27 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)) AND (NOT SN_dly)))='1')),
        28 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        29 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly) AND SN_dly))='1')),
        30 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND SE_dly) AND SI_dly) AND (NOT SN_dly)))='1')),
        31 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        32 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_AN_OP_SN_EQ_0_CP, (TO_X01(((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly) AND (NOT SN_dly)))='1')),
        33 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        34 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        35 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        36 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        37 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        38 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        39 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        40 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        41 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        42 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((((NOT CK_dly) AND (NOT D_dly)) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        43 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        44 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND (NOT D_dly)) AND RN_dly) AND SE_dly) AND SI_dly))='1')),
        45 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((((NOT CK_dly) AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        46 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        47 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        48 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_RN_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((CK_dly AND D_dly) AND RN_dly) AND SE_dly) AND SI_dly))='1'))));

  end process;

end VITAL_SDFFRS_X2;

configuration CFG_SDFFRS_X2_VITAL of SDFFRS_X2 is
  for VITAL_SDFFRS_X2
  end for;
end CFG_SDFFRS_X2_VITAL;

---- CELL SDFFR_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFR_X1 is
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
attribute VITAL_LEVEL0 of SDFFR_X1 : entity is TRUE;
end SDFFR_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFR_X1 of SDFFR_X1 is
  attribute VITAL_LEVEL1 of VITAL_SDFFR_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, RN_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_NEG_SE_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_RN                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SE_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_RN_AND_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_RN_AND_SE_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_posedge,
        TimingData                => Tmkr_RN_CK_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_posedge,
        Removal                   => tremoval_RN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_RN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_RN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_RN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_RN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_RN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_RN_AND_SE_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_RN_AND_SE_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_RN_AND_SE_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_RN_AND_SE_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_RN_AND_SE_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_RN_AND_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_NEG_SE_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN,
        PeriodData                => PInfo_RN,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_eq3_1,
        PeriodData                => PInfo_CK_RN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFR_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_RN_CK_posedge or Tviol_SE_CK_RN_eq3_1_posedge or Tviol_SI_CK_RN_AND_SE_eq3_1_posedge or Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge or Pviol_RN or Pviol_CK_RN_eq3_1;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFR_X1_IQN_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFR_X1_IQ_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));

  end process;

end VITAL_SDFFR_X1;

configuration CFG_SDFFR_X1_VITAL of SDFFR_X1 is
  for VITAL_SDFFR_X1
  end for;
end CFG_SDFFR_X1_VITAL;

---- CELL SDFFR_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFR_X2 is
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
attribute VITAL_LEVEL0 of SDFFR_X2 : entity is TRUE;
end SDFFR_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFR_X2 of SDFFR_X2 is
  attribute VITAL_LEVEL1 of VITAL_SDFFR_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL RN_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL RN_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (RN_ipd, RN, tipd_RN);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (RN_dly, RN_ipd, tisd_RN_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, RN_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_RN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_RN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_RN_AND_NEG_SE_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_RN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_RN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_RN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_RN                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_SE_CK_RN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_RN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_RN_AND_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_RN_AND_SE_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_RN_CK_posedge,
        TimingData                => Tmkr_RN_CK_posedge,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_RN_CK_posedge_posedge,
        Removal                   => tremoval_RN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_RN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_RN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_RN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_RN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_RN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_RN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_RN_AND_SE_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_RN_AND_SE_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_RN_AND_SE_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_RN_AND_SE_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_RN_AND_SE_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_RN_AND_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_RN_AND_NEG_SE_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_RN_AND_NEG_SE_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_RN_AND_NEG_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT RN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT RN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_RN,
        PeriodData                => PInfo_RN,
        TestSignal                => RN_dly,
        TestSignalName            => "RN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_RN_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_RN_eq3_1,
        PeriodData                => PInfo_CK_RN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_RN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_RN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT RN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFR_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Tviol_RN_CK_posedge or Tviol_SE_CK_RN_eq3_1_posedge or Tviol_SI_CK_RN_AND_SE_eq3_1_posedge or Tviol_D_CK_RN_AND_NEG_SE_eq3_1_posedge or Pviol_RN or Pviol_CK_RN_eq3_1;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFR_X2_IQN_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFR_X2_IQ_tab,
      DataIn => (RN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (RN_dly'last_event, tpd_RN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (RN_dly'last_event, tpd_RN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));

  end process;

end VITAL_SDFFR_X2;

configuration CFG_SDFFR_X2_VITAL of SDFFR_X2 is
  for VITAL_SDFFR_X2
  end for;
end CFG_SDFFR_X2_VITAL;

---- CELL SDFFS_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFS_X1 is
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
attribute VITAL_LEVEL0 of SDFFS_X1 : entity is TRUE;
end SDFFS_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFS_X1 of SDFFS_X1 is
  attribute VITAL_LEVEL1 of VITAL_SDFFS_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, SN_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_NEG_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_SN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_SN_eq3_1,
        PeriodData                => PInfo_CK_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_posedge,
        TimingData                => Tmkr_SN_CK_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_posedge,
        Removal                   => tremoval_SN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_SN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_SN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_SN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_NEG_SE_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN,
        PeriodData                => PInfo_SN,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_SE_AND_SN_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK_SN_eq3_1 or Tviol_SN_CK_posedge or Tviol_SE_CK_SN_eq3_1_posedge or Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge or Pviol_SN or Tviol_SI_CK_SE_AND_SN_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFS_X1_IQN_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFS_X1_IQ_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));

  end process;

end VITAL_SDFFS_X1;

configuration CFG_SDFFS_X1_VITAL of SDFFS_X1 is
  for VITAL_SDFFS_X1
  end for;
end CFG_SDFFS_X1_VITAL;

---- CELL SDFFS_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFFS_X2 is
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
attribute VITAL_LEVEL0 of SDFFS_X2 : entity is TRUE;
end SDFFS_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFFS_X2 of SDFFS_X2 is
  attribute VITAL_LEVEL1 of VITAL_SDFFS_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SN_dly          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (SN_ipd, SN, tipd_SN);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SN_dly, SN_ipd, tisd_SN_CK);
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, SN_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK_SN_eq3_1               : STD_ULOGIC := '0';
    VARIABLE PInfo_CK_SN_eq3_1               : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_NEG_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_SN_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_SN_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_SE_AND_SN_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_SE_AND_SN_eq3_1_posedge : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SN_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SN_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_SN                        : STD_ULOGIC := '0';
    VARIABLE PInfo_SN                        : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 2);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK_SN_eq3_1,
        PeriodData                => PInfo_CK_SN_eq3_1,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_SN_eq3_1_posedge,
        PulseWidthLow             => tpw_CK_SN_eq3_1_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalRecoveryRemovalCheck (
        Violation                 => Tviol_SN_CK_posedge,
        TimingData                => Tmkr_SN_CK_posedge,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        Recovery                  => trecovery_SN_CK_posedge_posedge,
        Removal                   => tremoval_SN_CK_posedge_posedge,
        ActiveLow                 => TRUE,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_SN_eq3_1_posedge,
        TimingData                => Tmkr_SE_CK_SN_eq3_1_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_SN_eq3_1_posedge,
        HoldHigh                  => thold_SE_CK_posedge_SN_eq3_1_posedge,
        HoldLow                   => thold_SE_CK_negedge_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_NEG_SE_AND_SN_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_NEG_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_NEG_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalPeriodPulseCheck (
        Violation                 => Pviol_SN,
        PeriodData                => PInfo_SN,
        TestSignal                => SN_dly,
        TestSignalName            => "SN",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => 0.0 ns,
        PulseWidthLow             => tpw_SN_negedge,
        CheckEnabled              => TO_X01((NOT SN_dly)) /= '1',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_SE_AND_SN_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_SE_AND_SN_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_SE_AND_SN_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_SE_AND_SN_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_SE_AND_SN_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_SE_AND_SN_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TO_X01((NOT SN_dly)) /= '1',
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TO_X01((NOT SN_dly)) /= '1',
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFFS_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK_SN_eq3_1 or Tviol_SN_CK_posedge or Tviol_SE_CK_SN_eq3_1_posedge or Tviol_D_CK_NEG_SE_AND_SN_eq3_1_posedge or Pviol_SN or Tviol_SI_CK_SE_AND_SN_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFFS_X2_IQN_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFFS_X2_IQ_tab,
      DataIn => (SN_dly, clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (SN_dly'last_event, tpd_SN_QN_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE),
        1 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        2 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        3 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        4 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        5 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND SI_dly))='1')),
        6 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        7 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND (NOT SI_dly)))='1')),
        8 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        9 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND (NOT SI_dly)))='1')),
        10 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND SE_dly) AND SI_dly))='1')),
        11 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND SI_dly))='1')),
        12 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND SE_dly) AND SI_dly))='1')),
        13 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_1_CP_AN_OP_SI_EQ_1_CP_negedge, (TO_X01((((CK_dly AND D_dly) AND SE_dly) AND SI_dly))='1')),
        14 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        15 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_1_CP_AN_OP_D_EQ_0_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01((((CK_dly AND (NOT D_dly)) AND (NOT SE_dly)) AND (NOT SI_dly)))='1')),
        16 => (SN_dly'last_event, tpd_SN_Q_OP_CK_EQ_0_CP_AN_OP_D_EQ_1_CP_AN_OP_SE_EQ_0_CP_AN_OP_SI_EQ_0_CP_negedge, (TO_X01(((((NOT CK_dly) AND D_dly) AND (NOT SE_dly)) AND (NOT SI_dly)))='1'))));

  end process;

end VITAL_SDFFS_X2;

configuration CFG_SDFFS_X2_VITAL of SDFFS_X2 is
  for VITAL_SDFFS_X2
  end for;
end CFG_SDFFS_X2_VITAL;

---- CELL SDFF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFF_X1 is
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
attribute VITAL_LEVEL0 of SDFF_X1 : entity is TRUE;
end SDFF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFF_X1 of SDFF_X1 is
  attribute VITAL_LEVEL1 of VITAL_SDFF_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_NEG_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_NEG_SE_eq3_1_posedge  : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_SE_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_SE_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_posedge,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/SDFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_NEG_SE_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_NEG_SE_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_NEG_SE_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_NEG_SE_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_NEG_SE_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_NEG_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_SE_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_SE_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_SE_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_SE_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_SE_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_D_CK_NEG_SE_eq3_1_posedge or Tviol_SI_CK_SE_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFF_X1_IQN_tab,
      DataIn => (clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFF_X1_IQ_tab,
      DataIn => (clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE)));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE)));

  end process;

end VITAL_SDFF_X1;

configuration CFG_SDFF_X1_VITAL of SDFF_X1 is
  for VITAL_SDFF_X1
  end for;
end CFG_SDFF_X1_VITAL;

---- CELL SDFF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity SDFF_X2 is
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
attribute VITAL_LEVEL0 of SDFF_X2 : entity is TRUE;
end SDFF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_SDFF_X2 of SDFF_X2 is
  attribute VITAL_LEVEL1 of VITAL_SDFF_X2 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL SE_ipd          : STD_ULOGIC := 'X';
  SIGNAL SI_ipd          : STD_ULOGIC := 'X';
  SIGNAL CK_ipd          : STD_ULOGIC := 'X';
  SIGNAL SE_dly          : STD_ULOGIC := 'X';
  SIGNAL SI_dly          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL CK_dly          : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (SE_ipd, SE, tipd_SE);
    VitalWireDelay (SI_ipd, SI, tipd_SI);
    VitalWireDelay (CK_ipd, CK, tipd_CK);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (SE_dly, SE_ipd, tisd_SE_CK);
    VitalSignalDelay (SI_dly, SI_ipd, tisd_SI_CK);
    VitalSignalDelay (D_dly, D_ipd, tisd_D_CK);
    VitalSignalDelay (CK_dly, CK_ipd, ticd_CK);
  end block;

  -- Behavior
  VITALBehavior : process (SE_dly, SI_dly, D_dly, CK_dly)
    VARIABLE Pviol_CK                        : STD_ULOGIC := '0';
    VARIABLE PInfo_CK                        : VitalPeriodDataType := VitalPeriodDataInit;
    VARIABLE Tviol_D_CK_NEG_SE_eq3_1_posedge : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_CK_NEG_SE_eq3_1_posedge  : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SE_CK_posedge             : STD_ULOGIC := '0';
    VARIABLE Tmkr_SE_CK_posedge              : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Tviol_SI_CK_SE_eq3_1_posedge    : STD_ULOGIC := '0';
    VARIABLE Tmkr_SI_CK_SE_eq3_1_posedge     : VitalTimingDataType := VitalTimingDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';
    VARIABLE clock_edge                      : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 2) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);
    ALIAS QN_zd                              : STD_LOGIC is Results(2);

    VARIABLE glitchData_QN                   : VitalGlitchDataType;
    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_CK,
        PeriodData                => PInfo_CK,
        TestSignal                => CK_dly,
        TestSignalName            => "CK",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_CK_posedge,
        PulseWidthLow             => tpw_CK_negedge,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/SDFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SE_CK_posedge,
        TimingData                => Tmkr_SE_CK_posedge,
        TestSignal                => SE_dly,
        TestSignalName            => "SE",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SE_CK_posedge_posedge,
        SetupLow                  => tsetup_SE_CK_negedge_posedge,
        HoldHigh                  => thold_SE_CK_posedge_posedge,
        HoldLow                   => thold_SE_CK_negedge_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_CK_NEG_SE_eq3_1_posedge,
        TimingData                => Tmkr_D_CK_NEG_SE_eq3_1_posedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_CK_posedge_NEG_SE_eq3_1_posedge,
        SetupLow                  => tsetup_D_CK_negedge_NEG_SE_eq3_1_posedge,
        HoldHigh                  => thold_D_CK_posedge_NEG_SE_eq3_1_posedge,
        HoldLow                   => thold_D_CK_negedge_NEG_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_SI_CK_SE_eq3_1_posedge,
        TimingData                => Tmkr_SI_CK_SE_eq3_1_posedge,
        TestSignal                => SI_dly,
        TestSignalName            => "SI",
        TestDelay                 => 0.0 ns,
        RefSignal                 => CK_dly,
        RefSignalName             => "CK",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_SI_CK_posedge_SE_eq3_1_posedge,
        SetupLow                  => tsetup_SI_CK_negedge_SE_eq3_1_posedge,
        HoldHigh                  => thold_SI_CK_posedge_SE_eq3_1_posedge,
        HoldLow                   => thold_SI_CK_negedge_SE_eq3_1_posedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => 'R',
        HeaderMsg                 => InstancePath & "/SDFF_X2",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_CK or Tviol_SE_CK_posedge or Tviol_D_CK_NEG_SE_eq3_1_posedge or Tviol_SI_CK_SE_eq3_1_posedge;
    nextstate := ((SE_dly AND SI_dly) OR (D_dly AND (NOT SE_dly)));
    clock_edge := CK_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => SDFF_X2_IQN_tab,
      DataIn => (clock_edge, nextstate));
    IQN := Violation XOR IQN;
    QN_zd := IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => SDFF_X2_IQ_tab,
      DataIn => (clock_edge, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := IQ;

    VitalPathDelay01 (
      OutSignal => QN,
      GlitchData => glitchData_QN,
      OutSignalName => "QN",
      OutTemp => QN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_QN_posedge, TRUE)));
    VitalPathDelay01 (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (CK_dly'last_event, tpd_CK_Q_posedge, TRUE)));

  end process;

end VITAL_SDFF_X2;

configuration CFG_SDFF_X2_VITAL of SDFF_X2 is
  for VITAL_SDFF_X2
  end for;
end CFG_SDFF_X2_VITAL;

---- CELL TBUF_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TBUF_X1 is
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
attribute VITAL_LEVEL0 of TBUF_X1 : entity is TRUE;
end TBUF_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TBUF_X1 of TBUF_X1 is
  attribute VITAL_LEVEL1 of VITAL_TBUF_X1 : architecture is TRUE;

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
    Z_zd := VitalBUFIF0(data => A_ipd, enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, VitalExtendToFillDelay(tpd_A_Z), TRUE),
        1 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_Z), TRUE)));

  end process;

end VITAL_TBUF_X1;

configuration CFG_TBUF_X1_VITAL of TBUF_X1 is
  for VITAL_TBUF_X1
  end for;
end CFG_TBUF_X1_VITAL;

---- CELL TBUF_X16 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TBUF_X16 is
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
attribute VITAL_LEVEL0 of TBUF_X16 : entity is TRUE;
end TBUF_X16;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TBUF_X16 of TBUF_X16 is
  attribute VITAL_LEVEL1 of VITAL_TBUF_X16 : architecture is TRUE;

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
    Z_zd := VitalBUFIF0(data => A_ipd, enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, VitalExtendToFillDelay(tpd_A_Z), TRUE),
        1 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_Z), TRUE)));

  end process;

end VITAL_TBUF_X16;

configuration CFG_TBUF_X16_VITAL of TBUF_X16 is
  for VITAL_TBUF_X16
  end for;
end CFG_TBUF_X16_VITAL;

---- CELL TBUF_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TBUF_X2 is
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
attribute VITAL_LEVEL0 of TBUF_X2 : entity is TRUE;
end TBUF_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TBUF_X2 of TBUF_X2 is
  attribute VITAL_LEVEL1 of VITAL_TBUF_X2 : architecture is TRUE;

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
    Z_zd := VitalBUFIF0(data => A_ipd, enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, VitalExtendToFillDelay(tpd_A_Z), TRUE),
        1 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_Z), TRUE)));

  end process;

end VITAL_TBUF_X2;

configuration CFG_TBUF_X2_VITAL of TBUF_X2 is
  for VITAL_TBUF_X2
  end for;
end CFG_TBUF_X2_VITAL;

---- CELL TBUF_X4 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TBUF_X4 is
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
attribute VITAL_LEVEL0 of TBUF_X4 : entity is TRUE;
end TBUF_X4;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TBUF_X4 of TBUF_X4 is
  attribute VITAL_LEVEL1 of VITAL_TBUF_X4 : architecture is TRUE;

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
    Z_zd := VitalBUFIF0(data => A_ipd, enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, VitalExtendToFillDelay(tpd_A_Z), TRUE),
        1 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_Z), TRUE)));

  end process;

end VITAL_TBUF_X4;

configuration CFG_TBUF_X4_VITAL of TBUF_X4 is
  for VITAL_TBUF_X4
  end for;
end CFG_TBUF_X4_VITAL;

---- CELL TBUF_X8 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TBUF_X8 is
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
attribute VITAL_LEVEL0 of TBUF_X8 : entity is TRUE;
end TBUF_X8;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TBUF_X8 of TBUF_X8 is
  attribute VITAL_LEVEL1 of VITAL_TBUF_X8 : architecture is TRUE;

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
    Z_zd := VitalBUFIF0(data => A_ipd, enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => Z,
      GlitchData => glitchData_Z,
      OutSignalName => "Z",
      OutTemp => Z_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, VitalExtendToFillDelay(tpd_A_Z), TRUE),
        1 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_Z), TRUE)));

  end process;

end VITAL_TBUF_X8;

configuration CFG_TBUF_X8_VITAL of TBUF_X8 is
  for VITAL_TBUF_X8
  end for;
end CFG_TBUF_X8_VITAL;

---- CELL TINV_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TINV_X1 is
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
attribute VITAL_LEVEL0 of TINV_X1 : entity is TRUE;
end TINV_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TINV_X1 of TINV_X1 is
  attribute VITAL_LEVEL1 of VITAL_TINV_X1 : architecture is TRUE;

  SIGNAL EN_ipd          : STD_ULOGIC := 'X';
  SIGNAL I_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (EN_ipd, EN, tipd_EN);
    VitalWireDelay (I_ipd, I, tipd_I);
  end block;

  -- Behavior
  VITALBehavior : process (I_ipd, EN_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := VitalBUFIF0(data => (NOT I_ipd), enable => EN_ipd);

    VitalPathDelay01Z (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (EN_ipd'last_event, VitalExtendToFillDelay(tpd_EN_ZN), TRUE),
        1 => (I_ipd'last_event, VitalExtendToFillDelay(tpd_I_ZN), TRUE)));

  end process;

end VITAL_TINV_X1;

configuration CFG_TINV_X1_VITAL of TINV_X1 is
  for VITAL_TINV_X1
  end for;
end CFG_TINV_X1_VITAL;

---- CELL TLAT_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity TLAT_X1 is
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
attribute VITAL_LEVEL0 of TLAT_X1 : entity is TRUE;
end TLAT_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_TLAT_X1 of TLAT_X1 is
  attribute VITAL_LEVEL1 of VITAL_TLAT_X1 : architecture is TRUE;

  SIGNAL D_ipd           : STD_ULOGIC := 'X';
  SIGNAL G_ipd           : STD_ULOGIC := 'X';
  SIGNAL OE_ipd          : STD_ULOGIC := 'X';
  SIGNAL D_dly           : STD_ULOGIC := 'X';
  SIGNAL OE_dly          : STD_ULOGIC := 'X';
  SIGNAL G_dly           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (D_ipd, D, tipd_D);
    VitalWireDelay (G_ipd, G, tipd_G);
    VitalWireDelay (OE_ipd, OE, tipd_OE);
  end block;

  -- Signal Delays
  SignalDelay : block
  begin
    VitalSignalDelay (D_dly, D_ipd, tisd_D_G);
    VitalSignalDelay (OE_dly, OE_ipd, tisd_OE_G);
    VitalSignalDelay (G_dly, G_ipd, ticd_G);
  end block;

  -- Behavior
  VITALBehavior : process (D_dly, OE_dly, G_dly)
    VARIABLE Tviol_D_G_negedge               : STD_ULOGIC := '0';
    VARIABLE Tmkr_D_G_negedge                : VitalTimingDataType := VitalTimingDataInit;
    VARIABLE Pviol_G                         : STD_ULOGIC := '0';
    VARIABLE PInfo_G                         : VitalPeriodDataType := VitalPeriodDataInit;

    VARIABLE Violation                       : STD_ULOGIC := '0';
    VARIABLE PrevData_IQN                    : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQN                             : STD_ULOGIC := 'X';
    VARIABLE PrevData_IQ                     : STD_LOGIC_VECTOR(0 to 1);
    VARIABLE IQ                              : STD_ULOGIC := 'X';

    VARIABLE nextstate                       : STD_ULOGIC := 'X';

    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Q_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Q                    : VitalGlitchDataType;

  begin
    if (TimingChecksOn) then
      VitalPeriodPulseCheck (
        Violation                 => Pviol_G,
        PeriodData                => PInfo_G,
        TestSignal                => G_dly,
        TestSignalName            => "G",
        TestDelay                 => 0.0 ns,
        Period                    => 0.0 ns,
        PulseWidthHigh            => tpw_G_posedge,
        PulseWidthLow             => 0.0 ns,
        CheckEnabled              => TRUE,
        HeaderMsg                 => InstancePath & "/TLAT_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
      VitalSetupHoldCheck (
        Violation                 => Tviol_D_G_negedge,
        TimingData                => Tmkr_D_G_negedge,
        TestSignal                => D_dly,
        TestSignalName            => "D",
        TestDelay                 => 0.0 ns,
        RefSignal                 => G_dly,
        RefSignalName             => "G",
        RefDelay                  => 0.0 ns,
        SetupHigh                 => tsetup_D_G_posedge_negedge,
        SetupLow                  => tsetup_D_G_negedge_negedge,
        HoldHigh                  => thold_D_G_posedge_negedge,
        HoldLow                   => thold_D_G_negedge_negedge,
        EnableSetupOnRef          => TRUE,
        EnableSetupOnTest         => TRUE,
        EnableHoldOnRef           => TRUE,
        EnableHoldOnTest          => TRUE,
        RefTransition             => '*',
        HeaderMsg                 => InstancePath & "/TLAT_X1",
        MsgOn                     => MsgOnVar,
        XOn                       => XOnVar,
        MsgSeverity               => WARNING);
    end if;

    Violation := Pviol_G or Tviol_D_G_negedge;
    nextstate := D_dly;
    VitalStateTable (
      Result => IQN,
      PreviousDataIn => PrevData_IQN,
      StateTable => TLAT_X1_IQN_tab,
      DataIn => (G_dly, nextstate));
    IQN := Violation XOR IQN;
    VitalStateTable (
      Result => IQ,
      PreviousDataIn => PrevData_IQ,
      StateTable => TLAT_X1_IQ_tab,
      DataIn => (G_dly, nextstate));
    IQ := Violation XOR IQ;
    Q_zd := VitalBUFIF0(data => IQ, enable => (NOT OE_dly));

    VitalPathDelay01Z (
      OutSignal => Q,
      GlitchData => glitchData_Q,
      OutSignalName => "Q",
      OutTemp => Q_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (D_dly'last_event, VitalExtendToFillDelay(tpd_D_Q), TRUE),
        1 => (G_dly'last_event, VitalExtendToFillDelay(tpd_G_Q_posedge), TRUE),
        2 => (OE_dly'last_event, VitalExtendToFillDelay(tpd_OE_Q), TRUE)));

  end process;

end VITAL_TLAT_X1;

configuration CFG_TLAT_X1_VITAL of TLAT_X1 is
  for VITAL_TLAT_X1
  end for;
end CFG_TLAT_X1_VITAL;

---- CELL XNOR2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity XNOR2_X1 is
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
attribute VITAL_LEVEL0 of XNOR2_X1 : entity is TRUE;
end XNOR2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_XNOR2_X1 of XNOR2_X1 is
  attribute VITAL_LEVEL1 of VITAL_XNOR2_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd XOR B_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP, (TO_X01((NOT B_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP, (TO_X01(B_ipd)='1')),
        2 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP, (TO_X01(A_ipd)='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP, (TO_X01((NOT A_ipd))='1'))));

  end process;

end VITAL_XNOR2_X1;

configuration CFG_XNOR2_X1_VITAL of XNOR2_X1 is
  for VITAL_XNOR2_X1
  end for;
end CFG_XNOR2_X1_VITAL;

---- CELL XNOR2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity XNOR2_X2 is
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
attribute VITAL_LEVEL0 of XNOR2_X2 : entity is TRUE;
end XNOR2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_XNOR2_X2 of XNOR2_X2 is
  attribute VITAL_LEVEL1 of VITAL_XNOR2_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS ZN_zd                              : STD_LOGIC is Results(1);

    VARIABLE glitchData_ZN                   : VitalGlitchDataType;

  begin
    ZN_zd := (NOT (A_ipd XOR B_ipd));

    VitalPathDelay01 (
      OutSignal => ZN,
      GlitchData => glitchData_ZN,
      OutSignalName => "ZN",
      OutTemp => ZN_zd,
      NegPreemptOn => GlitchVar,
      MsgOn => MsgOnVar,
      XOn => XOnVar,
      Mode => ModeVar,
      Paths => (
        0 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_0_CP, (TO_X01((NOT B_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_ZN_OP_B_EQ_1_CP, (TO_X01(B_ipd)='1')),
        2 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_1_CP, (TO_X01(A_ipd)='1')),
        3 => (B_ipd'last_event, tpd_B_ZN_OP_A_EQ_0_CP, (TO_X01((NOT A_ipd))='1'))));

  end process;

end VITAL_XNOR2_X2;

configuration CFG_XNOR2_X2_VITAL of XNOR2_X2 is
  for VITAL_XNOR2_X2
  end for;
end CFG_XNOR2_X2_VITAL;

---- CELL XOR2_X1 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity XOR2_X1 is
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
attribute VITAL_LEVEL0 of XOR2_X1 : entity is TRUE;
end XOR2_X1;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_XOR2_X1 of XOR2_X1 is
  attribute VITAL_LEVEL1 of VITAL_XOR2_X1 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd XOR B_ipd);

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
        0 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_0_CP, (TO_X01((NOT B_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_1_CP, (TO_X01(B_ipd)='1')),
        2 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_1_CP, (TO_X01(A_ipd)='1')),
        3 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_0_CP, (TO_X01((NOT A_ipd))='1'))));

  end process;

end VITAL_XOR2_X1;

configuration CFG_XOR2_X1_VITAL of XOR2_X1 is
  for VITAL_XOR2_X1
  end for;
end CFG_XOR2_X1_VITAL;

---- CELL XOR2_X2 ----
library IEEE;
use IEEE.STD_LOGIC_1164.all;
library IEEE;
use IEEE.VITAL_Timing.all;

-- entity declaration --
entity XOR2_X2 is
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
attribute VITAL_LEVEL0 of XOR2_X2 : entity is TRUE;
end XOR2_X2;

-- architecture body --
library IEEE;
use IEEE.VITAL_Primitives.all;
library NangateOpenCellLibrary;
use NangateOpenCellLibrary.Tables.all;
use NangateOpenCellLibrary.Attributes.all;
architecture VITAL_XOR2_X2 of XOR2_X2 is
  attribute VITAL_LEVEL1 of VITAL_XOR2_X2 : architecture is TRUE;

  SIGNAL A_ipd           : STD_ULOGIC := 'X';
  SIGNAL B_ipd           : STD_ULOGIC := 'X';

begin

  -- Input Path Delays
  WireDelay : block
  begin
    VitalWireDelay (A_ipd, A, tipd_A);
    VitalWireDelay (B_ipd, B, tipd_B);
  end block;

  -- Behavior
  VITALBehavior : process (A_ipd, B_ipd)
    VARIABLE Results                         : STD_LOGIC_VECTOR(1 to 1) := (others => 'X');
    ALIAS Z_zd                               : STD_LOGIC is Results(1);

    VARIABLE glitchData_Z                    : VitalGlitchDataType;

  begin
    Z_zd := (A_ipd XOR B_ipd);

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
        0 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_0_CP, (TO_X01((NOT B_ipd))='1')),
        1 => (A_ipd'last_event, tpd_A_Z_OP_B_EQ_1_CP, (TO_X01(B_ipd)='1')),
        2 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_1_CP, (TO_X01(A_ipd)='1')),
        3 => (B_ipd'last_event, tpd_B_Z_OP_A_EQ_0_CP, (TO_X01((NOT A_ipd))='1'))));

  end process;

end VITAL_XOR2_X2;

configuration CFG_XOR2_X2_VITAL of XOR2_X2 is
  for VITAL_XOR2_X2
  end for;
end CFG_XOR2_X2_VITAL;

--
-- End of file
--
