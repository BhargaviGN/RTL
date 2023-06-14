module mux2to1 (
    input in1, input in2, input select, output reg out
);
    always@(in1, in2, select, out) begin
        case (select)
            1'b0 : out = in1;
            1'b1 : out = in2; 
            default : out = 2'bxx;
        endcase
    end
endmodule