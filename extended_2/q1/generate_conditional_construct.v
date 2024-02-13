module generate_conditional_construct #(
    parameter USE_GRAY = 1
) (
    input [2:0] A,
    output [6:0] B
);
    generate
        if (USE_GRAY)
            GrayCode gc(.A(A), .B(B));
        else
            one_hot oh(.A(A), .B(B));
    endgenerate

endmodule