module mux4 #(
    parameter width = 0
)
(
    input       [width-1:0] in0,
    input       [width-1:0] in1,
    input       [width-1:0] in2,
    input       [width-1:0] in3,
    input       [1:0]       s,
    output reg  [width-1:0] out
);
    always @* begin
        case(s)
            0: out <= in0;
            1: out <= in1;
            2: out <= in2;
            3: out <= in3;
        endcase
    end
endmodule
