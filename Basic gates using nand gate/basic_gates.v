module basic_gates (
    input a, b, output [7:0] y
);
    wire w1, w2;

    nand(y[0], a, a);          //not gate for i/p a
    nand(y[1], b, b);          //not gate for i/p b
    nand(y[2], a, b);          //nand gate
    nand(y[3], y[2], y[2]);     //and gate
    nand(y[4], y[0], y[1]);     //or gate
    nand(y[5], y[4], y[4]);     //nor gate
    nand(w1, a, y[2]);
    nand(w2, b, y[2]);
    nand(y[6], w1, w2);           //exor gate
    nand(y[7], y[6], y[6]);       //exnor gate
endmodule