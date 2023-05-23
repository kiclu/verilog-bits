module dc3_8(
    input [2:0] a,
    input       ena,
    output reg  d7,
    output reg  d6,
    output reg  d5,
    output reg  d4,
    output reg  d3,
    output reg  d2,
    output reg  d1,
    output reg  d0
);
    always @* begin
        if(ena) begin
            case(a)
                3'd7: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b10000000;
                3'd6: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b01000000;
                3'd5: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00100000;
                3'd4: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00010000;
                3'd3: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00001000;
                3'd2: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00000100;
                3'd1: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00000010;
                3'd0: {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00000001;
            endcase
        end
        else {d7, d6, d5, d4, d3, d2, d1, d0} <= 8'b00000000;
    end
endmodule
