`timescale 1ns/1ns
module OnePulser_TB();
	reg ClkPB=0;
	reg Clk=0;
	wire ClkEn;
	OnePulser OP1(Clk,ClkPB,ClkEn);
	always #17 Clk=~Clk;
	initial begin
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;

		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;
		#50 ClkPB=1;
		#50 ClkPB=0;

		
		$stop;
	end
	
endmodule 
