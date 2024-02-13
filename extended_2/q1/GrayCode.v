module GrayCode (
    input [2:0] A,
    output [6:0] B
);
    assign B = {4'b0000, A[2], A[2]^A[1], A[1]^A[0]};
endmodule