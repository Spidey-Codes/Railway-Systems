module ID_EX_reg (
    input wire clk, rst,
    input wire [31:0] PC_Plus_4_in,
    input wire [31:0] Read_Data_1_in,
    input wire [31:0] Read_Data_2_in,
    input wire [31:0] Immediate_in,
    input wire [4:0]  reg_dest_addr_in,
    input wire [4:0]  rs2_addr_in,

    input wire RegWrite_in, MemRead_in, MemWrite_in, MemToReg_in, ALUSrc_in, Branch_in, Jump_in,
    input wire [2:0] ALUOp_in,

    output reg [31:0] PC_Plus_4_out,
    output reg [31:0] Read_Data_1_out,
    output reg [31:0] Read_Data_2_out,
    output reg [31:0] Immediate_out,
    output reg [4:0]  reg_dest_addr_out,
    output reg [4:0]  rs2_addr_out,

    output reg RegWrite_out, MemRead_out, MemWrite_out, MemToReg_out, ALUSrc_out, Branch_out, Jump_out,
    output reg [2:0] ALUOp_out
);  
    always @(posedge clk or negedge rst) begin
        if (rst) begin
            PC_Plus_4_out     <= 32'b0;
            Read_Data_1_out   <= 32'b0;
            Read_Data_2_out   <= 32'b0;
            Immediate_out     <= 32'b0;
            reg_dest_addr_out <= 5'b0;
            rs2_addr_out      <= 5'b0;

            RegWrite_out <= 1'b0;
            MemRead_out  <= 1'b0;
            MemWrite_out <= 1'b0;
            MemToReg_out <= 1'b0;
            ALUSrc_out   <= 1'b0;
            Branch_out   <= 1'b0;
            Jump_out     <= 1'b0;
            ALUOp_out    <= 3'b0;
        end
        else begin
            PC_Plus_4_out     <= PC_Plus_4_in;
            Read_Data_1_out   <= Read_Data_1_in;
            Read_Data_2_out   <= Read_Data_2_in;
            Immediate_out     <= Immediate_in;
            reg_dest_addr_out <= reg_dest_addr_in;
            rs2_addr_out      <= rs2_addr_in;

            RegWrite_out <= RegWrite_in;
            MemRead_out  <= MemRead_in;
            MemWrite_out <= MemWrite_in;
            MemToReg_out <= MemToReg_in;
            ALUSrc_out   <= ALUSrc_in;
            Branch_out   <= Branch_in;
            Jump_out     <= Jump_in;
            ALUOp_out    <= ALUOp_in;
        end
    end
endmodule