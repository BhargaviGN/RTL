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