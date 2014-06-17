// Created by ihdl
module TINV_X1 (EN, I, ZN);
  input EN;
  input I;
  output ZN;

  bufif0(ZN, ZN_in, ZN_enable);
  buf(ZN_enable, EN);
  not(ZN_in, I);

  specify
    (EN => ZN) = (0.1, 0.1);
    (I => ZN) = (0.1, 0.1);
  endspecify

endmodule
