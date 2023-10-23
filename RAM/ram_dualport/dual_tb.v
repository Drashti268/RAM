`timescale 1ns / 1ps

module dual_tb;

	// Inputs
	reg clk;
	reg we1;
	reg we2;
	reg [7:0] data1;
	reg [7:0] data2;
	reg [5:0] addr1;
	reg [5:0] addr2;

	// Outputs
	wire [7:0] dout1;
	wire [7:0] dout2;

	// Instantiate the Unit Under Test (UUT)
	dual uut (
		.clk(clk), 
		.we1(we1), 
		.we2(we2), 
		.data1(data1), 
		.data2(data2), 
		.addr1(addr1), 
		.addr2(addr2), 
		.dout1(dout1), 
		.dout2(dout2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		data1=8'd1;
		addr1=6'd5;
		
		data2=8'd2;
		addr2=6'd6;
		
		we1=1'b1;
		we2=1'b1;
		
		#10;
		
		data1=8'd3;
		addr1=6'd7;
		
		addr2=6'd5;
		
		we2=1'b0;
		
		#10;
		
		addr1=6'd6;
		we1=1'b0;
		
		#10;

	end
	always #5 clk=~clk;
	
      
endmodule

