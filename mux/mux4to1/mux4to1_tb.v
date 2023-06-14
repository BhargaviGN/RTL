`include "mux4to1.v"
module mux4to1_tb();
reg a,b,c,d;
reg [1:0] sel;
wire y;
mux4to1 fo(a,b,c,d,sel,y);
initial begin
    $dumpfile("mux4to1.vcd");
    $dumpvars(0, mux4to1_tb);
    a=1; b=0; c=1; d=0;
    #2 sel = 2'b00;
    #2 sel = 2'b01;
    #2 sel = 2'b10;
    #2 sel = 2'b11;
end
endmodule