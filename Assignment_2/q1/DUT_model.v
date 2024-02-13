module DUT_model (
    input [3:0] x,
    output reg [1:0] y
);
    always @(*) begin
        casex (x)
            'b1XXX: y = 'b11;
            'b01XX: y = 'b10;
            'b001X: y = 'b01;
            default: y = 'b00;
        endcase
    end
endmodule