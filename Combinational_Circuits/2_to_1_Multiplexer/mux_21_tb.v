`include "mux_21.v"
module mux_21_tb;
    reg a, b, s;
    wire y;
    mux_21 dut(a, b, s, y);
    initial begin
        $dumpfile("mux_21_waveform.vcd");
        $dumpvars(0, mux_21_tb);

        // Test cases
        #10 a=0; b=0; s=0;
        #10 a=0; b=1; s=0;
        #10 a=1; b=0; s=1;
        #10 a=1; b=1; s=1;
        #10 $finish;
    end

    always #5 s = ~s;

    always @(posedge s) begin
        $display("At time = %t, output = %d", $time, y);
    end
endmodule
