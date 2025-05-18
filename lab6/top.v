module top;
  reg clk;
  wire [4:0] A, B;
  wire Ci;
  wire [4:0] SumMy, SumRef;
  wire CoMy, CoRef;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  Stimul stim(A, B, Ci, clk);
  fiveBitFullAdder myAdd(A, B, Ci, CoMy, SumMy);
  fiveBitFullAdderReference refAdd(A, B, Ci, CoRef, SumRef);

  initial begin
    $display("Time|    A|    B|Ci|MySum|MyCo|RefSum|RefCo|");
    $monitor("%4t|%b|%b| %b|%b|   %b| %b|    %b|", $time, A, B, Ci, SumMy, CoMy, SumRef, CoRef);
  end

endmodule
