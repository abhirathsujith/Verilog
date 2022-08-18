`timescale 1ns / 1ps

module muxtb();
reg i0, i1, i2, i3, s0, s1;
wire y;
mux m1(y, i0, i1, i2, i3, s0, s1 );

initial
$monitor($time,"\t i0=%b, \t i1=%b, \t i2=%b, \t i3=%b, \t s0=%b, \t s1=%b, \y=%b \n" , i0, i1, i2, i3, s0, s1 , y );

initial
begin
#10 i0 = 0; i1 = 1 ; i2 = 0; i3 = 1;

#10  s0 = 0; s1=0; 
#10  s0 = 0; s1=1; 
#10  s0 = 1; s1=0; 
#10  s0 = 1; s1=1; 
#50 $stop;

end
endmodule