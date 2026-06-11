`timescale 1ns / 1ps

module alu_tb;

    reg [31:0] A;
    reg [31:0] B;
    reg [15:0] A_m;
    reg [15:0] B_m;
    reg [2:0] Opcode;

    wire [31:0] Result;
    wire Flag;

    alu_32_bit dut (
        .A(A), 
        .B(B),
        .A_m(A_m),
        .B_m(B_m), 
        .OpCode(Opcode), 
        .Result(Result), 
        .Flag(Flag)
    );

    // 4. Test Logic
    initial begin
        $monitor("Time=%0t | Opcode=%b | A=%d (%b) B=%d (%b) | A_m=%d (%b) B_m=%d (%b) | Result=%d (%b) | Flag=%b", 
                 $time, Opcode, A, A, B, B, A_m, A_m, B_m, B_m, Result, Result, Flag);

        // --- Test Case 1: ADDITION (Opcode 000) ---
        A = 12458795; B = 12345673; Opcode = 3'b000; // 5 + 3 = 8
        #10; // Wait 10 nanoseconds
        
        // --- Test Case 2: ADDITION OVERFLOW (Opcode 000) ---
        A = 57894225; B = 16457850; Opcode = 3'b000; // 225 + 50 = 19 (with Carry/Flag = 1)
        #10;

        // --- Test Case 3: SUBTRACTION (Opcode 001) ---
        A = 13647200; B = 5869359698; Opcode = 3'b001; // 200 - 98 = 102
        #10;

        // --- Test Case 4: SUBTRACTION BORROW (Opcode 001) ---
        A = 65656532100; B = 6532563205; Opcode = 3'b001; // 100 - 205 = Negative (Wrap around with Borrow/Flag = 1)
        #10;

        //--- Test Case 5: Multiplication (Opcode 010) ---
        A_m = 12345675; B_m = 14578985; Opcode = 3'b010; // 5*5 =10
        #10;

        // --- Test Case 6: BITWISE OR (Opcode 011) ---
        A = 32'h8795EDCA; B = 32'h1587ABCD; Opcode = 3'b011;
        #10;

        // --- Test Case 7: BITWISE AND (Opcode 100) ---
        A = 32'h8795EDCA; B = 32'h1587ABCD; Opcode = 3'b100;
        #10;

        // --- Test Case 7: BITWISE XOR (Opcode 101) ---
        A = 32'h8795EDCA; B = 32'h1587ABCD; Opcode = 3'b101;
        #10;

        // --- Test Case 8: BITWISE NOR (Opcode 110) ---
        A = 32'h8795EDCA; B = 32'h1587ABCD; Opcode = 3'b110;
        #10;

        // --- Test Case 9: BITWISE NOR (Opcode 111) ---
        A = 32'h8795EDCA; B = 32'h1587ABCD; Opcode = 3'b111;
        #10;

        //--- Test Case 10: Multiplication (Opcode 010) ---
        A_m = 54632155; B_m = 65852250; Opcode = 3'b010; // 15*5 =10
        #10;

        // End simulation
        $finish;
    end

endmodule

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