module testbench ();
    wire [3:0] Y;
    reg [9:0] D;

    BCD DUT(.D0(D[0]), .D1(D[1]), .D2(D[2]), .D3(D[3]),
    .D4(D[4]), .D5(D[5]), .D6(D[6]), .D7(D[7]), .D8(D[8]), 
    .D9(D[9]),.Y0(Y[0]), .Y1(Y[1]), .Y2(Y[2]), .Y3(Y[3]));

    integer i;
    initial begin
        for (i = 0; i<10; i=i+1) begin
            D = 0;
            D[i] = 1;
            #5;
            D = $random;
            #5;
        end
        $stop; 
    end

    initial begin
        $monitor("D = %b, Y = %b", D, Y);
    end
endmodule
