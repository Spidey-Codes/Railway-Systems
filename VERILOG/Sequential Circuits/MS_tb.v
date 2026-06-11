module MS_tb;
reg clk, D;
wire Q, Qb;
integer i;
MS uut(clk, D, Q, Qb);
initial begin
    clk = 0; // Initialize clock
    for (i = 0; i < 10; i = i + 1) begin
        clk = ~clk; // Toggle clock every iteration
        #10; // Wait for 10 time units
        $display("Clock: %b, D: %b, Q: %b, Qb: %b", clk, D, Q, Qb);
    end
end
initial begin
    $dumpfile("MS.vcd");
    $dumpvars;
    D = 0;
    #25 D =1;
    #30 D = 0;
    #25 D = 1;
end
endmodule //MS_tb