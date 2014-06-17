// Created by ihdl
module MUX2_X1 (A, B, S, Z);
  input A;
  input B;
  input S;
  output Z;

  or(Z, i_12, i_13);
  and(i_12, S, B);
  and(i_13, A, i_14);
  not(i_14, S);

  specify
    if((B == 1'b0) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((B == 1'b1) && (S == 1'b0)) (A => Z) = (0.1, 0.1);
    if((A == 1'b0) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b1) && (S == 1'b1)) (B => Z) = (0.1, 0.1);
    if((A == 1'b0) && (B == 1'b1)) (S => Z) = (0.1, 0.1);
    if((A == 1'b1) && (B == 1'b0)) (S => Z) = (0.1, 0.1);
  endspecify

endmodule
