module ALU_System (
    input [7:0] A, B,
    input [2:0] Sel,
    output [15:0] Y,
    output Cout // Carry out from adder
);
    wire [15:0] not_a_out, or_out, and_out, xor_out;
    wire [15:0] add_out, sub_out, mul_out, not_b_out;
    wire add_carry, sub_borrow;

    NOT           not_a_unit (.A(A), .Output1(not_a_out));
    OR             or_unit    (.A(A), .B(B), .Output2(or_out));
    AND            and_unit   (.A(A), .B(B), .Output3(and_out));
    XOR            xor_unit   (.A(A), .B(B), .Output4(xor_out));
    // Adder
    // Using RippleCarryAdder to perform addition
    Adder add_unit (.A(A), .B(B), .C0(1'b0), .S(add_out[7:0]), .C8(add_carry));

    // Subtractor
    SUB_8_bit      sub_unit   (.A(A), .B(B), .Diff(sub_out[7:0]), .Borrow(sub_borrow));

    // Multiplier
    MUL_8_bit mul_unit (.A(A), .B(B), .Output7(mul_out));

    // Using the same NOT module for B
    NOT           not_b_unit (.B(B), .Output8(not_b_out));

    // --- Instantiate the Corrected ALU MUX ---
    ALU alu_mux (
        .in0(not_a_out), .in1(or_out), .in2(and_out), .in3(xor_out),
        .in4(add_out),   .in5(sub_out),.in6(mul_out),  .in7(not_b_out),
        .Sel(Sel),
        .Y(Y)
    );

    // Assign final carry out for external status check
    assign Cout = add_carry;

endmodule