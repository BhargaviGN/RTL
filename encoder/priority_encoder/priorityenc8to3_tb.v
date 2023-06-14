`include "priorityenc8to3.v"
module priorityenc8to3_tb();
reg [7:0] i;
reg en;
wire [2:0] y;
priorityenc8to3 pe(i, en, y);
initial begin
    $dumpfile("priorityenc8to3.vcd");
    $dumpvars(0, priorityenc8to3_tb);
    en=0; i=011;
    #2 en=1;
    #2 i=000;
    #2 i=111;
    #2 i=001;
end
endmodule