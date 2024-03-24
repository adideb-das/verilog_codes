module nor_gate(
    //Input and Output Parameters
    input a,
    input b,
    output y
);
//nor gate function
assign y= ~( a | b );
endmodule