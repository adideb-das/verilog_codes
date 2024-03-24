module nand_gate(
input wire a,
input wire b,
output wire y
);
//nand gate function
assign y= ~ (a & b );

endmodule