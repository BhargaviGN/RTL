module basic_gates (
    input a, b, output [6:0] y
);
  mux2to1 not_gate(.out(y[0]), .sel(a), .a(1), .b(0));  
  mux2to1 and_gate(.out(y[1]), .sel(a), .a(0), .b(b));
  mux2to1 or_gate(.out(y[2]), .sel(a), .a(b), .b(1));
  mux2to1 nand_gate(.out(y[3]), .sel(a), .a(1), .b(~b));
  mux2to1 nor_gate(.out(y[4]), .sel(a), .a(~b), .b(0));
  mux2to1 exor_gate(.out(y[5]), .sel(a), .a(b), .b(~b));
  mux2to1 exnor_gate(.out(y[6]), .sel(a), .a(~b), .b(b));
endmodule

module mux2to1 (
    input [3:0] a, input [3:0] b, input sel, output [3:0] out
);
    assign out = (~sel & a) | (sel & b);
endmodule