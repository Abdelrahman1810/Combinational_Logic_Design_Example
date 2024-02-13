module testbench ();
    reg D;
    reg [1:0] S;
    wire [3:0] Y;
    demultiplexer1_4 Demux(.D(D), .S(S), .Y(Y));

    integer i;
    initial begin
        D = 1;
        for (i = 0; i<4; i=i+1) begin
            S = i;
            #5; 
        end
        D = 0;
        for (i = 0; i<4; i=i+1) begin
            S = i;
            #5; 
        end
        $stop;
    end

    initial begin
        $monitor("D = %b, S = %b, Y = %b", D, S, Y);
    end
endmodule