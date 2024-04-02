`include "three_to_eigth_decoder.v"
module three_to_eight_decoder_testbench();
reg  enable,a0,a1,a2;
wire d0,d1,d2,d3,d4,d5,d6,d7;
 
initial begin
    $dumpfile("three_to_eight_decoder_waveform.vcd");
    $dumpvars(0,three_to_eight_decoder_testbench);
end

three_to_eight_decoder dut(enable,a0,a1,a2,d0,d1,d2,d3,d4,d5,d6,d7);

initial begin
$monitor("en=%b, a0=%b, a1=%b,a2=%b , d0=%b,d1=%b,d2=%b,d3=%b,d4=%b,d5=%b,d6=%b,d7=%b",enable,a0,a1,a2,d0,d1,d2,d3,d4,d5,d6,d7);
end

initial begin 
enable=0;
#10 a0=0;a1=0;//000
#10 a0=0;a1=1;//001
#10 a0=1;a1=0;//010
#10 a0=1;a1=1;//011
enable=1;
#10 a0=0;a1=0;//100
#10 a0=0;a1=1;//101
#10 a0=1;a1=0;//110
#10 a0=1;a1=1;//111

end

initial begin 
#90; $finish;
end
endmodule