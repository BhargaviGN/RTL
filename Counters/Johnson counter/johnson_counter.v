module johnson_counter (
    input clk, rst, output [3:0] q
);
   wire w;
   not a(w1, q[3]);

   dff d1(.clk(clk), .rst(rst), .d(w), .q(q[0]));
   dff d2(.clk(clk), .rst(rst), .d(q[0]), .q(q[1]));
   dff d3(.clk(clk), .rst(rst), .d(q[1]), .q(q[2]));
   dff d4(.clk(clk), .rst(rst), .d(q[2]), .q(q[3]));

endmodule

module dff (
    input d, clk, rst, output reg q, qbar
);
    always@(posedge clk) begin
        if(rst)
        {q, qbar} <= {1'b0, 1'b1};
        else
        {q, qbar} <= {d, ~d};
    end
endmodule