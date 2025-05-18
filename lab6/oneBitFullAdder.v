module oneBitFullAdder(A, B, Ci, Co, S);
  input wire A, B, Ci;
  output wire Co, S;

  wire c1, c2, c3;
  xor(c1, A, B);
  and(c2, A, B);
  xor(S, Ci, c1);
  and(c3, Ci, c1);
  or(Co, c2, c3);


endmodule
