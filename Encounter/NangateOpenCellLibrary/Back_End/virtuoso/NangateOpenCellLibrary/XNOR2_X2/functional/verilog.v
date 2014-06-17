// Created by ihdl
module XNOR2_X2 (A, B, ZN);
  input A;
  input B;
  output ZN;

  not(ZN, i_4);
  xor(i_4, A, B);

  specify
    if((B == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((A == 1'b0)) (B => ZN) = (0.1, 0.1);
    if((A == 1'b1)) (B => ZN) = (0.1, 0.1);
  endspecify

endmodule
