module one_to_two_demux(
input sel,
input din,
output dout0,dout1);
assign dout0 = (sel==1'b0)?din:1'b0;
assign dout1 = (sel==1'b1)?din:1'b0;
endmodule
