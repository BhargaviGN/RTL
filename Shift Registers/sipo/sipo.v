module sipo (
    input d, clk, output [3:0] q
);
    dff d1(d, clk, q[3]);
    dff d2(q[3], clk, q[2]);
    dff d3(q[2], clk, q[1]);
    dff d4(q[1], clk, q[0]);

endmodule

module dff (
    input d, clk, output q
);
  reg q=0;
    always@(posedge clk) begin
        q <= d;
    end
endmodule