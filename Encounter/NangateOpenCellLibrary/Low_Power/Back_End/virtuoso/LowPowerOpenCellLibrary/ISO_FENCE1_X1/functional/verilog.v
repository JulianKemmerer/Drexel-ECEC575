// Created by ihdl
module ISO_FENCE1_X1 (A, EN, Z);
  input A;
  input EN;
  output Z;

  or(Z, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule
