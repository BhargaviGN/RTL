module basic_gates (
    input a, b, output [7:0] y
);
    wire w1, w2;

    nor(y[0], a, a);          //not gate for i/p a
    nor(y[1], b, b);          //not gate for i/p b
    nor(y[2], a, b);          //nor gate
    nor(y[3], y[2], y[2]);     //or gate
    nor(y[4], y[0], y[1]);     //and gate
    nor(y[5], y[4], y[4]);     //nand gate
    nor(w1, a, y[2]);
    nor(w2, b, y[2]);
    nor(y[6], w1, w2);           //exor gate
    nor(y[7], y[6], y[6]);       //exnor gate
endmodule