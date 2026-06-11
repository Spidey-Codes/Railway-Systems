`timescale 1ns/1ps

module cpu_core_tb;

    // --- Signals for the CPU Core ---
    reg clk;
    reg rst;
    
    // --- Wires for Monitoring (Connect to CPU Core Outputs if available) ---
    // These need to be declared as wires/regs if you bring them out of cpu_core
    // For simplicity, we assume we monitor key internal points:
    wire [31:0] pc_out;             // Current PC value
    wire [31:0] instruction;        // Fetched instruction
    wire [31:0] rf_read_data1;      // Read data from R_s1
    wire [31:0] alu_result;         // ALU output
    
    // --- Instantiate the Device Under Test (DUT) ---
    // You would use the name of your top-level module (cpu_core) here
    cpu_core dut (
        .clk(clk),
        .rst(rst),
        // If you brought out internal signals for monitoring, connect them here:
        // .pc_out(pc_out), 
        // .instruction(instruction),
        // .alu_result(alu_result),
        // ... etc.
    );

    // --- Clock Generation ---
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Clock period is 10ns
    end
    
    // --- Initial Memory Setup (Example) ---
    // This file must exist in the simulation directory.
    // The program should include simple R-type and I-type instructions
    /* Example program.mem content (RISC-V/MIPS-like):
       00100093   // 0x00: ADDI x1, x0, 1
       00200113   // 0x04: ADDI x2, x0, 2
       002081B3   // 0x08: ADD  x3, x1, x2  (x3 = 1 + 2 = 3)
       00010213   // 0x0C: ADDI x4, x2, 0   (x4 = 2)
       ...
    */
    
    // --- Test Stimulus ---
    initial begin
        $dumpfile("cpu_core.vcd");
        $dumpvars(0, cpu_core_tb);

        $display("--- Starting CPU Core Simulation ---");
        
        // 1. Reset Phase
        rst = 1; // Assert reset
        #10 rst = 0; // De-assert reset after 1 clock cycle
        $display("Time=%0t | System Reset Complete.", $time);
        
        // 2. Execution Phase
        
        // Cycle 1: Fetch and Execute ADDI x1, x0, 1 (PC should be 0x00)
        #10; 
        $display("Time=%0t | Executing Instruction 1: ADDI x1, x0, 1", $time);
        // At the end of this cycle, RF[x1] should be 1, PC should be 0x04.

        // Cycle 2: Fetch and Execute ADDI x2, x0, 2 (PC should be 0x04)
        #10;
        $display("Time=%0t | Executing Instruction 2: ADDI x2, x0, 2", $time);
        // At the end of this cycle, RF[x2] should be 2, PC should be 0x08.

        // Cycle 3: Fetch and Execute ADD x3, x1, x2 (PC should be 0x08)
        #10;
        $display("Time=%0t | Executing Instruction 3: ADD x3, x1, x2", $time);
        // At the end of this cycle, RF[x3] should be 3, PC should be 0x0C.

        // Cycle 4: Fetch and Execute ADDI x4, x2, 0 (PC should be 0x0C)
        #10;
        $display("Time=%0t | Executing Instruction 4: ADDI x4, x2, 0", $time);
        // At the end of this cycle, RF[x4] should be 2, PC should be 0x10.
        
        // --- Further cycles to test Load/Store, Branch, etc. ---
        #40; // Run for a few more cycles to check for stability

        // 3. Verification and Finish
        $display("--- Verification Stage ---");
        
        // **Verification requires connecting to the internal RF array **
        // You would typically use Verilog's hierarchical referencing for this:
        /*
        #1; // Wait a short time for combinational paths to settle
        if (dut.RF_U.registers[3] == 32'd3) begin
            $display("TEST PASSED: R-type ADD result (x3=3) verified.");
        end else begin
            $display("TEST FAILED: R-type ADD result (x3) is %h, expected 3.", dut.RF_U.registers[3]);
        end
        */

        #10;
        $display("--- Simulation Finished ---");
        $finish;
    end

endmodule