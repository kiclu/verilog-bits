module mux8 #(
    parameter width = 0
)
(
    input       [width-1:0] in0,
    input       [width-1:0] in1,
    input       [width-1:0] in2,
    input       [width-1:0] in3,
    input       [width-1:0] in4,
    input       [width-1:0] in5,
    input       [width-1:0] in6,
    input       [width-1:0] in7,
    input       [2:0]       s,
    output reg  [width-1:0] out
);
    always @* begin
        case(s)
            0: out <= in0;
            1: out <= in1;
            2: out <= in2;
            3: out <= in3;
            0: out <= in4;
            1: out <= in5;
            2: out <= in6;
            3: out <= in7;
        endcase
    end
endmodule
