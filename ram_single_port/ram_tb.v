`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:47:21 06/01/2023
// Design Name:   ram
// Module Name:   /home/ise/Desktop/Verilog/RAM/ram_single_port/ram_tb.v
// Project Name:  ram_single_port
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ram
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_tb;

	// Inputs
	reg [7:0] data;
	reg [5:0] addr;
	reg write;
	reg clk;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	ram uut (
		.data(data), 
		.addr(addr), 
		.write(write), 
		.clk(clk), 
		.q(q)
	);

	initial begin
    clk=1'b1;
	 forever #5 clk=~clk;

	end
	initial begin
	  data=8'h01;
	  addr=5'd0;
	  write=1'b1;
	  #10;
	  
	  data=8'h02;
	  addr=5'd1;
	
	  #10;
	  
	  data=8'h03;
	  addr=5'd3;
	  #10;
	  
	  
	  addr=5'd0;
	  write=1'b0;
	  #10;
	  
	  addr=5'd1;
	  #10;

	  end
	  
      
endmodule

