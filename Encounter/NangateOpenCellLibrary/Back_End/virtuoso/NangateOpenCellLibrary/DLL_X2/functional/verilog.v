// Created by ihdl
module DLL_X2 (D, GN, Q);
  input D;
  input GN;
  output Q;
  reg NOTIFIER;

  `ifdef NTC
    \seq_DLL_X2 (IQ, nextstate, GN_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(nextstate, D_d);

  `else
    \seq_DLL_X2 (IQ, nextstate, GN, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(nextstate, D);

  `endif

  specify
    (D => Q) = (0.1, 0.1);
    (negedge GN => (Q +: D)) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(posedge GN, negedge D, 0.1, 0.1, NOTIFIER, , ,GN_d, D_d);
      $setuphold(posedge GN, posedge D, 0.1, 0.1, NOTIFIER, , ,GN_d, D_d);
      $width(negedge GN, 0.1, 0, NOTIFIER);
    `else
      $setuphold(posedge GN, negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge GN, posedge D, 0.1, 0.1, NOTIFIER);
      $width(negedge GN, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
