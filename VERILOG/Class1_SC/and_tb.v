`timescale 1ns / 1ps
module half_adder_tb();
    reg  x,y;
    wire S,C;
half_adder dut(
    .x(x),
    .y(y),
    .S(S),
    .C(C)
    );
initial begin
        x = 0 ; y = 0;
        #10;
        x = 0; y = 1;
        #10;
        x = 1; y = 0;
        #10;
        x = 1; y = 1;
        #10;
        end
endmodule

module half_adder (S,C,x,y);
    input x,y;
    output S, C;
    xor (S,x,y);
    and (C,x,y); 
endmodule
