
module eight_to_three_encoder(a,b,c,d,e,f,g,h,x,y,z);
input a,b,c,d,e,f,g,h;
output  x,y,z;

assign x = h | g | f | e ; 
assign y = h | g | d | c ;
assign z = h | f | d | b ;

endmodule
