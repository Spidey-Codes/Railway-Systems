module Mux4to1_tb ();
reg i0,i1,i2,i3;
reg [1:0] se;
wire out;

Mux4to1 DUT(
    .i0(i0), .i1(i1), .i2(i2), .i3(i3), .Sel(se), .Y(out)
);
initial begin i0 =1'b0; i1 =1'b0; i2 =1'b1; i3 =1'b1; se=2'b00;
    #5 i1 =1'b1;
    #5 se =2'b10;
    #5 i3 =1'b0;
    #5 i2 = 1'b0;
    #5 se = 2'b11;
    #5 se = 2'b01;
    #5 $stop();
end
initial begin
    $monitor("time=%0d,i0=%b, i1=%b ,i2=%b, i3=%b, selector=%b, Output=%b ",$time,i0,i1,i2,i3,se,out);
end
endmodule //Mux4to1_tb