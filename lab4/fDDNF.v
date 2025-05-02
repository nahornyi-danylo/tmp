module fDDNF(x3, x2, x1, out);
  input x3, x2, x1;
  output out;
  
  assign out = x1 | ~(x2 | x3);
endmodule
