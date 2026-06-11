module SRlatch_tb;
reg S, R;
wire Q, Qb;
  SRlatch uut (S,R,Q,Qb
    //.S(S),
   // .R(R),
    //.Q(Q),
    //.Qb(Qb)
);
initial begin
  $dumpfile("SRlatch.vcd");
  $dumpvars;
    // Test case 1: Set state
    S = 1; R = 0;
    #10; // Wait for 10 time units
    $display("Test 1 - S: %b, R: %b, Q: %b, Qb: %b", S, R, Q, Qb);

    // Test case 2: Reset state
    S = 0; R = 1;
    #10; // Wait for 10 time units
    $display("Test 2 - S: %b, R: %b, Q: %b, Qb: %b", S, R, Q, Qb);

    // Test case 3: No change (hold state)
    S = 0; R = 0;
    #10; // Wait for 10 time units
    $display("Test 3 - S: %b, R: %b, Q: %b, Qb: %b", S, R, Q, Qb);

    // Test case 4: Invalid state (both set and reset)
    S = 1; R = 1;
    #10; // Wait for 10 time units
    $display("Test 4 - S: %b, R: %b, Q: %b, Qb: %b", S, R, Q, Qb);
    
    $finish; // End simulation
end
endmodule