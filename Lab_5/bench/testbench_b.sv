module testbench_b;
    logic [3:0] in;     // Represents a, b, c, d as a 4-bit input
    logic [2:0] sel;    // Represents s1, s2, s3 as a 3-bit input
    logic [6:0] seg;    // 7-segment output
    logic [7:0] anodes; // Anode control signals

    // Instantiate the Unit Under Test (UUT)
    behavioral UUT (
        .in(in),
        .sel(sel),
        .seg(seg),
        .anodes(anodes)
    );

    // Testbench stimulus
    initial begin
    // Loop for all input values (0000 to 1111)
    for (int i = 0; i < 16; i++) begin  
        in = i;  
        #10;  // Wait for the output to stabilize
    end

    // Loop for all selector values (000 to 111), independent of input
    for (int j = 0; j < 8; j++) begin  
        sel = j;  
        #10;  // Wait for the output to stabilize
    end

    $stop;
end


    // Monitor outputs
    initial begin
        $monitor("Time=%0t | in=%b | sel=%b | seg=%b | anodes=%b",
                 $time, in, sel, seg, anodes);
    end
endmodule



