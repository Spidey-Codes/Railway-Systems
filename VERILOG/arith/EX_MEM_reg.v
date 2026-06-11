module EX_MEM_reg(
    input wire clk,rst,
    input wire EX_MEM_Write,
    input wire [31:0] alu_result_in,
    input wire [31:0] Read_Data_2_in,
    input wire [31:0] PC_Plus_4_in,
    input wire [4:0]  reg_dest_addr_in,
    input wire RegWrite_in, MemRead_in, MemWrite_in, MemToReg_in,

    output reg [31:0] alu_result_out,
    output reg [31:0] Read_Data_2_out,
    output reg [31:0] PC_Plus_4_out,
    output reg [4:0]  reg_dest_addr_out,
    output reg RegWrite_out, MemWrite_out, MemToReg_out
);
    always @(posedge clk or negedge rst) begin
        if (!rst) begin
            alu_result_out <= 32'h0;
            RegWrite_out   <= 1'b0;
        end else if (EX_MEM_Write) begin
            alu_result_out   <= alu_result_in;
            Read_Data_2_out <= Read_Data_2_in;
            RegWrite_out    <= RegWrite_in;
        end
    end
endmodule