module testbench_0 ();
    reg [2:0] A;
    wire [6:0] B;
    generate_conditional_construct #(.USE_GRAY(0))gcc(.A(A), .B(B));

    initial begin
        $display("USE_GRAY = 0\n");
        repeat(100) begin
            A = $random;
            #5;
        end
        $stop;
    end
    
    initial begin
        $monitor("A = %b, B=%b", A, B);
    end

endmodule