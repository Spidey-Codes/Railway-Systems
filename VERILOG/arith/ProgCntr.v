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