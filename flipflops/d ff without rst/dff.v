module dff (
    input d, clk, output reg q, qbar
);
    always@(posedge clk) begin
        {q, qbar} <= {d, ~d};
    end
endmodule