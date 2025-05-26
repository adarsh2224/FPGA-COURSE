module distributed_ram_256x32 (
    input  wire         clk,
    input  wire         we,         // Write enable
    input  wire [7:0]   addr,       // 8-bit address for 256-depth
    input  wire [31:0]  din,        // Data input
    output reg  [31:0]  dout        // Data output
);

    // Force distributed RAM (for Xilinx synthesis tools)
    (* ram_style = "distributed" *) reg [31:0] mem [0:255];

    always @(posedge clk) begin
        if (we)
            mem[addr] <= din;
        dout <= mem[addr];
    end

endmodule

