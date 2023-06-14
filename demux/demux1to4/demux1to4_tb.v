`include "demux1to4.v"
module demux1to4_tb();
reg in;
reg [1:0] sel;
wire [3:0] y;
demux1to4 d0(in, sel, y);
initial begin
    $dumpfile("demux1to4.vcd");
    $dumpvars(0, demux1to4_tb);
    in=1; sel=2'b00;
    #2 sel=2'b01;
    #2 in=0; sel=2'b10;
    #2 sel=2'b11;
end
endmodule