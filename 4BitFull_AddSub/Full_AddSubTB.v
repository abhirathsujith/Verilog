`timescale 1ns / 1ps

module Full_AddSubTB();
reg [3:0]a,b;
reg m;
wire[3:0]s;
wire carry;
Full_AddSub a1(s,carry,a,b,m);
initial
begin
#10 a=4; b=2; m=0;
#10 a=3; b=1; m=0;
#50 $stop;
end
endmodule