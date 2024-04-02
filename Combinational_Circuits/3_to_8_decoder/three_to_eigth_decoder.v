`include "two_to_four_decoder.v"
module three_to_eight_decoder(
input enable,a0,a1,a2,
output d0,d1,d2,d3,d4,d5,d6,d7);

wire a2 = (~enable);

two_to_four_decoder dec1(enable,a0,a1,d0,d1,d2,d3);
two_to_four_decoder dec2(a2,a0,a1,d4,d5,d6,d7);

endmodule