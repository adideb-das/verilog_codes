`include "half_adder.v"
module half_adder_tb;
  reg input_a, input_b;
  wire output_sum, output_carry;

  // Instantiate the half adder module
  half_adder G1 (
    .a(input_a),
    .b(input_b),
    .sum(output_sum),
    .carry(output_carry)
  );

  // Simulation
  initial begin
    $dumpfile("half_adder_waveform.vcd");
    $dumpvars(0, half_adder_tb);

    // Provide stimulus to the inputs
    input_a = 0; input_b = 0; #100;
    input_a = 0; input_b = 1; #100;
    input_a = 1; input_b = 0; #100;
    input_a = 1; input_b = 1; #100;

    $finish; // Finish simulation
  end
endmodule
