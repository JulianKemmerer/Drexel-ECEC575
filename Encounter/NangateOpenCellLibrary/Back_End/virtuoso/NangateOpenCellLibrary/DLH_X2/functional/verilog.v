// Created by ihdl
module DLH_X2 (D, G, Q);
  input D;
  input G;
  output Q;
  reg NOTIFIER;

  `ifdef NTC
    \seq_DLH_X2 (IQ, nextstate, G_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(nextstate, D_d);

  `else
    \seq_DLH_X2 (IQ, nextstate, G, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(nextstate, D);

  `endif

  specify
    (D => Q) = (0.1, 0.1);
    (posedge G => (Q +: D)) = (0.1, 0.1);
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
