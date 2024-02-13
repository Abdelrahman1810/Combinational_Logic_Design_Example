module comparator (
    input [3:0] A,
    output B
);
    assign B = (4'b1000>A && A>4'b0010);  
endmodule