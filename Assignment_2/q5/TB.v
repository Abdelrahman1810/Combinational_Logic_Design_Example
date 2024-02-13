module testBench ();
    wire Q;
    reg D, E, clk;

    D_Flip_Flop DFlipFlop(.clk(clk), .D(D), .E(E), .Q(Q));

    integer i;
    initial begin
        for (i = 0; i<60; i=i+1) begin
            D = $random;    
            #4;
            clk = i%2;
            E = (i<50)? 1:0;
            #5;
        end
    end

endmodule