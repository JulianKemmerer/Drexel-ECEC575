// Created by ihdl
module DFF_X2 (D, CK, Q, QN);
  input D;
  input CK;
  output Q;
  output QN;
  reg NOTIFIER;

  `ifdef NTC
    \seq_DFF_X2 (IQ, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D_d);

  `else
    \seq_DFF_X2 (IQ, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D);

  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(posedge CK, negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK, posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $width(negedge CK, 0.1, 0, NOTIFIER);
      $width(posedge CK, 0.1, 0, NOTIFIER);
    `else
      $setuphold(posedge CK, negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, posedge D, 0.1, 0.1, NOTIFIER);
      $width(negedge CK, 0.1, 0, NOTIFIER);
      $width(posedge CK, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
