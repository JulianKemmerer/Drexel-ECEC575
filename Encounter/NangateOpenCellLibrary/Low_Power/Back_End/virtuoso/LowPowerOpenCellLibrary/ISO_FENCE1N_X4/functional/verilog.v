// Created by ihdl
module ISO_FENCE1N_X4 (A, EN, Z);
  input A;
  input EN;
  output Z;

  not(Z, i_4);
  and(i_4, A, EN);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule
