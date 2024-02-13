module even_parity (
    input [7:0] A,
    output [8:0] out_with_parity
);
    assign out_with_parity = (^A)? {A,1'b1}:{A,1'b0};
endmodule