module dc2_4(
    input [1:0] a,
    input       ena,
    output reg  d3,
    output reg  d2,
    output reg  d1,
    output reg  d0
);
    always @* begin
        if(ena) begin
            case(a)
                2'd3: {d3, d2, d1, d0} <= 4'b1000;
                2'd2: {d3, d2, d1, d0} <= 4'b0100;
                2'd1: {d3, d2, d1, d0} <= 4'b0010;
                2'd0: {d3, d2, d1, d0} <= 4'b0001;
            endcase
        end
        else {d7, d6, d5, d4, d3, d2, d1, d0} <= 4'b0000;
    end
endmodule
