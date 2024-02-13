module comparator (
    input [3:0] A, B,
    output reg A_greaterthan_B, A_equals_B, A_lessthan_B
);
    always @(*) begin
        if (A==B) begin
            A_greaterthan_B = 1'b0;
            A_equals_B = 1'b1;
            A_lessthan_B = 1'b0;
        end else if (A>B) begin
            A_greaterthan_B = 1'b1;
            A_equals_B = 1'b0;
            A_lessthan_B = 1'b0;
        end else begin
            A_greaterthan_B = 1'b0;
            A_equals_B = 1'b0;
            A_lessthan_B = 1'b1;
        end
    end
endmodule