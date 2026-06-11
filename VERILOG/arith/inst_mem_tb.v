`timescale 1ns/1ps
module inst_mem_tb;
    reg [31:0] tb_addr;
    reg [31:0] tb_inst;

    Instruction_Mem uut(
        .address_i(tb_addr),
        .instruction_o(tb_inst)
    );
    initial begin
        $dumpfile("instruction_memory.vcd");
        $dumpvars(0, tb_inst);

        $display("--- Starting Instruction Memory Test ---");

        // 1. Read instruction at the starting address (index 0)
        tb_addr = 32'h00000000; 
        #10;
        $display("Time=%0t | Address: 0x%h | Instruction: 0x%h (Expected: 0x00100093)", 
                 $time, tb_addr, tb_inst);
        
        // 2. Read instruction at address 4 (index 1)
        tb_addr = 32'h00000004; 
        #10;
        $display("Time=%0t | Address: 0x%h | Instruction: 0x%h (Expected: 0x00200113)", 
                 $time, tb_addr, tb_inst);

        // 3. Read instruction at address 8 (index 2)
        tb_addr = 32'h00000008; 
        #10;
        $display("Time=%0t | Address: 0x%h | Instruction: 0x%h (Expected: 0x003001b3)", 
                 $time, tb_addr, tb_inst);

        // 4. Test an unaligned address (should still read the instruction at 0x00)
        // The implementation ignores bits [1:0]
        tb_addr = 32'h00000002; 
        #10;
        $display("Time=%0t | Address: 0x%h | Instruction: 0x%h (Expected: 0x00100093)", 
                 $time, tb_addr, tb_inst);
                 
        // 5. Test an address beyond the defined memory depth (index 1024)
        // Should output 0x00000000 due to valid_address check
        tb_addr = 32'h00001000; // 4 * 1024 = 4096 (0x1000)
        #10;
        $display("Time=%0t | Address: 0x%h | Instruction: 0x%h (Expected: 0x00000000)", 
                 $time, tb_addr, tb_inst);

        $finish;
    end

endmodule



module Instruction_Mem(
    input wire [31:0]address_i,
    input wire [31:0]instruction_o
);
    localparam Mem_Depth = 1024;
    localparam Add_width = 10;

    reg [31:0] mem [0: Mem_Depth-1];
    wire [Add_width-1:0] read_index;
    assign read_index= address_i[11:2];
    
    wire valid_address = (read_index < Mem_Depth);
    assign instruction_o = valid_address ? mem[read_index] : 32'h00000000;
    initial begin
      $readmemh("program.mem", mem, 0 , Mem_Depth-1);
    end
endmodule