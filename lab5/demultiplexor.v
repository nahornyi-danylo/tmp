module demultiplexor(EN, addr, S, out);
  input wire [2:0] addr;
  input wire EN;
  input wire S;
  output reg [7:0] out;

  always @(*) begin
    if(EN) out = 8'bz;

    else begin
      out = 8'b0;
      out[addr] = S;
    end

  end
  
endmodule
