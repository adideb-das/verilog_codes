`include "one_to_two_demux.v"
module one_to_two_demultiplex_testbench;
reg sel,din;
wire dout0,dout1;

one_to_two_demux dut(sel,din,dout0,dout1);
initial begin
$dumpfile("one_to_two_demultiplexer.vcd");
$dumpvars(0,one_to_two_demultiplex_testbench);
end

initial begin
  #10 sel=0;din=0;
  #10 sel=0;din=1;
  #10 sel=1;din=0;
  #10 sel=1;din=1;
end
initial begin 
$monitor("Time =%t, sel=%b, din=%b",$time,sel,din);
end
initial begin 
#50 $finish;
end
endmodule