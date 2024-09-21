module seg7 (
      input wire [3:0] digit,
      output reg [6:0] segments
);

  always @(*) begin
        case (digit)
        4'd0: segments = 7'b0111110; // A
        4'd1: segments = 7'b1110111; // b
        4'd2: segments = 7'b0001110; // C
        4'd3: segments = 7'b1001111; // d
        4'd4: segments = 7'b1110111; // E
        4'd5: segments = 7'b0000110; // F
        4'd6: segments = 7'b1110111; // G
        default; segments = 7'b0000000; // Blank (off)
        endcase
    end
endmodule
