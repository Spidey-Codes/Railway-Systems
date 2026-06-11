module SuB(a,b,borrow,diff);
    input [31:0]a;
    input [31:0]b;
    output borrow;
    output [31:0]diff;
    assign {borrow,diff} = a-b;
endmodule
