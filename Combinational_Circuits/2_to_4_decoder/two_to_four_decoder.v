module two_to_four_decoder(en,a0,a1,d0,d1,d2,d3);
input a0,a1,en;
output d0,d1,d2,d3;

assign d0 = (~a0)& (~a1) & en;
assign d1 = (~a0)& (a1)  & en;
assign d2 = (a0)& (~a1)  & en;
assign d3 = (a0)& (a1)   & en;

endmodule