'timescale 1ns / 1ps
module fulladder (sum, carry, a, b, c) ;
input a, b, c;
output sum, carry;
wire w1, w2, w3;
xor x1 (w1, a, b) ;
xor x2. (sum, w1, c) ;
and a1 (w3, a, b) ;
and a2 (w2, w1, c) ;
or r1 (carry, w2, w3) ;
endmodule

module Full_AddSub (s, carry, a, b, m) ;
input [3:0]a, b;
input m;
output [3:0]s;
output carry;
wire [6:0]w;
xor x3 (w[0], b[0], m) ;
xor x4 (w[1], b[1], m) ;
xor x5 (w[2], b[2], m) ;
xor x6 (w[3], b[3], m) ;
fulladder fa0 (s [0], w[4], a [0], w[0], m);
fulladder fa1 (s [1], w[5], a [1], w[1], w[4]);
fulladder fa2 (s [2], w[6], a [2], w[2], w[5]);
fulladder fa3 (s [3], carry, a [3], w[3],w[6]);
endmodule