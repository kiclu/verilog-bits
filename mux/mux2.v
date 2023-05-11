module mux2 #(
    parameter width = 0
)
(
    input       [width-1:0] in0,
    input       [width-1:0] in1,
    input                   s,
    output reg  [width-1:0] out
);
    always @* begin
        case(s)
            0: out <= in0;
            1: out <= in1;
        endcase
    end
endmodule
