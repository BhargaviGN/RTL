module demux1to4 (
    input in, input [1:0] sel, output reg [3:0] y
);
    always@(in, sel) begin
        case (sel)
            2'b00 : begin
                y[0] = in;
                y[1] = 0;
                y[2] = 0;
                y[3] = 0;
            end 
            2'b01 : begin
                y[0] = 0;
                y[1] = in;
                y[2] = 0;
                y[3] = 0;
            end
            2'b10 : begin
                y[0] = 0;
                y[1] = 0;
                y[2] = in;
                y[3] = 0;
            end
            2'b11 : begin
                y[0] = 0;
                y[1] = 0;
                y[2] = 0;
                y[3] = in;
            end
            default : y = 4'bxxxx; 
        endcase
    end
endmodule