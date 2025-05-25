module mux2x1 (
    input  wire A,
    input  wire B,
    input  wire Sel,
    output wire Y
);

    assign Y = Sel ? B : A;

endmodule
