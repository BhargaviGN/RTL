module bcd_to_bin (
    input [7:0] bcd, output [3:0] bin
);
   assign bin[0] = bcd[0];
   assign bin[1] = bcd[1] ^ bcd[4];
   assign bin[2] = bcd[2] | (bcd[4] & bcd[1]);
   assign bin[3] = bcd[3] | bcd[4]; 
endmodule