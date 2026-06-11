module alu_32_bit(
    input [31:0]A,
    input [31:0]B,
    input [15:0]A_m,
    input [15:0]B_m,
    input [2:0]OpCode,
    output reg [31:0]Result,
    output reg Flag
);
    wire [31:0]sum, diff, mul, and_res, or_res, xor_res, not1_res, not2_res;
    wire carry, borrow, cy;
adder   u0(.a(A), .b(B), .carry(carry), .c(sum));
SuB     u1(.a(A), .b(B), .borrow(borrow), .diff(diff));
Mul     u2(.a(A_m),.b(B_m), .cy(cy), .c(mul));
oR      u3(.a(A), .b(B), .c(or_res));
And     u4(.a(A), .b(B), .c(and_res));
Xor     u5(.a(A), .b(B), .c(xor_res));
Not     u6(.a(A), .c(not1_res));
Not     u7(.a(B), .c(not2_res));

always @(*) 
    begin
    Result = 32'h00000000;
    Flag = 1'b0;

        case(OpCode)
            3'b000: begin Result = sum;     Flag = carry;   end
            3'b001: begin Result = diff;    Flag = borrow;  end
            3'b010: begin Result = mul;     Flag = cy;  end
            3'b011: begin Result = or_res;  Flag = 0;    end
            3'b100: begin Result = and_res; Flag = 0;    end
            3'b101: begin Result = xor_res; Flag = 0;    end
            3'b110: begin Result = not1_res; Flag = 0;    end
            3'b111: begin Result = not2_res; Flag = 0;    end
            default:begin Result = 32'h00000000; Flag = 1'b0;    end
        endcase
    end
endmodule


module adder(a,b,c,carry);
    input [31:0]a;
    input [31:0]b;
    output [31:0]c;
    output carry;
    assign {carry,c} = a + b;
endmodule


module SuB(a,b,borrow,diff);
    input [31:0]a;
    input [31:0]b;
    output borrow;
    output [31:0]diff;
    assign {borrow,diff} = a-b;
endmodule


module oR(a,b,c);
    input [31:0]a,b;
    output [31:0]c;
    assign c = a|b;
endmodule


module And(
    input  [31:0]a,
    input  [31:0]b,
    output [31:0]c);
    assign c = a & b;
endmodule


module Xor(a,b,c);
    input [31:0]a,b;
    output [31:0]c;
    assign c = a ^ b;
endmodule


module Not(a,c);
    input [31:0]a;
    output [31:0]c;
    assign c = ~a;
endmodule


module Mul(
    input [15:0]a,b,
    output[31:0]c,
    output cy );
    assign {cy,c} = a*b;
endmodule