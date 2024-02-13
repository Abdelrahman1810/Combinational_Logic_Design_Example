module Seven_Segment_LED( 
    input enable, [3:0] DIGIT,
    output reg [6:0] LED
);
// LED0 LED1 LED2 LED3 LED4 LED5 LED6
// a    b    c    D    e    f    g   

    always @(*) begin
        if (enable) begin
            case (DIGIT)
                0: LED = 'b1111110;
                1: LED = 'b0110000;
                2: LED = 'b1101101;
                3: LED = 'b1111001;
                4: LED = 'b0110011;
                5: LED = 'b1011011;
                6: LED = 'b1011111;
                7: LED = 'b1110000;
                8: LED = 'b1111111;
                9: LED = 'b1111011;
                10: LED = 'b1110111;
                11: LED = 'b0011111;
                12: LED = 'b1001110;
                13: LED = 'b0111101;
                14: LED = 'b1001111;
                15: LED = 'b1000111;
            endcase
        end else
           LED = 0;
    end    
endmodule