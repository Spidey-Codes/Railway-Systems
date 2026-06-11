module Mul(
    input [15:0]a,b,
    output[31:0]c,
    output cy );
    assign {cy,c} = a*b;
endmodule