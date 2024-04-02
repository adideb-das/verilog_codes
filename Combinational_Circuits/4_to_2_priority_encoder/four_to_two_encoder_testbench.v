`include "four_to_two_encoder.v"
module four_to_two_encoder_testbench();
reg a,b,c,d,en;
wire x,y;

four_to_two_encoder dut(a,b,c,d,en,x,y);

initial begin
$dumpfile("four_to_two_encoder_waveform.vcd");
$dumpvars(0,four_to_two_encoder_testbench);
end 

initial begin
#000 a=0;b=0;c=0;d=1;en=0;
#100 a=0;b=0;c=0;d=1;en=1;
#100 a=0;b=0;c=1;d=0;en=1;
#100 a=0;b=1;c=0;d=0;en=1;
#100 a=1;b=0;c=0;d=0;en=1;
end
initial begin
$monitor("Time =%t,Value of a =%b, b=%b, c=%b, d=%b,en=%b",$time,a,b,c,d,en);
end 
initial begin
    #600 $finish(); 
end

endmodule