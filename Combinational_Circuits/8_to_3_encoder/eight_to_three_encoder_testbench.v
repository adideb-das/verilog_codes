`include "eight_to_three_encoder.v"
module eight_to_three_encoder_testbench();
reg [7:0]din;
wire[2:0]dout;

initial begin
$dumpfile("eight_to_three_encoder_waveform.vcd");
$dumpvars(0,eight_to_three_encoder_testbench);
end 

eight_to_three_encoder dut(din,dout);

initial begin 
#100 din=8'b10000000;//case 8
#100 din=8'b01000000;//case 7
#100 din=8'b00100000;//case 6
#100 din=8'b00010000;//case 5
#100 din=8'b00001000;//case 4
#100 din=8'b00000100;//case 3
#100 din=8'b00000010;//case 2
#100 din=8'b00000001;//case 1
end
initial begin 
$monitor("Time=%t,din=%b,dout=%b",$time,din,dout);
end
initial begin 
#1000 $finish;
end 
endmodule