`timescale 1ns / 1ps
module demuxtb();
reg in, s1, s0;
wire d0,d1, d2, d3;

demux d1(d0, d1, d2, d3, in, s1, s0 );

initial
//$monitor($time,"\t d0=%b, \t d1=%b, \t d2=%b, \t d3=%b, \t s0=%b, \t s1=%b, \in=%b \n" , d0, d1, d2, d3, s1, s0, in );

//initial
begin
#10 in=1;

#10  s0 = 0; s1=0; 
#10  s0 = 0; s1=1; 
#10  s0 = 1; s1=0; 
#10  s0 = 1; s1=1; 
#50 $stop;

end
endmodule