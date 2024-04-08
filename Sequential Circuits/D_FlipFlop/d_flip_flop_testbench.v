`include "d_flip_flop.v"
module d_ff_testbench();
reg d;
reg clk=0;
reg rst;
wire q;

always #10 clk = ~clk;  

d_ff dut(d,clk,rst,q);


initial begin
$dumpfile("d_flip_flop.vcd");
$dumpvars(0,d_ff_testbench);
end


initial begin 
 rst=1;
 #100;
 rst=0;
 d <= 1;
 #100;
 d <= 0;
 #100;
 d <= 1;
 #100
 rst=0;
 $finish();
end 
endmodule 