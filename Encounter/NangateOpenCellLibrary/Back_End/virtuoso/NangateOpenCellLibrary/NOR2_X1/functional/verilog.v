// Created by ihdl
module NOR2_X1 (A1, A2, ZN);
  input A1;
  input A2;
  output ZN;

  not(ZN, i_10);
  or(i_10, A1, A2);

  specify
    (A1 => ZN) = (0.1, 0.1);
    (A2 => ZN) = (0.1, 0.1);
  endspecify

endmodule
