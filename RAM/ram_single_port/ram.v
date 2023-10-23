`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:39:49 06/01/2023 
// Design Name: 
// Module Name:    ram 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ram(data,addr,write,clk,q);
input [7:0]data;
input [5:0]addr;
input write;
input clk;
output [7:0] q;

reg [7:0] ram[63:0];
reg addr_reg;

always @ (posedge clk)
begin
 if(write)
      ram[addr]<=data;
 else
      addr_reg<=addr;
end
assign q=ram[addr_reg];

endmodule
