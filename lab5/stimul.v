module stimul(EN, addr, S, clk);
output reg EN;
output reg [2:0] addr;
output reg S;
input clk;

  initial begin
    {EN, addr, S} = 0;
    @(posedge clk); {EN, addr, S} = 5'b00001;
    @(posedge clk); {EN, addr, S} = 5'b00011;
    @(posedge clk); {EN, addr, S} = 5'b00101;
    @(posedge clk); {EN, addr, S} = 5'b00111;
    @(posedge clk); {EN, addr, S} = 5'b01001;
    @(posedge clk); {EN, addr, S} = 5'b01011;
    @(posedge clk); {EN, addr, S} = 5'b01101;
    @(posedge clk); {EN, addr, S} = 5'b01111;
    
    @(posedge clk); {EN, addr, S} = 5'b10001;
    @(posedge clk); {EN, addr, S} = 5'b10011;
    @(posedge clk); {EN, addr, S} = 5'b10101;
    @(posedge clk); {EN, addr, S} = 5'b10111;
    @(posedge clk); {EN, addr, S} = 5'b11001;
    @(posedge clk); {EN, addr, S} = 5'b11011;
    @(posedge clk); {EN, addr, S} = 5'b11101;
    @(posedge clk); {EN, addr, S} = 5'b11111;

    repeat(3)@(posedge clk);
    $finish;
  
  end
endmodule