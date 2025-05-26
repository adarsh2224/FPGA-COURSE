module single_port_bram_2048x16 (
    input  wire         clk,
    input  wire         we,         // Write enable
    input  wire [10:0]  addr,       // 11-bit address for 2048-depth
    input  wire [15:0]  din,        // Data input
    output reg  [15:0]  dout        // Data output
);
 (* ram_style = "block" *) 
    reg [15:0] mem [0:2047];        // 2048 x 16 RAM

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end

endmodule
