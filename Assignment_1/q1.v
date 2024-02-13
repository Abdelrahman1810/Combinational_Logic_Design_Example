module circuit (
    input A, B, C, D, E, F, selector,
    output out, out_bar
);
    wire in0, in1;
    assign in0 = A & B & C;
    assign in1 = ~(D ^ E ^ F);
    assign out = (selector)? in1:in0;
    assign out_bar = ~(out);
endmodule