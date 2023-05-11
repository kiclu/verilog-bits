module reg_ld_clr_dec #(
    parameter width = 0
)
(
    input       [width-1:0] din,
    output reg  [width-1:0] dout,
    input                   ld,
    input                   clr,
    input                   dec,
    input                   clk
);
    always @(posedge clk) begin
        if(!clr) begin
            if(ld && dec) dout <= 'x;
            else if(ld) dout <= din;
            else if(dec) dout <= dout - 1;
        end
    end

    always @* begin
        if(clr) dout <= 0;
    end
endmodule
