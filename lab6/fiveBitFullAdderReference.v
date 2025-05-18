module fiveBitFullAdderReference(A, B, Ci, Co, S);
  input wire [4:0] A, B;
  input wire Ci;
  output wire Co;
  output wire [4:0] S;

  reg [5:0] sum;

  always @(A, B, Ci) sum = A + B + Ci;

  assign {Co, S} = sum;
endmodule
