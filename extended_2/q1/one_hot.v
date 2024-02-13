module one_hot (
    input [2:0] A,
    output reg [6:0] B
);
    always @(*) begin
        case (A)
            1: B = 'b0000001; 
            2: B = 'b0000010;
            3: B = 'b0000100;
            4: B = 'b0001000;
            5: B = 'b0010000;
            6: B = 'b0100000;
            7: B = 'b1000000;
            default: B = 0;
        endcase
    end
endmodule