module ring_counter (
    input clk, rst, output reg [3:0] q
);
    always @(posedge clk) begin
        if(rst)
        q <= 4'b1000;
        else begin
            q[0] <= q[1];
            q[1] <= q[2];
            q[2] <= q[3];
            q[3] <= q[0];
        end
    end
endmodule