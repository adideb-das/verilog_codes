`include "one_to_two_demux.v"
module one_to_four_demux(
input din,
input [1:0]sel,
output out0,out1,out2,out3);

wire w1,w2;
one_to_two_demux m1(sel[0],din,w1,w2);
one_to_two_demux m2(sel[1],w1,out0,out1);
one_to_two_demux m3(sel[1],w2,out2,out3);

endmodule

