module testbench ();
    wire [1:0] y_DUT, y_ref;
    reg [3:0] x;

    DUT_model DUT(.x(x), .y(y_DUT));
    golden_model refrence(.x(x), .y(y_ref));

    initial begin
        repeat(10) begin
            x = $random;
            #5;
            if (y_DUT!=y_ref) begin
               $display("Error\n");
               $stop; 
            end
        end
            $stop; 
    end

    initial begin
        $monitor("x = %b, y_ref = %b, y_DUT = %b", x, y_ref, y_DUT);
    end
endmodule