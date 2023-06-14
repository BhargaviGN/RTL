module mod (
    input clk, rst, output reg [WIDTH-1:0] q
);
   parameter N = 8;
   parameter WIDTH=3;
    
    always @(posedge clk) begin
        if(rst)
        q = 0;
        else if(q == N-1)
        q = 0;
        else
        q = q+1;
    end
endmodule