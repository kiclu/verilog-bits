module reg_ld_clr #(
    parameter width = 0
)
(
    input       [width-1:0] din,
    output reg  [width-1:0] dout,
    input                   ld,
    input                   clr,
    input                   clk
);
    always @(posedge clk) begin
        if(ld && !clr) dout <= din;
    end

    always @* begin
        if(clr) dout <= 0;
    end
endmodule
