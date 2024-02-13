module demultiplexer1_4(
    input D, [1:0] S,
    output [3:0] Y
);
    assign Y = (S==0)? {3'b000,D}: (S==1)? {2'b00,D,1'b0}: (S==2)? {1'b0,D,2'b00}:{D,3'b000};
endmodule