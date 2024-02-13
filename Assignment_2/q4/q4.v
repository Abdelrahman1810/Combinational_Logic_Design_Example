module Instantiation_model( 
    input enable, [3:0] A, B, [1:0] opcode,
    output a, b, c, D, e, f, g, [3:0] result_ALU
);

    ALU #(.N_PARAMETER(4))alu(.A(A), .B(B), .opcode(opcode), .result(result_ALU));
    Seven_Segment_LED sevensegmentled(.enable(enable), .DIGIT(result_ALU), .LED({a,b,c,D,e,f,g}));
    

endmodule