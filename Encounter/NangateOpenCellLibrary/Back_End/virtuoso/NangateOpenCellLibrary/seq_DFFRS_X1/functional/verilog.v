// Created by ihdl
primitive \seq_DFFRS_X1  (IQ, SN, RN, nextstate, CK, NOTIFIER);
  output IQ;
  input SN;
  input RN;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
       // SN          RN   nextstate          CK    NOTIFIER     : @IQ :          IQ
           1           ?           0           r           ?       : ? :           0;
           ?           1           1           r           ?       : ? :           1;
           1           ?           0           *           ?       : 0 :           0; // reduce pessimism
           ?           1           1           *           ?       : 1 :           1; // reduce pessimism
           1           1           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           1           1           ?           n           ?       : ? :           -; // Ignore non-triggering clock edge
           0           1           ?           ?           ?       : ? :           1; // SN activated
           *           1           ?           ?           ?       : 1 :           1; // Cover all transitions on SN
           ?           0           ?           ?           ?       : ? :           0; // RN activated
           1           *           ?           ?           ?       : 0 :           0; // Cover all transitions on RN
           ?           ?           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive
