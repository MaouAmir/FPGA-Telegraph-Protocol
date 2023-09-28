module OthFSM_TB();
	reg Rst=0;
	reg Clk=0;
	reg SerIn=0;
	reg ClkEn=1;
	wire SerOut,SerOutValid;
	wire [3:0] CntOut;
	OthFSMmini Xm(Clk,Rst,SerIn,ClkEn,SerOut,SerOutValid,CntOut);
	always #17 Clk=~Clk;
	initial begin
		#17 Rst=1;
		
		#17 ClkEn=1;Rst=0;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;

		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=1;ClkEn=1;
		#17 ClkEn=1;

		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 SerIn=0;ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#17 ClkEn=1;
		#100 $stop;
	end
	
endmodule
