module cd4_2(
    input            i0,
    input            i1,
    input            i2,
    input            i3,
    input            i4,
    input            i5,
    input            i6,
    input            i7,
    output reg [2:0] o,
    output reg       v
);
    always @* begin
        casez({i7, i6, i5, i4, i3, i2, i1, i0})
            8'b1ZZZZZZZ: begin
                o <= 3'b111;
                v <= 1;
            end
            8'b01ZZZZZZ: begin
                o <= 3'b110;
                v <= 1;
            end
            8'b001ZZZZZ: begin
                o <= 3'b101;
                v <= 1;
            end
            8'b0001ZZZZ: begin
                o <= 3'b100;
                v <= 1;
            end
            8'b00001ZZZ: begin 
                o <= 3'b011;
                v <= 1;
            end
            8'b000001ZZ: begin
                o <= 3'b010;
                v <= 1;
            end
            8'b0000001Z: begin
                o <= 3'b001;
                v <= 1;
            end
            8'b00000001: begin
                o <= 3'b000;
                v <= 1;
            end
            8'b00000000: begin
                o <= 3'b000;
                v <= 0;
            end
        endcase
    end
endmodule
