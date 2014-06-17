// Created by ihdl
module NAND2_X2 (A1, A2, ZN);
  input A1;
  input A2;
  output ZN;

  not(ZN, i_22);
  and(i_22, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule
