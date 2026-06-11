module Not(a,c);
    input [7:0]a;
    output [7:0]c;
    assign c = ~a;
endmodule