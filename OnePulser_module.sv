module OnePulser(input Clk,ClkPB,output reg ClkEn);
	reg [1:0] ps,ns;
	always@(ClkPB,ps)begin
		ClkEn=0;
		ns=0;
		case(ps)
			0:begin ns= ClkPB ? 1:0;ClkEn=0;end
			1:begin  ns= 2; ClkEn=1; end
			2: ns=ClkPB? 2:0;
			default ns=0;
		endcase
	end
	always@(posedge Clk) ps<=ns;
		
endmodule
