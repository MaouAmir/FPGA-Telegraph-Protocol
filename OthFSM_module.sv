module OthFSMCntrl(input Clk,Rst,input SerIn,ClkEn,Co,output reg SerOut,SerOutValid,CntEn,CntRst);
	reg [3:0] ps,ns;
	always@(ps,SerIn,Co)begin
		
		{SerOut,SerOutValid,CntEn,CntRst}=4'b0000;
		case(ps)
			1: begin ns= SerIn? 3:1;end
			3: begin ns= SerIn? 1:5; end
			5: begin ns=SerIn? 7:1;CntRst=1; end
			7: begin if(SerIn) begin
			ns=8;CntRst=0;
			end
			
			else ns=5;end
			8: begin ns=Co? 1:8; CntEn=1;SerOutValid=1;SerOut<=SerIn;end
			
			default: ns=1;
		endcase
	end
	always@(posedge Clk,posedge Rst)begin
		if(Rst) ps=1;
		else if (ClkEn) ps<=ns; 
	end

endmodule
module Counter(input Clk,Rst,input ClkEn,CntEn,CntRst,output reg Co,output reg [3:0]CntOut);
	always@(posedge Clk)begin
		if(Rst) CntOut=0;
		else if (ClkEn)begin if (CntEn) CntOut<=CntOut+4'd1; end
	end
	assign Co=(CntOut[3])&(~CntOut[2])&(CntOut[1])&(~CntOut[0]);
		
endmodule
module OthFSMmini(input Clk,Rst,SerIn,ClkEn,output SerOut,SerOutValid,output[3:0] CntOut);
	wire Co,CntEn,CntRst;
	OthFSMCntrl O(Clk,Rst,SerIn,ClkEn,Co, SerOut,SerOutValid,CntEn,CntRst);
	Counter C(Clk,Rst,ClkEn,CntEn,CntRst,Co,CntOut);
endmodule