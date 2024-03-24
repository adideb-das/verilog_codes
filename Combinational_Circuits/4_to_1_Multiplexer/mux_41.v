`include "mux_21.v"
module mux_41(
    input  a,b,c,d,s0,s1,
    output  y);
wire m1,m2;
mux_21 mux1(a,b,s0,m1);
mux_21 mux2(c,d,s0,m2);
mux_21 mux3(m1,m2,s1,y);
endmodule