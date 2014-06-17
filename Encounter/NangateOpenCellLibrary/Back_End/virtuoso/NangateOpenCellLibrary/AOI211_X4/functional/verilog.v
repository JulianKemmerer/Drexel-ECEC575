// Created by ihdl
module AOI211_X4 (A, B, C1, C2, ZN);
  input A;
  input B;
  input C1;
  input C2;
  output ZN;

  not(ZN, i_20);
  not(i_20, i_21);
  not(i_21, i_22);
  or(i_22, i_23, A);
  or(i_23, i_24, B);
  and(i_24, C1, C2);

  specify
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b0) && (C2 == 1'b1)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b0) && (C1 == 1'b1) && (C2 == 1'b0)) (B => ZN) = (0.1, 0.1);
    (C1 => ZN) = (0.1, 0.1);
    (C2 => ZN) = (0.1, 0.1);
  endspecify

endmodule
