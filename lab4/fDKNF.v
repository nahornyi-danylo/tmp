module fDKNF(x3, x2, x1, out);
  input x3, x2, x1;
  output out;
  
  assign out = ~(~(~x2 | x1) | ~(~x3 | x1));
endmodule
