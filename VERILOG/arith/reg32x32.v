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