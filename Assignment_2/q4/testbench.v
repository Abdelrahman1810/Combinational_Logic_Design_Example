module testbench ();
    wire a, b, c, D, e, f, g;
    wire [3:0] result_ALU;
    reg enable;
    reg [3:0] A, B;
    reg [1:0] opcode;

    q4 Q4(.enable(enable), .A(A), .B(B), .opcode(opcode),
     .a(a), .b(b), .c(c), .D(D), .e(e), .f(f), .g(g), .result_ALU(result_ALU));

    initial begin
        repeat(100) begin
            enable = $random;
            A = $random;
            B = $random;
            opcode = $random;
            #5;
        end
            $stop; 
    end

    initial begin
        $monitor("\n opcode = %b, A = %b, B = %b, result_ALU = %b, enable = %d,
                  \n a, b, c, D, e, f, g \n %d, %d, %d, %d, %d, %d, %d",
                    opcode, A, B, result_ALU, enable, a, b, c, D, e, f, g);
    end
endmodule