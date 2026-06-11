`timescale 1ns/1ps
module reg_tb;
    reg clk;
    reg rst;
    reg we;
    reg [4:0]R_Ad1;
    reg [4:0]R_Ad2;
    reg [4:0]W_Ad;
    reg [31:0]W_Data;
    wire [31:0]R_Data1;
    wire [31:0]R_Data2;


    register_file dut(
        .clk(clk),
        .rst(rst),
        .we(we),
        .rd_adr1(R_Ad1),
        .rd_adr2(R_Ad2),
        .w_adr(W_Ad),
        .w_data(W_Data),
        .rd_data1(R_Data1),
        .rd_data2(R_Data2)
    );

    always #5 clk = ~clk;
    initial begin
        $dumpfile("regfile_tb.vcd");
        $dumpvars(0, reg_tb);

        clk=0;
        rst=0;
        we=0;
        R_Ad1=0;
        R_Ad2=0;
        W_Ad=0;
        W_Data=0;

        $display("Starting Simulation");
        #10 rst =1;
        #10;
        W_Ad = 5'd1;
        W_Data = 32'hABDEF012;
        we=1;
        #10;
        we=0;
        R_Ad1 = 5'd1;
        #1;
        if (R_Data1 == 32'hABDEF012)
            $display("Reg 1 Write/Read succesful. Data:%h", R_Data1);
        else
            $display("Reg 1 Write/Read Failed.Got Data:%h", R_Data1);

        #10;
        W_Ad = 5'd2;
        W_Data = 32'h0123ABCD;
        we=1;
        #10;
        we=0;
        R_Ad1 = 5'd1;
        R_Ad2 =5'd2;
        #1;
        if (R_Data1 == 32'hABDEF012 && R_Data2 == 32'h0123ABCD)
            $display("Dual port Write/Read succesful. Data1:%h, Data2:%h", R_Data1,R_Data2);
        else
            $display("Dual port Write/Read Failed.");

        #10;
        W_Ad = 5'd0;
        W_Data = 32'hFFFFFFFF;
        we=1;
        #10;
        we=0;
        R_Ad1 = 5'd0;
        #1;
        if (R_Data1 == 32'h00000000)
            $display("Reg 0 is hardwired to 0.Write ignored");
        else
            $display("Reg 0 was overwritten. Data: %h", R_Data1);
        $display("Simulation Finished");
        $finish;
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