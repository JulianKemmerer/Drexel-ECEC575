// Created by ihdl
module DFFS_X2 (D, SN, CK, Q, QN);
  input D;
  input SN;
  input CK;
  output Q;
  output QN;
  reg NOTIFIER;

  `ifdef NTC
    `ifdef RECREM
      buf (SN_d, SN_di);
    `else
      buf (SN_d, SN);
    `endif
    \seq_DFFS_X2 (IQ, SN_d, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D_d);

    // Delayed data/reference logic
    buf(id_8, SN_d);
    // SDF Logic
    buf(SNx, SN_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(SN_d, SNx, 1'b1);
      ng_xbuf(xid_8, id_8, 1'b1);
    `endif
  `else
    \seq_DFFS_X2 (IQ, SN, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D);

    // Delayed data/reference logic
    buf(id_6, SN);
    // SDF Logic
    buf(SNx, SN);

    `ifdef TETRAMAX
    `else
      ng_xbuf(SN, SNx, 1'b1);
      ng_xbuf(xid_6, id_6, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge SN, posedge CK, 0.1, 0.1, NOTIFIER, , ,SN_di, CK_d);
      `else
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $recovery(posedge SN, posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $width(negedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
      $recovery(posedge SN, posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
