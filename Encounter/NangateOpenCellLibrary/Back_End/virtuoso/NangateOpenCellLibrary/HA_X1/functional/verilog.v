// Created by ihdl
module HA_X1 (A, B, CO, S);
  input A;
  input B;
  output CO;
  output S;

  and(CO, A, B);
  xor(S, A, B);

  specify
    (A => CO) = (0.1, 0.1);
    (B => CO) = (0.1, 0.1);
    if((B == 1'b0)) (A => S) = (0.1, 0.1);
    if((B == 1'b1)) (A => S) = (0.1, 0.1);
    if((A == 1'b0)) (B => S) = (0.1, 0.1);
    if((A == 1'b1)) (B => S) = (0.1, 0.1);
  endspecify

endmodule
