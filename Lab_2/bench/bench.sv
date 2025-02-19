module bench;
logic [1:0]a1;
logic [1:0]b1;
logic r1;
logic g1;
logic bl1;
localparam period = 10;
dsd4 UUT(
.a(a1),
.b(b1),
.r(r1),
.g(g1),
.bl(bl1)
);
initial //initial block executes only once
begin
// Provide different combinations of the inputs to check validity of code
a1[0] = 0; a1[1] = 0; b1[0] = 0; b1[1] = 0;
#period;
a1[0] = 0; a1[1] = 0; b1[0] = 0; b1[1] = 1;
#period;
a1[0] = 0; a1[1] = 0; b1[0] = 1; b1[1] = 0;
#period;
a1[0] = 0; a1[1] = 0; b1[0] = 1; b1[1] = 1;
#period;
a1[0] = 0; a1[1] = 1; b1[0] = 0; b1[1] = 0;
#period;
a1[0] = 0; a1[1] = 1; b1[0] = 0; b1[1] = 1;
#period;
a1[0] = 0; a1[1] = 1; b1[0] = 1; b1[1] = 0;
#period;
a1[0] = 0; a1[1] = 1; b1[0] = 1; b1[1] = 1;
#period;
a1[0] = 1; a1[1] = 0; b1[0] = 0; b1[1] = 0;
#period;
a1[0] = 1; a1[1] = 0; b1[0] = 0; b1[1] = 1;
#period;
a1[0] = 1; a1[1] = 0; b1[0] = 1; b1[1] = 0;
#period;
a1[0] = 1; a1[1] = 0; b1[0] = 1; b1[1] = 1;
#period;
a1[0] = 1; a1[1] = 1; b1[0] = 0; b1[1] = 0;
#period;
a1[0] = 1; a1[1] = 1; b1[0] = 0; b1[1] = 1;
#period;
a1[0] = 1; a1[1] = 1; b1[0] = 1; b1[1] = 0;
#period;
a1[0] = 1; a1[1] = 1; b1[0] = 1; b1[1] = 1;
#period;
$stop;
end

initial
begin
    $monitor("a0= %d, a1= %d, b0= %d, b1= %d, r= %d, g= %d, bl= %d", 
             a1[0], a1[1], b1[0], b1[1], r1, g1, bl1);
end


endmodule