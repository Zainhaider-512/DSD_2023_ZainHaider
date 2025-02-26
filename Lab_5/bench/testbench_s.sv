module testbench_s;
logic a, b, c, d; 
logic s1, s2, s3;
logic A, B, C, D, E, F, G;
logic anode0, anode1, anode2, anode3, anode4, anode5, anode6, anode7;

localparam period = 10;

structural UUT(
    .a(a), .b(b), .c(c), .d(d),
    .s1(s1), .s2(s2), .s3(s3),
    .A(A), .B(B), .C(C), .D(D), .E(E), .F(F), .G(G),
    .anode0(anode0), .anode1(anode1), .anode2(anode2), .anode3(anode3),
    .anode4(anode4), .anode5(anode5), .anode6(anode6), .anode7(anode7)
);

initial begin
    // Provide different combinations of the inputs to check validity of code
    a = 0; b = 0; c = 0; d = 0; #period;
    a = 0; b = 0; c = 0; d = 1; #period;
    a = 0; b = 0; c = 1; d = 0; #period;
    a = 0; b = 0; c = 1; d = 1; #period;
    a = 0; b = 1; c = 0; d = 0; #period;
    a = 0; b = 1; c = 0; d = 1; #period;
    a = 0; b = 1; c = 1; d = 0; #period;
    a = 0; b = 1; c = 1; d = 1; #period;
    a = 1; b = 0; c = 0; d = 0; #period;
    a = 1; b = 0; c = 0; d = 1; #period;
    a = 1; b = 0; c = 1; d = 0; #period;
    a = 1; b = 0; c = 1; d = 1; #period;
    a = 1; b = 1; c = 0; d = 0; #period;
    a = 1; b = 1; c = 0; d = 1; #period;
    a = 1; b = 1; c = 1; d = 0; #period;
    a = 1; b = 1; c = 1; d = 1; #period;
    $stop;
end

initial begin
    s1 = 0; s2 = 0; s3 = 0; #period;
    s1 = 0; s2 = 0; s3 = 1; #period;
    s1 = 0; s2 = 1; s3 = 0; #period;
    s1 = 0; s2 = 1; s3 = 1; #period;
    s1 = 1; s2 = 0; s3 = 0; #period;
    s1 = 1; s2 = 0; s3 = 1; #period;
    s1 = 1; s2 = 1; s3 = 0; #period;
    s1 = 1; s2 = 1; s3 = 1; #period;
    $stop;
end

initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b d=%b | s1=%b s2=%b s3=%b | A=%b B=%b C=%b D=%b E=%b F=%b G=%b | Anodes=%b%b%b%b%b%b%b%b",
             $time, a, b, c, d, s1, s2, s3, A, B, C, D, E, F, G, anode0, anode1, anode2, anode3, anode4, anode5, anode6, anode7);
end

endmodule
