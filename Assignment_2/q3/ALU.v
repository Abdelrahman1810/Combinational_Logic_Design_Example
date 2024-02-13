module ALU #(parameter N_PARAMETER = 4)(
    input [1:0] opcode, [N_PARAMETER-1:0] A, B,
    output [N_PARAMETER-1:0] result
);
  assign result = (!opcode)? A+B: (opcode==2)? A-B: (opcode=='b01)? A|B:A^B;
endmodule