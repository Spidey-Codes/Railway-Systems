`timescale 1ns / 1ns
`include "hey.v"

module hey_tb;

reg A;
wire B;

hey uut(A , B);

initial begin
    $dumpfile("hey_tb.vcd");
    $dumpvars(0, hey_tb);

    A = 0;
    #20;

    A = 1;
    #20;

    A = 0;
    #20;

    $display("Test Complete");

end

endmodule