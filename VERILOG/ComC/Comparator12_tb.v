module Comparator12_tb ();
/*reg [11:8]a;
reg [11:8]b;
reg [7:4]a;
reg [7:4]b;*/
reg [11:0]a;
reg [11:0]b;
wire E3;
wire G3;
wire L3;
wire E2;
wire G2;
wire L2;
wire E1;
wire G1;
wire L1;

Comparator_12bit DUT(
    .A(a),
    .B(b),
    .AEqualB1(E1),
    .AGreatB1(G1),
    .ALessB1(L1),
    .AEqualB2(E2),
    .AGreatB2(G2),
    .ALessB2(L2),
    .AEqualB3(E3),
    .AGreatB3(G3),
    .ALessB3(L3)
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
        a<= $random%2048;
        b<= $random%2048;
        #20;
        i=i+1;
        if(i==15)$finish;
    end
    $monitor ("%t : a= %b, b= %b E= %b, G= %b, L= %b", $time,a,b,E,G,L);
end
endmodule //Comparator_tb