`include "mux2to1.v"
module mux2to1_tb();
reg in1, in2, select;
wire out;
mux2to1 to(in1, in2, select, out);
initial begin
    $dumpfile("mux2to1.vcd");
    $dumpvars(0, mux2to1_tb);
    in1=1; in2=0; select=0;
    #2 select=1;
end
endmodule