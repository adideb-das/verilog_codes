module four_to_two_encoder(din,dout);
input [3:0]din;
output reg [1:0]dout;
always@(din)  
    case(din)
        4'b0001:dout=2'b00;
        4'b0010:dout=2'b01;
        4'b0100:dout=2'b10;
        4'b1000:dout=2'b11;
    default: dout[1:0]=2'bzz;
endcase
endmodule
