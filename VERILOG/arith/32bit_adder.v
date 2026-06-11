module adder(a,b,c,carry);
    input [31:0]a;
    input [31:0]b;
    output [31:0]c;
    output carry;
    assign {carry,c} = a + b;
endmodule
