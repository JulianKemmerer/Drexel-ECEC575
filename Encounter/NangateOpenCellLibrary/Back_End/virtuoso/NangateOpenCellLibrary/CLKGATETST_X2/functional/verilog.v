// Created by ihdl
module CLKGATETST_X2 (CK, E, SE, GCK);
  input CK;
  input E;
  input SE;
  output GCK;
  reg NOTIFIER;

  `ifdef NTC
    and(GCK, IQ, CK_d);
    \seq_CLKGATETST_X2 (IQ, nextstate, CK_d, NOTIFIER);
    not(IQn, IQ);
    or(nextstate, E_d, SE_d);

  `else
    and(GCK, IQ, CK);
    \seq_CLKGATETST_X2 (IQ, nextstate, CK, NOTIFIER);
    not(IQn, IQ);
    or(nextstate, E, SE);

  `endif

  specify
    if((E == 1'b0) && (SE == 1'b0)) (negedge CK => (GCK +: 1'b0)) = (0.1, 0.1);
    if((E == 1'b0) && (SE == 1'b1)) (CK => GCK) = (0.1, 0.1);
    if((E == 1'b1) && (SE == 1'b0)) (CK => GCK) = (0.1, 0.1);
    if((E == 1'b1) && (SE == 1'b1)) (CK => GCK) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(posedge CK, negedge E, 0.1, 0.1, NOTIFIER, , ,CK_d, E_d);
      $setuphold(posedge CK, negedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK, posedge E, 0.1, 0.1, NOTIFIER, , ,CK_d, E_d);
      $setuphold(posedge CK, posedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $width(negedge CK, 0.1, 0, NOTIFIER);
    `else
      $setuphold(posedge CK, negedge E, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, negedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, posedge E, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, posedge SE, 0.1, 0.1, NOTIFIER);
      $width(negedge CK, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
