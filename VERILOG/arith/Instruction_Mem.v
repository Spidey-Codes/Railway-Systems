module Instruction_Mem(
    input wire [31:0]address_i,
    output wire [31:0]instruction_o
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