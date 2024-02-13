module testbench #(parameter N = 4) ();
    wire [3:0] result_DUT;
    reg [1:0] opcode;
    reg [3:0] A, B, result_ref;

    ALU #(.N_PARAMETER(N))alu(.A(A), .B(B), .opcode(opcode), .result(result_DUT));

    initial begin
        repeat(1000) begin
            opcode = $random;
            A = $random;
            B = $random;
            case (opcode)
                0: result_ref = A+B; 
                2: result_ref = A-B;
                1: result_ref = A|B;
                default: result_ref = A^B;
            endcase
            #5;
            if (result_DUT!=result_ref) begin
               $display("Error\n");
               $stop; 
            end
        end
    end

    initial begin
        $monitor("opcode = %b, A = %b, B = %b, result_DUT = %b, result_ref = %b"
                ,opcode,A,B,result_DUT, result_ref);
    end    
endmodule