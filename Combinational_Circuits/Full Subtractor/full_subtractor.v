`include "half_subtractor.v"
module full_subtractor(
    input a,b,cin,
    output diff,borrow);
wire d,b1,b2;
half_subtractor hs0(a,b,d,b1);
half_subtractor hs1(d,cin,diff,b2);
assign borrow = b1 | b2;  
endmodule  

