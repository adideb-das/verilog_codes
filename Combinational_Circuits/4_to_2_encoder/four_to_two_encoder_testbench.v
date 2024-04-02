`include "four_to_two_encoder.v"
module four_to_two_encoder_testbench();

reg  [3:0]din;
wire [1:0]dout;

four_to_two_encoder dut(din,dout);

initial begin 
$dumpfile("four_to_two_encoder_waveform.vcd");
$dumpvars(0,four_to_two_encoder_testbench);
end

initial begin
  #0  ;din=4'b0000;//case 0
  #100;din=4'b0001;//case 1
  #100;din=4'b0010;//case 2
  #100;din=4'b0100;//case 3
  #100;din=4'b1000;//case 4
  end

  initial begin
    $monitor("time=%d, din=%b, dout=%b",$time,din,dout);
  end

  initial begin
  #500;$finish();
  end
  endmodule