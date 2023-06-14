module piso (
    input [3:0] pi, input clk, load, output reg so
);
   reg [3:0] temp=0;
   always @(posedge clk) begin
    if(load)
    temp <= pi;
    else begin
        so <= temp[3];
        temp <= {temp[2:0], 1'b0};
    end
   end
endmodule