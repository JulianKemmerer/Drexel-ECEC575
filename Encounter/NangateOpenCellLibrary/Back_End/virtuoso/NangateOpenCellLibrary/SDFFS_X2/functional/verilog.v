// Created by ihdl
module SDFFS_X2 (D, SE, SI, SN, CK, Q, QN);
  input D;
  input SE;
  input SI;
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
    \seq_SDFFS_X2 (IQ, SN_d, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_18, i_19);
    and(i_18, SE_d, SI_d);
    and(i_19, D_d, i_20);
    not(i_20, SE_d);

    // Delayed data/reference logic
    buf(id_24, SN_d);
    and(id_25, id_24, i_26);
    not(i_26, SE_d);
    and(id_26, id_24, SE_d);
    // SDF Logic
    and(NEG_SE_AND_SNx, i_27, SN_d);
    not(i_27, SE_d);
    and(SE_AND_SNx, SE_d, SN_d);
    buf(SNx, SN_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(NEG_SE_AND_SN, NEG_SE_AND_SNx, 1'b1);
      ng_xbuf(SE_AND_SN, SE_AND_SNx, 1'b1);
      ng_xbuf(SN_d, SNx, 1'b1);
      ng_xbuf(xid_24, id_24, 1'b1);
      ng_xbuf(xid_25, id_25, 1'b1);
      ng_xbuf(xid_26, id_26, 1'b1);
    `endif
  `else
    \seq_SDFFS_X2 (IQ, SN, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_18, i_19);
    and(i_18, SE, SI);
    and(i_19, D, i_20);
    not(i_20, SE);

    // Delayed data/reference logic
    buf(id_18, SN);
    and(id_19, id_18, i_24);
    not(i_24, SE);
    and(id_20, id_18, SE);
    // SDF Logic
    and(NEG_SE_AND_SNx, i_25, SN);
    not(i_25, SE);
    and(SE_AND_SNx, SE, SN);
    buf(SNx, SN);

    `ifdef TETRAMAX
    `else
      ng_xbuf(NEG_SE_AND_SN, NEG_SE_AND_SNx, 1'b1);
      ng_xbuf(SE_AND_SN, SE_AND_SNx, 1'b1);
      ng_xbuf(SN, SNx, 1'b1);
      ng_xbuf(xid_18, id_18, 1'b1);
      ng_xbuf(xid_19, id_19, 1'b1);
      ng_xbuf(xid_20, id_20, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge SN, posedge CK, 0.1, 0.1, NOTIFIER, , ,SN_di, CK_d);
      `else
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $recovery(posedge SN, posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (NEG_SE_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (NEG_SE_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (SE_AND_SN === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (SE_AND_SN === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (SN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK &&& (SN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $width(negedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
      $recovery(posedge SN, posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (NEG_SE_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (NEG_SE_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SE_AND_SN === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SE_AND_SN === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
