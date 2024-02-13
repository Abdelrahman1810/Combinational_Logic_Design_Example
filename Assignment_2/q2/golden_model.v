module golden_model (
    input [9:0] D,
    output reg [3:0] Y
);
    always @(*) begin
        if (D == 2)
            Y = 1;
        else if (D == 4)
            Y = 2;
        else if (D == 8)
            Y = 3;
        else if (D == 16)
            Y = 4;
        else if (D == 32)
            Y = 5;
        else if (D == 64)
            Y = 6;
        else if (D == 128)
            Y = 7;
        else if (D == 256)
            Y = 8;
        else if (D == 512)
            Y = 9;
        else
            Y = 0;
    end
endmodule
/*
module DUT_model (
    input [9:0] D,
    output reg [3:0] Y
);
    generate
        case (D)
            2: 
            4: 
            8: 
            16: 
            32: 
            64: 
            128: 
            256: 
            512: 
            default: Y = 0;
        endcase
    endgenerate
endmodule
*/