// Created by ihdl
module AON_INV_X2 (A, Z);
  input A;
  output Z;

  not(Z, A);

  specify
    (A => Z) = (0.1, 0.1);
  endspecify

endmodule
