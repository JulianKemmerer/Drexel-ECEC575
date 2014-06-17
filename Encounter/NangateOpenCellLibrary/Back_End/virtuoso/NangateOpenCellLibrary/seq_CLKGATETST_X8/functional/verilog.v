// Created by ihdl
primitive \seq_CLKGATETST_X8  (IQ, nextstate, CK, NOTIFIER);
  output IQ;
  input nextstate;
  input CK;
  input NOTIFIER;
  reg IQ;

  table
// nextstate          CK    NOTIFIER     : @IQ :          IQ
           0           0           ?       : ? :           0;
           1           0           ?       : ? :           1;
           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           ?           1           ?       : ? :           -; // Ignore non-triggering clock edge
           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive
