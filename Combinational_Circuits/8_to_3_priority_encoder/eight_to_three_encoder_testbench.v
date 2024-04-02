`include "eight_to_three_encoder.v"
module eight_to_three_encoder_testbench();
reg a,b,c,d,e,f,g,h;
wire x,y,z;

initial begin2
$dumpfile("eight_to_three_encoder_waveform.vcd");
$dumpvars(0,eight_to_three_encoder_testbench);
end 

eight_to_three_encoder dut(a,b,c,d,e,f,g,h,x,y,z);
initial begin 


#000 a=1;b=0;c=0;d=0;e=0;f=0;g=0;h=0;//8
#100 a=0;b=1;c=0;d=0;e=0;f=0;g=0;h=0;//7
#100 a=0;b=0;c=1;d=0;e=0;f=0;g=0;h=0;//6
#100 a=0;b=0;c=0;d=1;e=0;f=0;g=0;h=0;//5
#100 a=0;b=0;c=0;d=0;e=1;f=0;g=0;h=0;//4
#100 a=0;b=0;c=0;d=0;e=0;f=1;g=0;h=0;//3
#100 a=0;b=0;c=0;d=0;e=0;f=0;g=1;h=0;//2
#100 a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=1;//1
#100 a=0;b=0;c=0;d=0;e=0;f=0;g=0;h=0;//0

end

initial begin 
    $monitor($time,"Value of a =%b, b =%b ,c= %b,d=%b, e=%b, f=%b, g=%b, h=%b",a,b,c,d,e,f,g,h);
end


endmodule