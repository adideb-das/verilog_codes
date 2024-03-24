`include "half_subtractor.v"
module half_subtractor_tb;
  reg input_a, input_b;
  wire output_diff, output_borrow;

  // Instantiate the half subtractor module
  half_subtractor G1 (
    .a(input_a),
    .b(input_b),
    .diff(output_diff),
    .borrow(output_borrow)
  );

  // Simulation
  initial begin
    $dumpfile("half_subtractor_waveform.vcd");
    $dumpvars(0, half_subtractor_tb);

    // Provide stimulus to the inputs
    input_a = 0; input_b = 0; #100;
    input_a = 0; input_b = 1; #100;
    input_a = 1; input_b = 0; #100;
    input_a = 1; input_b = 1; #100;

    $finish; // Finish simulation
  end
endmodule
