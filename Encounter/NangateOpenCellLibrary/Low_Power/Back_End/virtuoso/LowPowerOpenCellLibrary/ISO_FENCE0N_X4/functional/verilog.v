// Created by ihdl
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
