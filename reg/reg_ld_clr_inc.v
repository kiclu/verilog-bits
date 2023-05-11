module reg_ld_clr_inc #(
    parameter width = 0
)
(
    input       [width-1:0] din,
    output reg  [width-1:0] dout,
    input                   ld,
    input                   clr,
    input                   inc,
    input                   clk
);
    always @(posedge clk) begin
        if(!clr) begin
            if(ld && inc) dout <= 'x;
            else if(ld) dout <= din;
            else if(inc) dout <= dout + 1;
        end
    end

    always @* begin
        if(clr) dout <= 0;
    end
endmodule
