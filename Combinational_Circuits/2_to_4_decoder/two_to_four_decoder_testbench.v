`include "two_to_four_decoder.v"
module two_to_four_decoder_testbench();
reg a0,a1,en;
wire d0,d1,d2,d3;

two_to_four_decoder dut(en,a0,a1,d0,d1,d2,d3);

initial begin
    $dumpfile("two_to_four_decoder_waveform.vcd");
    $dumpvars(0,two_to_four_decoder_testbench);
end

initial begin
    $monitor("en=%b , a0=%b, a1=%b , d0=%b, d1=%b, d2=%b, d3=%b",en,a0,a1,d0,d1,d2,d3);
end

initial begin
en=0;a0=0;a1=0;
#10 en=1;a0=0;a1=0;
#10 en=1;a0=0;a1=1;
#10 en=1;a0=1;a1=0;
#10 en=1;a0=1;a1=1;
#10 en=0;
end
initial begin
#50; $finish;
end

endmodule