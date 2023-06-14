module enc4to2 (
    input [3:0] in, input en, output reg [1:0] y
);
  always@(in, en) begin
    if(en == 0) begin
        y = 2'bxx;
    end
    else
    begin
        case (in)
            4'b0001 : y = 2'b00;
            4'b0010 : y = 2'b01;
            4'b0100 : y = 2'b10;
            4'b1000 : y = 2'b11;
            default : y = 2'bzz;
        endcase
    end
  end  
endmodule