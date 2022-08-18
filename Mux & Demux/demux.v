`timescale 1ns / 1ps


module demux(d0, d1, d2, d3, in, s1, s0 );
input in, s1, s0;
output d0,d1, d2, d3;

assign d0 = (~s1)&(~s0)&in;
assign d1 = (~s1)&(s0)&in;
assign d2 = (s1)&(~s0)&in;
assign d3 = (s1)&(s0)&in;

endmodule