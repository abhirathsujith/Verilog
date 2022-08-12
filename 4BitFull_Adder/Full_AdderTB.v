`timescale 1ns / 1ps

module Full_AdderTB () ;
reg [3:0]a,b;
reg c;
wire [3:0]s;
wire cout;
RCA Full_Adder (s, cout, a, b, c) ;
initial
begin
#10 a=4; b=1; c=0;
#10 a=2; b=4; c=0;
#50 $stop;
end
endmodule
