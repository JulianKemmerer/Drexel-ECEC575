// Created by ihdl
module DFFRS_X1 (D, RN, SN, CK, Q, QN);
  input D;
  input RN;
  input SN;
  input CK;
  output Q;
  output QN;
  reg NOTIFIER;

  `ifdef NTC
    `ifdef RECREM
      buf (SN_d, SN_di);
      buf (RN_d, RN_di);
    `else
      buf (SN_d, SN);
      buf (RN_d, RN);
    `endif
    \seq_DFFRS_X1 (IQ, SN_d, RN_d, nextstate, CK_d, NOTIFIER);
    and(IQN, i_10, i_11);
    not(i_10, IQ);
    not(i_11, i_12);
    and(i_12, i_13, i_14);
    not(i_13, SN_d);
    not(i_14, RN_d);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D_d);

    // Delayed data/reference logic
    and(id_14, SN_d, RN_d);
    // SDF Logic
    buf(RNx, RN_d);
    and(RN_AND_SNx, RN_d, SN_d);
    buf(SNx, SN_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN_d, RNx, 1'b1);
      ng_xbuf(RN_AND_SN, RN_AND_SNx, 1'b1);
      ng_xbuf(SN_d, SNx, 1'b1);
      ng_xbuf(xid_14, id_14, 1'b1);
    `endif
  `else
    \seq_DFFRS_X1 (IQ, SN, RN, nextstate, CK, NOTIFIER);
    and(IQN, i_10, i_11);
    not(i_10, IQ);
    not(i_11, i_12);
    and(i_12, i_13, i_14);
    not(i_13, SN);
    not(i_14, RN);
    buf(Q, IQ);
    buf(QN, IQN);
    buf(nextstate, D);

    // Delayed data/reference logic
    and(id_10, SN, RN);
    // SDF Logic
    buf(RNx, RN);
    and(RN_AND_SNx, RN, SN);
    buf(SNx, SN);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN, RNx, 1'b1);
      ng_xbuf(RN_AND_SN, RN_AND_SNx, 1'b1);
      ng_xbuf(SN, SNx, 1'b1);
      ng_xbuf(xid_10, id_10, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge RN, posedge CK &&& (SN === 1'b1), 0.1, 0.1, NOTIFIER, , ,RN_di, CK_d);
        $recrem(posedge SN, posedge CK &&& (RN === 1'b1), 0.1, 0.1, NOTIFIER, , ,SN_di, CK_d);
      `else
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $recovery(posedge RN &&& (SN === 1'b1), posedge CK, 0.1, NOTIFIER);
        $recovery(posedge SN &&& (RN === 1'b1), posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $width(negedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK &&& (RN === 1'b1), posedge SN, 0.1, NOTIFIER);
      $hold(posedge CK &&& (SN === 1'b1), posedge RN, 0.1, NOTIFIER);
      $recovery(posedge RN &&& (SN === 1'b1), posedge CK, 0.1, NOTIFIER);
      $recovery(posedge SN &&& (RN === 1'b1), posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
