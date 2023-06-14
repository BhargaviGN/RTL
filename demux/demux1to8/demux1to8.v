module demux1to8 (
    input in, input [2:0] sel, output reg [7:0] y
);
  always@(in, sel) begin
    case (sel)
        3'b000 : begin
            y[0] = in;
            y[1] = 0;
            y[2] = 0;
            y[3] = 0;
            y[4] = 0;
            y[5] = 0;
            y[6] = 0;
            y[7] = 0;
        end 
        3'b001 : begin
          y[0] = 0;
          y[1] = in;
          y[2] = 0;
          y[3] = 0;
          y[4] = 0;
          y[5] = 0;
          y[6] = 0;
          y[7] = 0;
        end
        3'b010 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = in;
          y[3] = 0;
          y[4] = 0;
          y[5] = 0;
          y[6] = 0;
          y[7] = 0;
        end
        3'b011 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = 0;
          y[3] = in;
          y[4] = 0;
          y[5] = 0;
          y[6] = 0;
          y[7] = 0;
        end
        3'b100 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = 0;
          y[3] = 0;
          y[4] = in;
          y[5] = 0;
          y[6] = 0;
          y[7] = 0;
        end
        3'b101 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = 0;
          y[3] = 0;
          y[4] = 0;
          y[5] = in;
          y[6] = 0;
          y[7] = 0;
        end
        3'b110 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = 0;
          y[3] = 0;
          y[4] = 0;
          y[5] = 0;
          y[6] = in;
          y[7] = 0;
        end
        3'b111 : begin
          y[0] = 0;
          y[1] = 0;
          y[2] = 0;
          y[3] = 0;
          y[4] = 0;
          y[5] = 0;
          y[6] = 0;
          y[7] = in;
        end
        default: y = 8'bxxxxxxxx;
    endcase
  end  
endmodule