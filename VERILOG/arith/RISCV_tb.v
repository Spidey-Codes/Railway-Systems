`timescale 1ns / 1ps

module RISCV_tb;

    reg clk;
    reg rst;

    cpu_core uut (
        .clk(clk), 
        .rst(rst)
    );
    initial begin 
    clk =0;
    rst = 0;
    #50 rst = 1;  
    #1000 $finish;
    end
    always #5 clk = ~clk;
endmodule

module cpu_core(
    input wire clk,
    input wire rst
);

    wire [31:0] PC_out, PC_plus_4;
    reg  [31:0] Next_PC_Mux_out;
    wire [31:0] instruction;
    wire [31:0] branch_target_addr = PC_out + immediate_value;
    wire [31:0] jump_target_addr = PC_out + immediate_value;
    
    localparam PC_PLUS_4 = 2'b00;
    localparam PC_BRANCH = 2'b01;
    localparam PC_JUMP   = 2'b10;

    wire [4:0]  rs1_addr, rs2_addr;
    wire [31:0] read_data1, read_data2;
    wire [31:0] write_data_mux_out;
    wire [4:0]  reg_dest_addr;

    wire [31:0] alu_input_A, alu_input_B;
    wire [31:0] immediate_value;
    wire [31:0] alu_result;
    wire [31:0] mem_read_data;
    wire        zero_flag;

    wire PC_Write_ctrl;
    reg  PCSource_ctrl;
    wire [2:0] imm_sel_ctrl;
    wire RegWrite_ctrl;
    wire ALUSrc_ctrl;
    wire [2:0] ALUOp_ctrl;
    wire MemRead_ctrl;
    wire MemWrite_ctrl;
    wire MemToReg_ctrl;
    wire Branch_ctrl;
    wire Jump_ctrl;
    always @(*) begin
        PCSource_ctrl = PC_PLUS_4;
        if (Jump_ctrl) begin
            PCSource_ctrl = PC_JUMP;
        end else if (Branch_ctrl && zero_flag) begin
            PCSource_ctrl = PC_BRANCH;
        end
    end

    always @(*) begin
        case(PCSource_ctrl)
            PC_PLUS_4: Next_PC_Mux_out = PC_plus_4;
            PC_BRANCH: Next_PC_Mux_out = branch_target_addr;
            PC_JUMP:   Next_PC_Mux_out = jump_target_addr;
            default:   Next_PC_Mux_out = PC_plus_4;
        endcase
    end

    assign PC_plus_4 = PC_out + 4;
    assign PC_Write_in = PC_Write_ctrl;

    ProgCntr PC_U (.clk(clk), .rst(rst), .PC_Write(PC_Write_in), .Next_PC(Next_PC_Mux_out), .PC(PC_out));
    
    Instruction_Mem IM_U (.address_i(PC_out), .instruction_o(instruction));
    
    Cntrl_Unit CU_U (.opcode(instruction[6:0]), .PC_Write(PC_Write_ctrl), .imm_sel(imm_sel_ctrl), .RegWrite(RegWrite_ctrl),
                     .ALUSrc(ALUSrc_ctrl), .ALUOp(ALUOp_ctrl), .MemRead(MemRead_ctrl), .MemWrite(MemWrite_ctrl), .MemToReg(MemToReg_ctrl), .Branch(Branch_ctrl));

    imm_gen IMM_U(.instruction(instruction), .imm_sel(imm_sel_ctrl), .immediate_out(immediate_value));

    assign rs1_addr = instruction[19:15];
    assign rs2_addr = instruction[24:20];
    assign reg_dest_addr = instruction[11:7];

    register_file RF_U (.clk(clk), .rst(rst), .we(RegWrite_ctrl), .rd_adr1(rs1_addr), .rd_adr2(rs2_addr), .w_adr(reg_dest_addr), .w_data(write_data_mux_out),
                        .rd_data1(read_data1), .rd_data2(read_data2));
    data_memory DMEM_U (.clk(clk), .MemRead(MemRead_ctrl), .MemWrite(MemWrite_ctrl), .addr(alu_result),
                        .wr_data(read_data2), .rd_data(mem_read_data));
    
    assign alu_input_A = read_data1;
    assign alu_input_B = ALUSrc_ctrl ? immediate_value : read_data2;

    alu_32_bit ALU_U (.A(alu_input_A), .B(alu_input_B), .OpCode(ALUOp_ctrl), .Result(alu_result), .Flag(zero_flag));

    assign write_data_mux_out = MemToReg_ctrl ? mem_read_data : alu_result;

endmodule

module Cntrl_Unit(
    input wire [6:0] opcode,
    output reg PC_Write,
    output reg [1:0] PCSource,
    output reg Jump,
    output reg [2:0]imm_sel,
    output reg RegWrite,
    output reg ALUSrc,
    output reg [2:0] ALUOp,
    output reg MemRead,
    output reg MemWrite,
    output reg MemToReg,
    output reg Branch
);

    localparam OP_R_Type = 7'b0110011;
    localparam OP_I_Type = 7'b0010011;
    localparam OP_LOAD   = 7'b0000011;
    localparam OP_STORE  = 7'b0100011;
    localparam OP_BRANCH = 7'b1100011;
    localparam OP_JAL    = 7'b111011;
    localparam PC_PLUS_4 = 2'b00;
    localparam PC_BRANCH = 2'b01;
    localparam PC_JUMP   = 2'b10;

    always @(*) begin
        PC_Write = 1'b1;
        imm_sel  = 3'b000;
        RegWrite = 1'b0;
        ALUSrc   = 1'b0;
        ALUOp    = 3'b000;
        MemRead  = 1'b0;
        MemWrite = 1'b0;
        MemToReg = 1'b0;
        Branch   = 1'b0;
        PCSource = PC_PLUS_4;
        Jump     = 1'b0;

    case(opcode)
        OP_R_Type: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b0;
            ALUOp    = 3'b000;
        end
        OP_I_Type: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b001;
        end
        OP_LOAD: begin
            RegWrite = 1'b1;
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b001;
            MemRead  = 1'b1;
            MemToReg = 1'b1;
        end
        OP_STORE: begin
            ALUSrc   = 1'b1;
            ALUOp    = 3'b000;
            imm_sel  = 3'b010;
            MemWrite = 1'b1;
        end
        OP_BRANCH: begin
            Branch = 1'b1;
            imm_sel = 3'b011;
            PCSource = PC_BRANCH;
            PC_Write = 1'b1;
        end

        OP_JAL: begin
            Jump  = 1'b1;
            imm_sel = 3'b101;
            PCSource = PC_JUMP;
            RegWrite = 1'b1;
        end
        default: begin
            PC_Write = 1'b1;
            RegWrite = 1'b0;
        end
    endcase
end
endmodule

module imm_gen(
    input wire [31:0]instruction,
    input wire [2:0]imm_sel,
    output wire [31:0]immediate_out
);
localparam I_Type = 3'b001;
localparam S_Type = 3'b010;
localparam B_Type = 3'b011;
localparam U_Type = 3'b100;
localparam J_Type = 3'b101;

wire [31:0] i_imm, s_imm, b_imm, u_imm, j_imm;
reg [31:0] out_imm;

assign i_imm = {{20{instruction[31]}}, instruction[31:20]};
assign s_imm = {{20{instruction[31]}}, instruction[31:25], instruction[11:7]};
assign b_imm = {{19{instruction[31]}}, instruction[31], instruction[7], instruction[30:25], instruction[11:8], 1'b0};
assign u_imm = {instruction[31:12], 12'b0};
assign j_imm = {{11{instruction[31]}}, instruction[31], instruction[19:12], instruction[20], instruction[30:21], 1'b0};

always @(*) begin
    case(imm_sel)
        I_Type: out_imm = i_imm;
        S_Type: out_imm = s_imm;
        B_Type: out_imm = b_imm;
        U_Type: out_imm = u_imm;
        J_Type: out_imm = j_imm;
        default: out_imm = 32'h0;
    endcase
end

assign immediate_out = out_imm;
endmodule

module ProgCntr(
    input wire clk,
    input wire rst,
    input wire PC_Write,
    input wire [31:0]Next_PC,
    output reg [31:0]PC
);

localparam Start_Add = 32'b00000000;
always @(posedge clk or negedge rst)begin
    if(!rst)begin
        PC<= Start_Add;
    end
    else if(PC_Write)begin
        PC<= Next_PC;
    end
end
endmodule

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
      $readmemh("program.hex", mem, 0 , Mem_Depth-1);
    end
endmodule

module alu_32_bit(
    input [31:0]A,
    input [31:0]B,
    input [15:0]A_m,
    input [15:0]B_m,
    input [2:0]OpCode,
    output reg [31:0]Result,
    output reg Flag
);
    wire [31:0]sum, diff, mul, and_res, or_res, xor_res, not1_res, not2_res;
    wire carry, borrow, cy;
adder   u0(.a(A), .b(B), .carry(carry), .c(sum));
SuB     u1(.a(A), .b(B), .borrow(borrow), .diff(diff));
Mul     u2(.a(A_m),.b(B_m), .cy(cy), .c(mul));
oR      u3(.a(A), .b(B), .c(or_res));
And     u4(.a(A), .b(B), .c(and_res));
Xor     u5(.a(A), .b(B), .c(xor_res));
Not     u6(.a(A), .c(not1_res));
Not     u7(.a(B), .c(not2_res));

always @(*) 
    begin
    Result = 32'h00000000;
    Flag = 1'b0;

        case(OpCode)
            3'b000: begin Result = sum;     Flag = carry;   end
            3'b001: begin Result = diff;    Flag = borrow;  end
            3'b010: begin Result = mul;     Flag = cy;  end
            3'b011: begin Result = or_res;  Flag = 0;    end
            3'b100: begin Result = and_res; Flag = 0;    end
            3'b101: begin Result = xor_res; Flag = 0;    end
            3'b110: begin Result = not1_res; Flag = 0;    end
            3'b111: begin Result = not2_res; Flag = 0;    end
            default:begin Result = 32'h00000000; Flag = 1'b0;    end
        endcase
    end
endmodule


module adder(a,b,c,carry);
    input [31:0]a;
    input [31:0]b;
    output [31:0]c;
    output carry;
    assign {carry,c} = a + b;
endmodule


module SuB(a,b,borrow,diff);
    input [31:0]a;
    input [31:0]b;
    output borrow;
    output [31:0]diff;
    assign {borrow,diff} = a-b;
endmodule


module oR(a,b,c);
    input [31:0]a,b;
    output [31:0]c;
    assign c = a|b;
endmodule


module And(
    input  [31:0]a,
    input  [31:0]b,
    output [31:0]c);
    assign c = a & b;
endmodule


module Xor(a,b,c);
    input [31:0]a,b;
    output [31:0]c;
    assign c = a ^ b;
endmodule


module Not(a,c);
    input [31:0]a;
    output [31:0]c;
    assign c = ~a;
endmodule


module Mul(
    input [15:0]a,b,
    output[31:0]c,
    output cy );
    assign {cy,c} = a*b;
endmodule

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


module IF_ID_reg (
    input wire clk,rst,
    input wire IF_ID_Write,
    input wire IF_ID_Flush,

    input wire [31:0] Instruction_In,
    input wire [31:0] PC_Plus_4_in,

    output reg [31:0] Instruction_out,
    output reg [31:0] PC_Plus_4_out
);
    always @(posedge clk or negedge rst) begin
        if (!rst || IF_ID_Flush) begin
            Instruction_out <= 32'h00000013;
            PC_Plus_4_out <= 32'h0;
        end else if (IF_ID_Write) begin
          Instruction_out <= Instruction_In;
          PC_Plus_4_out   <= PC_Plus_4_in;
        end
    end
endmodule
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
module register_file(
    input wire clk,
    input wire rst,
    input wire we,
    input wire [4:0]rd_adr1,
    input wire [4:0]rd_adr2,
    input wire [4:0]w_adr,
    input wire [31:0]w_data,
    output wire [31:0]rd_data1,
    output wire [31:0]rd_data2
);

reg [31:0]reg_array [0:31];
integer i;

always @(posedge clk or negedge rst) begin
  if(!rst)begin
    for(i=0; i<32;i=i+1)begin
        reg_array[i] <= 32'b0;
    end
    end else if(we &&(w_adr!=5'd0))begin
        reg_array[w_adr] <= w_data;
    end
end

assign rd_data1 = (rd_adr1==5'd0) ? 32'b0 : reg_array[rd_adr1];
assign rd_data2 = (rd_adr2==5'd0) ? 32'b0 : reg_array[rd_adr2];
endmodule

module instr_mem (
    input  wire [31:0] addr,
    output reg  [31:0] instr
);

    reg [31:0] mem [0:255];   // 256 instructions

    initial begin
        $readmemh("program.hex", mem);
    end

    always @(*) begin
        instr = mem[addr[9:2]];   // word aligned
    end

endmodule
