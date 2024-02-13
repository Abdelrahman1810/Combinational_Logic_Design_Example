module circuit (
    input A, B, C,
    output F
);
    assign F = (A^B) & (B~^C) & C;
endmodule