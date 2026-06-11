module Mux4to1 (
    input i0,i1,i2,i3,
    input [1:0] Sel,
    output Y  
);
assign Y = (i0& ~Sel[1]& ~Sel[0]) | (i1& ~Sel[1]& Sel[0]) | (i2& Sel[1]& ~Sel[0]) | (i3& Sel[1]& Sel[0]);
endmodule //Mux4to1