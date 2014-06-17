// Created by ihdl
module OAI21_X1 (A, B1, B2, ZN);
  input A;
  input B1;
  input B2;
  output ZN;

  not(ZN, i_8);
  and(i_8, A, i_9);
  or(i_9, B1, B2);

  specify
    if((B1 == 1'b0) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b0)) (A => ZN) = (0.1, 0.1);
    if((B1 == 1'b1) && (B2 == 1'b1)) (A => ZN) = (0.1, 0.1);
    (B1 => ZN) = (0.1, 0.1);
    (B2 => ZN) = (0.1, 0.1);
  endspecify

endmodule
