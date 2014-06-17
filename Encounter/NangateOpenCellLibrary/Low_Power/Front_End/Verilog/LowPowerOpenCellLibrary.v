// 
// ******************************************************************************
// *                                                                            *
// *                   Copyright (C) 2004-2011, Nangate Inc.                    *
// *                           All rights reserved.                             *
// *                                                                            *
// * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
// *                                                                            *
// * All trademarks, logos, software marks, and trade names (collectively the   *
// * "Marks") in this program are proprietary to Nangate or other respective    *
// * owners that have granted Nangate the right and license to use such Marks.  *
// * You are not permitted to use the Marks without the prior written consent   *
// * of Nangate or such third party that may own the Marks.                     *
// *                                                                            *
// * This file has been provided pursuant to a License Agreement containing     *
// * restrictions on its use. This file contains valuable trade secrets and     *
// * proprietary information of Nangate Inc., and is protected by U.S. and      *
// * international laws and/or treaties.                                        *
// *                                                                            *
// * The copyright notice(s) in this file does not indicate actual or intended  *
// * publication of this file.                                                  *
// *                                                                            *
// *   NGLibraryCharacterizer, v2011.05-QR02-2011-05-18_32 - build 1107011217   *
// *                                                                            *
// ******************************************************************************
// 
// * Default delays
//   * comb. path delay        : 0.1
//   * seq. path delay         : 0.1
//   * delay cells             : 0.1
//   * timing checks           : 0.1
// 
// * NTC Setup
//   * Export NTC sections     : true
//   * Combine setup / hold    : true
//   * Combine recovery/removal: true
// 
// * Extras
//   * Export `celldefine      : false
//   * Export `timescale       : -
// 

module AON_BUF_X1 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module AON_BUF_X2 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module AON_BUF_X4 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module AON_INV_X1 (A, Z);
  input A;
  output Z;

  not(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module AON_INV_X2 (A, Z);
  input A;
  output Z;

  not(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module AON_INV_X4 (A, Z);
  input A;
  output Z;

  not(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module HEADER_OE_X1 (SLEEP, SLEEPOUT);
  input SLEEP;
  output SLEEPOUT;

  buf(SLEEPOUT, SLEEP);

  specify
    (SLEEP => SLEEPOUT) = (0.1, 0.1);
  endspecify

endmodule

module HEADER_OE_X2 (SLEEP, SLEEPOUT);
  input SLEEP;
  output SLEEPOUT;

  buf(SLEEPOUT, SLEEP);

  specify
    (SLEEP => SLEEPOUT) = (0.1, 0.1);
  endspecify

endmodule

module HEADER_OE_X4 (SLEEP, SLEEPOUT);
  input SLEEP;
  output SLEEPOUT;

  buf(SLEEPOUT, SLEEP);

  specify
    (SLEEP => SLEEPOUT) = (0.1, 0.1);
  endspecify

endmodule

module HEADER_X1 (SLEEP);
  input SLEEP;

endmodule

module HEADER_X2 (SLEEP);
  input SLEEP;

endmodule

module HEADER_X4 (SLEEP);
  input SLEEP;

endmodule

module ISO_FENCE0N_X1 (A, EN, Z);
  input A;
  input EN;
  output Z;

  and(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE0N_X2 (A, EN, Z);
  input A;
  input EN;
  output Z;

  and(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE0N_X4 (A, EN, Z);
  input A;
  input EN;
  output Z;

  and(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE0_X1 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  or(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE0_X2 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  or(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE0_X4 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  or(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1N_X1 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  and(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1N_X2 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  and(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1N_X4 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  and(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1_X1 (A, EN, Z);
  input A;
  input EN;
  output Z;

  or(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1_X2 (A, EN, Z);
  input A;
  input EN;
  output Z;

  or(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module ISO_FENCE1_X4 (A, EN, Z);
  input A;
  input EN;
  output Z;

  or(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HLEN_X1 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HLEN_X2 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HLEN_X4 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HL_X1 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HL_X2 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_HL_X4 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LHEN_X1 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LHEN_X2 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LHEN_X4 (A, ISOLN, Z);
  input A;
  input ISOLN;
  output Z;

  and(Z, A, ISOLN);

  specify
    (A => Z) = (0.1, 0.1);
    (ISOLN => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LH_X1 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LH_X2 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

module LS_LH_X4 (A, Z);
  input A;
  output Z;

  buf(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule

`ifdef TETRAMAX
`else
  primitive ng_xbuf (o, i, d);
	output o;
	input i, d;
	table
	// i   d   : o
	   0   1   : 0 ;
	   1   1   : 1 ;
	   x   1   : 1 ;
	endtable
  endprimitive
`endif
//
// End of file
//
