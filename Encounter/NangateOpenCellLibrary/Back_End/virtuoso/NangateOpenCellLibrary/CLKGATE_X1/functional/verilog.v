// Created by ihdl
module CLKGATE_X1 (CK, E, GCK);
  input CK;
  input E;
  output GCK;
  reg NOTIFIER;

  `ifdef NTC
    and(GCK, CK_d, IQ);
    \seq_CLKGATE_X1 (IQ, nextstate, CK_d, NOTIFIER);
    not(IQn, IQ);
    buf(nextstate, E_d);

  `else
    and(GCK, CK, IQ);
    \seq_CLKGATE_X1 (IQ, nextstate, CK, NOTIFIER);
    not(IQn, IQ);
    buf(nextstate, E);

  `endif

  specify
    if((E == 1'b0)) (negedge CK => (GCK +: 1'b0)) = (0.1, 0.1);
    if((E == 1'b1)) (CK => GCK) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(posedge CK, negedge E, 0.1, 0.1, NOTIFIER, , ,CK_d, E_d);
      $setuphold(posedge CK, posedge E, 0.1, 0.1, NOTIFIER, , ,CK_d, E_d);
      $width(negedge CK, 0.1, 0, NOTIFIER);
    `else
      $setuphold(posedge CK, negedge E, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, posedge E, 0.1, 0.1, NOTIFIER);
      $width(negedge CK, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
