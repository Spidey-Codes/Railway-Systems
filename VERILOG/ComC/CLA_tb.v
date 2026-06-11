module CLA_tb();
reg [3:0]A,B;
reg CIn;
wire [3:0]SUM;
wire COut;

CLA DUT(
    .a(A), .b(B), .sum(SUM), .cin(CIn), .Cout(COut)
);
reg clk,rst;
initial begin

    clk = 0;
    rst = 1;
    #20
    rst = 0;
end

always begin
    #10 clk = ~clk;
end
reg [3:0]i;
always @(posedge clk, posedge rst) begin
    if (rst) begin
        i=0;
    end
    else begin
        A <= $random%16;
        B <= $random%16;
        CIn <= $random%2;
        #20;
        i=i+1;
        if (i==15)$finish;
    end
    $monitor("%d,a=%b,b=%b,Cin=%b, Sum=%b,Cout=%b",$time,A,B,CIn,SUM,COut);
end
endmodule