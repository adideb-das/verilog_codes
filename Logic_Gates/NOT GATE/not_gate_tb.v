`include "not_gate.v"
module not_gate_tb;

reg A;
wire Y;

// Instantiate the NOT gate
not_gate td (
    .A(A),
    .Y(Y)
);

initial begin
    $dumpfile("not_gate.vcd");//making the vcd file for timing diagram
    $dumpvars(0, not_gate_tb);// dumps all  the variables of the testbench module 

    // Initialize test inputs
    A = 0;
    // Apply stimulus
    #10 A = 1;
    #10 A = 0;
    #10 A = 1;

    // Finish simulation
    #10 $finish;
end

initial begin
    $monitor("Time=%0t A=%b Y=%b", $time, A, Y);// helps in verifying the test cases
end

endmodule
