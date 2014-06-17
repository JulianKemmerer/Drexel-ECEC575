// Created by ihdl
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
