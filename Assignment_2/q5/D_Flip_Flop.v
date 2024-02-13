module D_Flip_Flop (
    input D, E, clk,
    output reg Q
);
    always @(posedge clk) begin
        if (E)
           Q <= D; 
    end
endmodule