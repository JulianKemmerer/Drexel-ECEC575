// Created by ihdl
module SDFFR_X2 (D, RN, SE, SI, CK, Q, QN);
  input D;
  input RN;
  input SE;
  input SI;
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
    \seq_SDFFR_X2 (IQ, RN_d, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_18, i_19);
    and(i_18, SE_d, SI_d);
    and(i_19, D_d, i_20);
    not(i_20, SE_d);

    // Delayed data/reference logic
    buf(id_24, RN_d);
    and(id_25, id_24, i_26);
    not(i_26, SE_d);
    and(id_26, id_24, SE_d);
    // SDF Logic
    buf(RNx, RN_d);
    and(RN_AND_NEG_SEx, RN_d, i_27);
    not(i_27, SE_d);
    and(RN_AND_SEx, RN_d, SE_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN_d, RNx, 1'b1);
      ng_xbuf(RN_AND_NEG_SE, RN_AND_NEG_SEx, 1'b1);
      ng_xbuf(RN_AND_SE, RN_AND_SEx, 1'b1);
      ng_xbuf(xid_24, id_24, 1'b1);
      ng_xbuf(xid_25, id_25, 1'b1);
      ng_xbuf(xid_26, id_26, 1'b1);
    `endif
  `else
    \seq_SDFFR_X2 (IQ, RN, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_18, i_19);
    and(i_18, SE, SI);
    and(i_19, D, i_20);
    not(i_20, SE);

    // Delayed data/reference logic
    buf(id_18, RN);
    and(id_19, id_18, i_24);
    not(i_24, SE);
    and(id_20, id_18, SE);
    // SDF Logic
    buf(RNx, RN);
    and(RN_AND_NEG_SEx, RN, i_25);
    not(i_25, SE);
    and(RN_AND_SEx, RN, SE);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN, RNx, 1'b1);
      ng_xbuf(RN_AND_NEG_SE, RN_AND_NEG_SEx, 1'b1);
      ng_xbuf(RN_AND_SE, RN_AND_SEx, 1'b1);
      ng_xbuf(xid_18, id_18, 1'b1);
      ng_xbuf(xid_19, id_19, 1'b1);
      ng_xbuf(xid_20, id_20, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge RN, posedge CK, 0.1, 0.1, NOTIFIER, , ,RN_di, CK_d);
      `else
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $recovery(posedge RN, posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (RN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK &&& (RN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN_AND_SE === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (RN_AND_SE === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $width(negedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
      $recovery(posedge RN, posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SE === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SE === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN, 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
