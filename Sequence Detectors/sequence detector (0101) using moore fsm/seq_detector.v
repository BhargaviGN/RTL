module seq_detector (
    input in, clk, rst, output reg out
);
    reg [2:0] cur_state, nxt_state;
    localparam s0 = 3'b000,
               s1 = 3'b001,
               s2 = 3'b010,
               s3 = 3'b100;
  always @(cur_state or in) begin
    case (cur_state)
        
        s0 : if(in ==1'b0) begin
            nxt_state = s1;
            out = 1'b0;
        end 
        else
        nxt_state = cur_state;
        
        s1 : if(in == 1'b1) begin
            nxt_state = s2;
            out = 1'b0;
        end
        else begin
            nxt_state = cur_state;
            out = 1'b0;
        end
        
        s2 : if(in == 1'b0) begin
            nxt_state = s3;
            out = 1'b0;
        end
        else begin
            nxt_state = s0;
            out = 1'b0;
        end
        
        s3 : if(in == 1'b1) begin
            nxt_state = s2;
            out = 1'b1;
        end
        else begin
            nxt_state = s1;
            out = 1'b0;
        end
        
        default: nxt_state = s0;
    endcase
  end
  
  always @(posedge clk) begin
    if(rst)
    cur_state <= s0;
    else
    cur_state <= nxt_state;
  end
endmodule