// Created by ihdl
module SDFFRS_X2 (D, RN, SE, SI, SN, CK, Q, QN);
  input D;
  input RN;
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
      buf (RN_d, RN_di);
    `else
      buf (SN_d, SN);
      buf (RN_d, RN);
    `endif
    \seq_SDFFRS_X2 (IQ, SN_d, RN_d, nextstate, CK_d, NOTIFIER);
    and(IQN, i_32, i_33);
    not(i_32, IQ);
    not(i_33, i_34);
    and(i_34, i_35, i_36);
    not(i_35, SN_d);
    not(i_36, RN_d);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_37, i_38);
    and(i_37, SE_d, SI_d);
    and(i_38, D_d, i_39);
    not(i_39, SE_d);

    // Delayed data/reference logic
    and(id_30, SN_d, RN_d);
    and(id_31, id_30, i_47);
    not(i_47, SE_d);
    and(id_32, id_30, SE_d);
    // SDF Logic
    buf(RNx, RN_d);
    and(RN_AND_NEG_SE_AND_SNx, i_48, SN_d);
    and(i_48, RN_d, i_49);
    not(i_49, SE_d);
    and(RN_AND_SE_AND_SNx, i_50, SN_d);
    and(i_50, RN_d, SE_d);
    and(RN_AND_SNx, RN_d, SN_d);
    buf(SNx, SN_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN_d, RNx, 1'b1);
      ng_xbuf(RN_AND_NEG_SE_AND_SN, RN_AND_NEG_SE_AND_SNx, 1'b1);
      ng_xbuf(RN_AND_SE_AND_SN, RN_AND_SE_AND_SNx, 1'b1);
      ng_xbuf(RN_AND_SN, RN_AND_SNx, 1'b1);
      ng_xbuf(SN_d, SNx, 1'b1);
      ng_xbuf(xid_30, id_30, 1'b1);
      ng_xbuf(xid_31, id_31, 1'b1);
      ng_xbuf(xid_32, id_32, 1'b1);
    `endif
  `else
    \seq_SDFFRS_X2 (IQ, SN, RN, nextstate, CK, NOTIFIER);
    and(IQN, i_32, i_33);
    not(i_32, IQ);
    not(i_33, i_34);
    and(i_34, i_35, i_36);
    not(i_35, SN);
    not(i_36, RN);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_37, i_38);
    and(i_37, SE, SI);
    and(i_38, D, i_39);
    not(i_39, SE);

    // Delayed data/reference logic
    and(id_22, SN, RN);
    and(id_23, id_22, i_43);
    not(i_43, SE);
    and(id_24, id_22, SE);
    // SDF Logic
    buf(RNx, RN);
    and(RN_AND_NEG_SE_AND_SNx, i_44, SN);
    and(i_44, RN, i_45);
    not(i_45, SE);
    and(RN_AND_SE_AND_SNx, i_46, SN);
    and(i_46, RN, SE);
    and(RN_AND_SNx, RN, SN);
    buf(SNx, SN);

    `ifdef TETRAMAX
    `else
      ng_xbuf(RN, RNx, 1'b1);
      ng_xbuf(RN_AND_NEG_SE_AND_SN, RN_AND_NEG_SE_AND_SNx, 1'b1);
      ng_xbuf(RN_AND_SE_AND_SN, RN_AND_SE_AND_SNx, 1'b1);
      ng_xbuf(RN_AND_SN, RN_AND_SNx, 1'b1);
      ng_xbuf(SN, SNx, 1'b1);
      ng_xbuf(xid_22, id_22, 1'b1);
      ng_xbuf(xid_23, id_23, 1'b1);
      ng_xbuf(xid_24, id_24, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b0)) (RN => Q) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (Q +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (Q +: 1'b1)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b0) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b0) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (SE == 1'b1) && (SI == 1'b1) && (SN == 1'b1)) (negedge RN => (QN +: 1'b1)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b0) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b0) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b0) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b0)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b0) && (SE == 1'b1) && (SI == 1'b1)) (SN => QN) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b0) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b0)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    if((CK == 1'b1) && (D == 1'b1) && (RN == 1'b1) && (SE == 1'b1) && (SI == 1'b1)) (negedge SN => (QN +: 1'b0)) = (0.1, 0.1);
    `ifdef NTC
      `ifdef RECREM
        $recrem(posedge RN, posedge CK &&& (SN === 1'b1), 0.1, 0.1, NOTIFIER, , ,RN_di, CK_d);
        $recrem(posedge SN, posedge CK &&& (RN === 1'b1), 0.1, 0.1, NOTIFIER, , ,SN_di, CK_d);
      `else
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge RN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $hold(posedge CK, posedge SN, 0.1, NOTIFIER);
        $recovery(posedge RN &&& (SN === 1'b1), posedge CK, 0.1, NOTIFIER);
        $recovery(posedge SN &&& (RN === 1'b1), posedge CK, 0.1, NOTIFIER);
      `endif
      $setuphold(posedge CK &&& (RN_AND_NEG_SE_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (RN_AND_SE_AND_SN === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (RN_AND_SE_AND_SN === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $width(negedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
    `else
      $hold(posedge CK &&& (RN === 1'b1), posedge SN, 0.1, NOTIFIER);
      $hold(posedge CK &&& (SN === 1'b1), posedge RN, 0.1, NOTIFIER);
      $recovery(posedge RN &&& (SN === 1'b1), posedge CK, 0.1, NOTIFIER);
      $recovery(posedge SN &&& (RN === 1'b1), posedge CK, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE_AND_SN === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_NEG_SE_AND_SN === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SE_AND_SN === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SE_AND_SN === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), negedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (RN_AND_SN === 1'b1), posedge SE, 0.1, 0.1, NOTIFIER);
      $width(negedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge RN &&& (SN === 1'b1), 0.1, 0, NOTIFIER);
      $width(negedge SN &&& (RN === 1'b1), 0.1, 0, NOTIFIER);
      $width(posedge CK &&& (RN_AND_SN === 1'b1), 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
