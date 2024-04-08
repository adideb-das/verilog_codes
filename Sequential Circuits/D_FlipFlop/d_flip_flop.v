module d_ff(d,clk,rst,q);
input d;
input clk;
input rst;
output reg q;
always @(posedge clk) begin
   if(rst==1)
        q<=0;
    else 
        q<=d;    
end
endmodule