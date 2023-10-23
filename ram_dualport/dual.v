`timescale 1ns / 1ps
module dual(clk,we1,we2,data1,data2,addr1,addr2,dout1,dout2);
input clk,we1,we2;
input [7:0]data1,data2;
input [5:0]addr1,addr2;
output reg [7:0]dout1,dout2;

reg [7:0] ram [63:0];

always @ (posedge clk)
begin
     if(we1)
	        ram[addr1]=data1;
     else
	        dout1<=ram[addr1];
end
always @ (posedge clk)
begin
      if(we2)
	         ram[addr2]<=data2;
      else
                dout2<=ram[addr2];
end

endmodule
