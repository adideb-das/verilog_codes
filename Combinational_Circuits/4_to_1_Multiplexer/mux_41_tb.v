`include "mux_41.v"
module mux_41_tb;
reg a,b,c,d;
reg s0,s1;
wire y;

mux_41 dut(a,b,c,d,s0,s1,y);

initial begin
    $dumpfile("mux_41_waveform.vcd");
    $dumpvars(0,mux_41_tb);
a = 1'b0;b = 1'b0;c = 1'b0;d = 1'b0;
s0= 1'b0;
s1= 1'b0;
#64 $stop;
end   
always  #32 s0 = ~s0;
always  #16 s1 = ~s1;
always  #8 a = ~a;
always  #4 b = ~b;
always  #2 c = ~c;
always  #1 d = ~d;
initial begin
$monitor($time,"a=%b,b=%b,c=%b,d=%b,select0=%b,select1=%b,y=%b",a,b,c,d,s0,s1,y);
end
endmodule