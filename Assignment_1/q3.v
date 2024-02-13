module decoder2_4 (
    input [1:0] A,
    output reg [3:0] D
);
    always @(*) begin
        if (A == 2'b00) 
             D = 4'b0001;
        else if (A == 2'b01) 
             D = 4'b0010;
        else if (A == 2'b10) 
             D = 4'b0100;
        else
             D = 4'b1000;
    end
endmodule