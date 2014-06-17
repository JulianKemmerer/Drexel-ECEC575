// Created by ihdl
module TLAT_X1 (D, G, OE, Q);
  input D;
  input G;
  input OE;
  output Q;
  reg NOTIFIER;

  `ifdef NTC
    bufif0(Q, Q_in, Q_enable);
    not(Q_enable, OE);
    \seq_TLAT_X1 (IQ, nextstate, G_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q_in, IQ);
    buf(nextstate, D_d);

  `else
    bufif0(Q, Q_in, Q_enable);
    not(Q_enable, OE);
    \seq_TLAT_X1 (IQ, nextstate, G, NOTIFIER);
    not(IQN, IQ);
    buf(Q_in, IQ);
    buf(nextstate, D);

  `endif

  specify
    (D => Q) = (0.1, 0.1);
    (posedge G => (Q +: D)) = (0.1, 0.1);
    (OE => Q) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(negedge G, negedge D, 0.1, 0.1, NOTIFIER, , ,G_d, D_d);
      $setuphold(negedge G, posedge D, 0.1, 0.1, NOTIFIER, , ,G_d, D_d);
      $width(posedge G, 0.1, 0, NOTIFIER);
    `else
      $setuphold(negedge G, negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(negedge G, posedge D, 0.1, 0.1, NOTIFIER);
      $width(posedge G, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
