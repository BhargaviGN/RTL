`include "demux1to8.v"
module demux1to8_tb();
reg in;
reg [2:0] sel;
wire [7:0] y;
demux1to8 dm(in, sel, y);
initial begin
    $dumpfile("demux1to8.vcd");
    $dumpvars(0, demux1to8_tb);
    in=1; sel=3'b111;
    #2 sel=3'b010;
    #2 sel=3'b101;
    #2 in=0; sel=3'b110;
    #2 sel=3'b000;
    #2 sel=3'b011;
end
endmodule