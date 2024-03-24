//Include the verilog file for and gate
`include "and_gate.v"
module and_gate_tb;

reg a, b;
wire y;

// Instantiate the AND gate
and_gate td (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    $dumpfile("and_gate.vcd"); //making the vcd file for timing diagram
    $dumpvars(0, and_gate_tb);// dumps all  the variables of the testbench module 

    // Initialize test inputs
     a = 0; b=0;
    // Apply stimulus
    #10 a = 0; b=1;
    #10 a = 1; b=0;
    #10 a = 1; b=1;

    // Finish simulation
    #10 $finish;
end

initial begin
    $monitor("Time=%0t a=%b b=%b y=%b", $time, a,b,y); // helps in verifying the test cases
end

endmodule
