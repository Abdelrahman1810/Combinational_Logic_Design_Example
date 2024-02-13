module alu (
    input A, B, AInvert, BInvert, CarryIn, [1:0] Operation,
    output CarryOut, Result
);
    wire a, b;
    assign a = (AInvert)? ~A:A;
    assign b = (BInvert)? ~B:B;

    assign {CarryOut,Result} = (!Operation)? {1'b0,{a&b}} :
                               (Operation==2'b01)? {1'b0,{a|b}}:(a+b+CarryIn);
endmodule