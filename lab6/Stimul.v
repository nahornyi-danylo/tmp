module Stimul(A, B, Ci, clk);
  output reg [4:0] A, B;
  output reg Ci;
  input clk;

  initial begin
    A = 0;
    B = 0;
    Ci = 0;
    @(posedge clk)
    A = 5'b00001;
    B = 5'b00001;
    @(posedge clk)
    A = 5'b11111;
    @(posedge clk)
    A = 5'b10101;
    B = 5'b01010;
    @(posedge clk)
    Ci = 1;
    @(posedge clk)
    A = 5'b11111;
    B = 5'b11111;
    @(posedge clk)
    $finish;
  end

endmodule
