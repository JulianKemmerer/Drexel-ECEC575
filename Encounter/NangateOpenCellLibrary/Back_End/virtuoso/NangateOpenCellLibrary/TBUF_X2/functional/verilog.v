// Created by ihdl
module TBUF_X2 (A, EN, Z);
  input A;
  input EN;
  output Z;

  bufif0(Z, Z_in, Z_enable);
  buf(Z_enable, EN);
  buf(Z_in, A);

  specify
    (A => Z) = (0.1, 0.1);
    (EN => Z) = (0.1, 0.1);
  endspecify

endmodule
