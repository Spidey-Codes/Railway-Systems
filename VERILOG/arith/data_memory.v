module data_memory(
    input wire clk,
    input wire MemRead,
    input wire MemWrite,

    input wire [31:0]addr,
    input wire [31:0] wr_data,
    output wire [31:0] rd_data
);
    localparam Mem_Depth = 1024;
    reg [31:0] mem [0: Mem_Depth-1];

    wire [9:0] read_write_index;
    assign read_write_index = addr[11:2];

    always @(posedge clk) begin
        if (MemWrite) begin
            mem[read_write_index] <= wr_data;
        end
    end

    assign rd_data = MemRead ? mem[read_write_index] : 32'h00000000;
endmodule
