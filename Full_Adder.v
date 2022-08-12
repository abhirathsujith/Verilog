`timescale 1ns / 1ps
module fadder (sum, carry, a, b, c) ;
input a,b, c; //scalar input
output sum, carry;
wire w1, w2, w3;
xor x1 (w1,a, b) ;
xor x2 (sum, w1, c) ;
and a1 (w3, a, b) ;
and a2 (w2, w1, c) ;
or rl (carry, w2, w3) ;
endmodule

module Full_Adder (s, cout, a, b, c) ;
input [3:0]a, b;
input c:
output [3:0]s;
output cout;
wire c1, c2, c3;
fadder fa0 (s [0], c1, a (0], b[0], c) ;
fadder fa1 (s [1], c2, a [1],b[1], c1);
fadder fa2 (s [2], c3, a [2], b [2], c2) ;
fadder fa3 (s [3], cout, a [3], b [3], c3) ;

endmodule
