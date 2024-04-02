`include "one_to_four_demux.v"
module one_to_four_demux_testbench();
  reg [1:0]sel;
  reg din;
  wire out0,out1,out2,out3;
  
  one_to_four_demux dut(din,sel,out0,out1,out2,out3);
  
  initial begin
  $dumpfile("one_to_four_demultiplexer.vcd");
  $dumpvars(0,one_to_four_demux_testbench);  
  end

  initial begin
    $monitor("sel0 = %b, sel1 = %b, din = %b ,  y0 = %0b, y1 = %0b ,y2 = %0b, y3 = %0b", sel[0], sel[1], din, out0,out1,out2,out3);
    sel[0]=0; sel[1]=0; din=0; #10;
    sel[0]=0; sel[1]=0; din=1; #10;
    sel[0]=0; sel[1]=1; din=0; #10;
    sel[0]=0; sel[1]=1; din=1; #10;
    sel[0]=1; sel[1]=0; din=0; #10;
    sel[0]=1; sel[1]=0; din=1; #10;
    sel[0]=1; sel[1]=1; din=0; #10;
    sel[0]=1; sel[1]=1; din=1; #10;
  end
endmodule