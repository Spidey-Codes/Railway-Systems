module Not(a,c);
    input [31:0]a;
    output [31:0]c;
    assign c = ~a;
endmodule