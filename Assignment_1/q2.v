module adder (
    input [3:0] A, B,
    output [3:0] C
);
    assign C = {A[3]+B[3], A[2]+B[2], A[1]+B[1], A[0]+B[0]};
endmodule