//Full adder using half adder
`include "half_adder.v"
module full_adder(
    input a,b,cin,
    output sum,carry
);

wire c,c1,s;

half_adder ha0(a,b,s,c);
half_adder ha1(cin,s,sum,c1);

assign carry = c | c1 ;

endmodule