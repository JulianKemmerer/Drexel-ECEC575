// Created by ihdl
module HEADER_OE_X1 (SLEEP, SLEEPOUT);
  input SLEEP;
  output SLEEPOUT;

  buf(SLEEPOUT, SLEEP);

  specify
    (SLEEP => SLEEPOUT) = (0.1, 0.1);
  endspecify

endmodule
