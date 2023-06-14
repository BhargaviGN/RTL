module tff (
    input t, clk, rst, output reg q, qbar
);
    always@(posedge clk) begin
        if(rst)
        {q, qbar} <= {1'b0,1'b1};
        else
        {q, qbar} <= {t^q, ~(t^q)};
    end
endmodule