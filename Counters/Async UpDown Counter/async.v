module async (
    input clk, rst, UpOrDown, output [3:0] count
);
    reg [3:0] count=0;
    always @(posedge clk or posedge rst) begin
        if(rst == 1)
          count <= 0;
        else
          if(UpOrDown == 1)
                if(count == 15)
                  count <= 0;
                else
                 count <= count+1;
            else 
                if(count == 0)
                   count <= 0;
                else
                   count <= count-1;
    end
endmodule