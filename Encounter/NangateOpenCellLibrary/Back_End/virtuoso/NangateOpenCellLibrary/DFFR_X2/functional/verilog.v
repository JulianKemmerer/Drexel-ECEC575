// Created by ihdl
module DFFR_X2 (D, RN, CK, Q, QN);
  input D;
  input RN;
  input CK;
  output Q;
  output QN;
  reg NOTIFIER;

  `ifdef NTC
    `ifdef RECREM
      buf (RN_d, RN_di);
    `else
      buf (RN_d, RN);
    `endif
    \seq_DFFR_X2 (IQ, RN_d, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D_d);

    // Delayed data/reference logic
    buf(id_8, RN_d);
    // SDF Logic
    buf(RNx, RN_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN_d, RNx, 1'b1);
      ng_xbuf(xid_8, id_8, 1'b1);
    `endif
  `else
    \seq_DFFR_X2 (IQ, RN, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D);

    // Delayed data/reference logic
    buf(id_6, RN);
    // SDF Logic
    buf(RNx, RN);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN, RNx, 1'b1);
      ng_xbuf(xid_6, id_6, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge RN, posedge CK, 0.1, 0.1, NOTIFIER, , ,RN_di, CK_d);
      `else
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $recovery(posedge RN, posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (RN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $width(negedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
      $recovery(posedge RN, posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
