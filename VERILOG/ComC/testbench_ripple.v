module testbench_ripple();
reg [3:0]a,b;
reg c0;
wire [3:0]sum;
wire cout;

RippleCarryAdder DUT(
    .A(a),.B(b),.S(sum) ,.C4(cout), .C0(c0)
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
        a <= $random%16;
        b <= $random%16;
        c0 <= $random%2;
        #20;
        i=i+1;
        if (i==15)$finish;
    end
    $monitor("%d,a=%b,b=%b,Cin=%b, Sum=%b,Cout=%b",$time,a,b,c0,sum,cout);
end
endmodule