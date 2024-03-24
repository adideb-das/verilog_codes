module mux_21(
    input wire a,b,s,
    output reg y);
always @(*) begin
    if(s)
       assign y=b;
    else 
        assign y=a;    
end

endmodule