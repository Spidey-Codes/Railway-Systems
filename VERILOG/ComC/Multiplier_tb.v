module Multiplier_tb();
reg [3:0] b;
reg [2:0] a;
wire [6:0] out;
Multiplier DUT(.a(a), .b(b), .res(out));
reg clk, rstn;
initial begin
    clk = 0;
    rstn = 1;
    #20 rstn = 0;
end
always begin
  #10 clk = ~clk;
end
    always @(posedge clk or negedge rstn) begin
        
    end

endmodule