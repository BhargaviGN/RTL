module comparator (
    input [3:0] a, b, output reg l, g, e
);
    always@(a, b) begin
        if(a < b) begin
            l = 1;
            g = 0;
            e = 0;
        end
        else if(a > b) begin
            l = 0;
            g = 1;
            e = 0;
        end
        else begin
            l = 0;
            g = 0;
            e = 1;
        end
    end
endmodule