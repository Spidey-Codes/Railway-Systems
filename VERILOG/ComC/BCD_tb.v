module BCD_tb();
reg [3:0] A, B;
reg Cin;
wire [3:0] S;
wire Cout;
BCD uut (.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));
initial begin
    // Test case 1
    A = 4'b0000; // 0 in BCD
    B = 4'b0000; // 0 in BCD
    Cin = 1'b0; // No carry-in
    #10; // Wait for 10 time units
    $display("A: %b, B: %b, Cin: %b => S: %b, Cout: %b", A, B, Cin, S, Cout);

    // Test case 2
    A = 4'b0001; // 1 in BCD
    B = 4'b0001; // 1 in BCD
    Cin = 1'b0; // No carry-in
    #10;
    $display("A: %b, B: %b, Cin: %b => S: %b, Cout: %b", A, B, Cin, S, Cout);

    // Test case 3
    A = 4'b0010; // 2 in BCD
    B = 4'b0011; // 3 in BCD
    Cin = 1'b0; // No carry-in
    #10;
    $display("A: %b, B: %b, Cin: %b => S: %b, Cout: %b", A, B, Cin, S, Cout);

    // Test case 4
    A = 4'b0100; // 4 in BCD
    B = 4'b0101; // 5 in BCD
    Cin = 1'b0; // No carry-in
    #10;
    $display("A: %b, B: %b, Cin: %b => S: %b, Cout: %b", A, B, Cin, S, Cout);

    // Test case with carry-in
    A = 4'b1000; // 8 in BCD
    B = 4'b1001; // 9 in BCD
    Cin = 1'b1; // Carry-in set to 1
    #10;
    $display("A: %b, B: %b, Cin: %b => S: %b, Cout: %b", A, B, Cin, S, Cout);
end
endmodule