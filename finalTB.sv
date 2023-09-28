`timescale 1ns/1ns


module finalTB();
  reg clk=0;
  reg rst=0;
  reg ClkPB=0;
  reg SerIn=0;;
  wire SerOut, SerOutValid;
  wire [6:0] reg10;
   OthFSM ot(clk,rst,ClkPB,SerIn,SerOut,SerOutValid,reg10);
    
  
  always #17 clk = ~clk;
  initial begin
    #49 ClkPB = 1;
    #2 SerIn = 1'd1;
    #23 ClkPB= 0;
    #43 ClkPB = 1;
    #2 SerIn = 1'd0;
    #23 ClkPB= 0;
    #43 ClkPB = 1;
    #2 SerIn = 1'd1;
    #37 ClkPB= 0;
    #43 ClkPB = 1;
    #2 SerIn = 1'd1;
    #23 ClkPB= 0;
    repeat(20) begin #43 ClkPB = 1; #2 SerIn = ~SerIn; #23 ClkPB= 0; end   
    $stop;
  end 
endmodule
