module OthFSM( input clk,rst,clkPB,SerIn,output reg SerOut, SerOutValid, output reg [6:0] reg10);
	 
	wire clk_EN;
	wire[3:0] Count_out;
	OthFSMmini m1(clk,rst,SerIn,clk_EN,SerOut,SerOutValid,Count_out);
	OnePulser m2(clk,~clkPB,clk_EN);
	sev_segment m3(clk,Count_out,reg10);
endmodule