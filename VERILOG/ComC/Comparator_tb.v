module Comparator_tb ();
reg [3:0]a;
reg [3:0]b;
wire E;
wire G;
wire L;

Comparator_4bit DUT(
    .A(a),
    .B(b),
    .AEqualB(E),
    .AGreatB(G),
    .ALessB(L)
);
reg clk;
reg rstn;

initial begin 
    clk = 0;
    rstn = 1;
    #20
    rstn = 0;
end
always begin
    #10 clk = ~clk;
end
//Test Sequence
reg [3:0]i;
always @(posedge clk, posedge rstn) begin
    if(rstn)begin
        i=0;
    end
    else begin
        a<= $random%16;
        b<= $random%16;
        #20;
        i=i+1;
        if(i==10)$finish;
    end
    $monitor ("%t : a= %b, b= %b E= %b, G= %b, L= %b", $time,a,b,E,G,L);
end
endmodule //Comparator_tb