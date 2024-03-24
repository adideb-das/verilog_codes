module xor_gate(
    //Input and Output Parameters
    input a,
    input b,
    output y
);
//XNOR gate function
assign y= (a^b);
endmodule