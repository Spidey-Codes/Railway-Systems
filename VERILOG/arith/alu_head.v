module alu_head(
    input [3:0]A,
    input [3:0]B,
    input [2:0]OpCode,
    output reg [3:0]Result,
    output reg Flag
);
    wire [3:0]sum, diff, and_res, or_res, xor_res;
    wire carry, borrow;
adder   u0(.a(A), .b(B), .carry(carry), .c(sum));
SuB     u1(.a(A), .b(B), .borrow(borrow), .diff(diff));
oR      u2(.a(A), .b(B), .c(or_res));
And     u3(.a(A), .b(B), .c(and_res));
Xor     u4(.a(A), .b(B), .c(xor_res));

always @(*) 
    begin
    Result = 4'b0000;
    Flag = 1'b0;

        case(OpCode)
            3'b000: begin Result = sum;     Flag = carry;   end
            3'b001: begin Result = diff;    Flag = borrow;  end
            3'b010: begin Result = or_res;  Flag = 0;    end
            3'b011: begin Result = and_res; Flag = 0;    end
            3'b100: begin Result = xor_res; Flag = 0;    end
            default:begin Result = 4'b0000; Flag = 1'b0;    end
        endcase
    end
endmodule


module adder(a,b,c,carry);
    input [3:0]a;
    input [3:0]b;
    output [3:0]c;
    output carry;
    assign {carry,c} = a + b;
endmodule


module SuB(a,b,borrow,diff);
    input [3:0]a;
    input [3:0]b;
    output borrow;
    output [3:0]diff;
    assign {borrow,diff} = a-b;
endmodule


module oR(a,b,c);
    input [3:0]a,b;
    output [3:0]c;
    assign c = a|b;
endmodule


module And(input  [3:0] a,
                   input  [3:0] b,
                   output [3:0] c);
    assign c = a & b;
endmodule


module Xor(a,b,c);
    input [3:0]a,b;
    output [3:0]c;
    assign c = a ^ b;
endmodule