// Created by ihdl
module SDFF_X2 (D, SE, SI, CK, Q, QN);
  input D;
  input SE;
  input SI;
  input CK;
  output Q;
  output QN;
  reg NOTIFIER;

  `ifdef NTC
    \seq_SDFF_X2 (IQ, nextstate, CK_d, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_12, i_13);
    and(i_12, SE_d, SI_d);
    and(i_13, D_d, i_14);
    not(i_14, SE_d);

    // Delayed data/reference logic
    not(id_16, SE_d);
    buf(id_17, SE_d);
    // SDF Logic
    not(NEG_SEx, SE_d);
    buf(SEx, SE_d);

    `ifdef TETRAMAX
    `else
      ng_xbuf(NEG_SE, NEG_SEx, 1'b1);
      ng_xbuf(SE_d, SEx, 1'b1);
      ng_xbuf(xid_16, id_16, 1'b1);
      ng_xbuf(xid_17, id_17, 1'b1);
    `endif
  `else
    \seq_SDFF_X2 (IQ, nextstate, CK, NOTIFIER);
    not(IQN, IQ);
    buf(Q, IQ);
    buf(QN, IQN);
    or(nextstate, i_12, i_13);
    and(i_12, SE, SI);
    and(i_13, D, i_14);
    not(i_14, SE);

    // Delayed data/reference logic
    not(id_12, SE);
    buf(id_13, SE);
    // SDF Logic
    not(NEG_SEx, SE);
    buf(SEx, SE);

    `ifdef TETRAMAX
    `else
      ng_xbuf(NEG_SE, NEG_SEx, 1'b1);
      ng_xbuf(SE, SEx, 1'b1);
      ng_xbuf(xid_12, id_12, 1'b1);
      ng_xbuf(xid_13, id_13, 1'b1);
    `endif
  `endif

  specify
    (posedge CK => (Q +: D)) = (0.1, 0.1);
    (posedge CK => (QN -: D)) = (0.1, 0.1);
    `ifdef NTC
      $setuphold(posedge CK &&& (NEG_SE === 1'b1), negedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (NEG_SE === 1'b1), posedge D, 0.1, 0.1, NOTIFIER, , ,CK_d, D_d);
      $setuphold(posedge CK &&& (SE === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK &&& (SE === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER, , ,CK_d, SI_d);
      $setuphold(posedge CK, negedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $setuphold(posedge CK, posedge SE, 0.1, 0.1, NOTIFIER, , ,CK_d, SE_d);
      $width(negedge CK, 0.1, 0, NOTIFIER);
      $width(posedge CK, 0.1, 0, NOTIFIER);
    `else
      $setuphold(posedge CK &&& (NEG_SE === 1'b1), negedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (NEG_SE === 1'b1), posedge D, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SE === 1'b1), negedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK &&& (SE === 1'b1), posedge SI, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, negedge SE, 0.1, 0.1, NOTIFIER);
      $setuphold(posedge CK, posedge SE, 0.1, 0.1, NOTIFIER);
      $width(negedge CK, 0.1, 0, NOTIFIER);
      $width(posedge CK, 0.1, 0, NOTIFIER);
    `endif
  endspecify

endmodule
