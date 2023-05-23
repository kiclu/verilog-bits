module cd4_2(
    input            i0,
    input            i1,
    input            i2,
    input            i3,
    output reg [1:0] o,
    output reg       v
);
    always @* begin
        casez({i3, i2, i1, i0})
            4'b1ZZZ: begin 
                o <= 2'b11;
                v <= 1;
            end
            4'b01ZZ: begin
                o <= 2'b10;
                v <= 1;
            end
            4'b001Z: begin
                o <= 2'b01;
                v <= 1;
            end
            4'b0001: begin
                o <= 2'b00;
                v <= 1;
            end
            4'b0000: begin
                o <= 2'b00;
                v <= 0;
            end
        endcase
    end
endmodule
