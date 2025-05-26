module true_dual_port_ram_32x16k (
    input  wire         clk,
    input  wire         we_a,
    input  wire [13:0]  addr_a,     // 14-bit address for 16K-depth
    input  wire [31:0]  din_a,
    output reg  [31:0]  dout_a,

    input  wire         we_b,
    input  wire [13:0]  addr_b,
    input  wire [31:0]  din_b,
    output reg  [31:0]  dout_b
);
 (* ram_style = "block" *) 
    reg [31:0] mem [0:16383];       // 16K x 32 RAM

    // Port A
    always @(posedge clk) begin
        if (we_a)
            mem[addr_a] <= din_a;
        dout_a <= mem[addr_a];
    end

    // Port B
    always @(posedge clk) begin
        if (we_b)
            mem[addr_b] <= din_b;
        dout_b <= mem[addr_b];
    end

endmodule

