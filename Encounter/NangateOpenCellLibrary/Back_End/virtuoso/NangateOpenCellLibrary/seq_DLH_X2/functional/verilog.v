// Created by ihdl
primitive \seq_DLH_X2  (IQ, nextstate, G, NOTIFIER);
  output IQ;
  input nextstate;
  input G;
  input NOTIFIER;
  reg IQ;

  table
// nextstate           G    NOTIFIER     : @IQ :          IQ
           0           1           ?       : ? :           0;
           1           1           ?       : ? :           1;
           *           ?           ?       : ? :           -; // Ignore all edges on nextstate
           ?           0           ?       : ? :           -; // Ignore non-triggering clock edge
           ?           ?           *       : ? :           x; // Any NOTIFIER change
  endtable
endprimitive
