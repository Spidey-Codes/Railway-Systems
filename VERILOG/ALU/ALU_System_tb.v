`timescale 1ns / 1ps

module final_tb;

    reg [7:0] A_tb, B_tb;
    reg [2:0] Sel_tb;
    wire [15:0] Y_tb;
    wire Cout_tb;

    reg [55:0] current_op_name;

    ALU_System dut (
        .A(A_tb),
        .B(B_tb),
        .Sel(Sel_tb),
        .Y(Y_tb),
        .Cout(Cout_tb)
    );
    
    always @(*) begin
        current_op_name = op_name(Sel_tb);
    end

    initial begin
        $monitor("Time=%0t | Op: %s | A=%b, B=%b -> Y=%b, Cout=%b",
                 $time, current_op_name, A_tb, B_tb, Y_tb, Cout_tb);

        // Test NOT A (Sel=000)
        Sel_tb = 3'b000; A_tb = 8'b01; B_tb = 8'b0; #10;

        // Test OR (Sel=001)
        Sel_tb = 3'b001; A_tb = 8'b0101; B_tb = 8'b0110; #10;

        // Test AND (Sel=010)
        Sel_tb = 3'b010; A_tb = 8'b10; B_tb = 8'b0101; #10;

        // Test XOR (Sel=011)
        Sel_tb = 3'b011; A_tb = 8'b00010000; B_tb = 8'b00000011; #10;

        // Test ADD (Sel=100)
        Sel_tb = 3'b100; A_tb = 8'b1000; B_tb = 8'b0100; #10;

        // Test SUB (Sel=101)
        Sel_tb = 3'b101; A_tb = 8'b100; B_tb = 8'b1010; #10;
        
        // Test MUL (Sel=110)
        Sel_tb = 3'b110; A_tb = 8'b1110; B_tb = 8'b1010; #10;
        
        // Test NOT B (Sel=111)
        Sel_tb = 3'b111; A_tb = 8'b0; B_tb = 8'b10; #10;
        
        $finish;
    end

    function [55:0] op_name (input [2:0] select);
        case(select)
            3'b000: op_name = "NOT A";
            3'b001: op_name = "A OR B";
            3'b010: op_name = "A AND B";
            3'b011: op_name = "A XOR B";
            3'b100: op_name = "ADD";
            3'b101: op_name = "SUB";
            3'b110: op_name = "MUL";
            3'b111: op_name = "NOT B";
            default: op_name = "---";
        endcase
    endfunction

endmodule