module four_to_two_encoder(a,b,c,d,en,x,y);
input a,b,c,d,en  ;
output x,y;
assign x = (b | c) & en;
assign y = (b | d) & en;
endmodule
