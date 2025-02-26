module behavioral(
    input logic [3:0] in,       // 4-bit input for the BCD value (a, b, c, d)
    input logic [2:0] sel,      // 3-bit input for anode selection (s1, s2, s3)
    output logic [6:0] seg,     // 7-segment display outputs (A-G)
    output logic [7:0] anodes   // Anode control outputs
);

always_comb begin
    case (in)
        4'h0: seg = 7'b0000001; // Display 0
        4'h1: seg = 7'b1001111; // Display 1
        4'h2: seg = 7'b0010010; // Display 2
        4'h3: seg = 7'b0000110; // Display 3
        4'h4: seg = 7'b1001100; // Display 4
        4'h5: seg = 7'b0100100; // Display 5
        4'h6: seg = 7'b0100000; // Display 6
        4'h7: seg = 7'b0001111; // Display 7
        4'h8: seg = 7'b0000000; // Display 8
        4'h9: seg = 7'b0000100; // Display 9
        4'hA: seg = 7'b0001000; // Display A
        4'hB: seg = 7'b1100000; // Display B
        4'hC: seg = 7'b0110001; // Display C
        4'hD: seg = 7'b1000010; // Display D
        4'hE: seg = 7'b0110000; // Display E
        4'hF: seg = 7'b0111000; // Display F
        default: seg = 7'b1111111; // Blank Display
    endcase
end

// Anode selection based on the sel signal
always_comb begin
    case (sel)
        3'b000: anodes = 8'b11111110;
        3'b001: anodes = 8'b11111101;
        3'b010: anodes = 8'b11111011;
        3'b011: anodes = 8'b11110111;
        3'b100: anodes = 8'b11101111;
        3'b101: anodes = 8'b11011111;
        3'b110: anodes = 8'b10111111;
        3'b111: anodes = 8'b01111111;
        default: anodes = 8'b11111111; // All off
    endcase
end

endmodule
