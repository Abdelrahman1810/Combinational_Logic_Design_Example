module prime_number (
    input [2:0] A,
    output F
);
    assign F = A[0]&A[2] | A[1]& ~A[2];     // A[2] . A[0] + A[2]' . A[1]
endmodule