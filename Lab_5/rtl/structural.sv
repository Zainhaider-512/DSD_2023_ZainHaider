module structural(
input logic a,
input logic b,
input logic c,
input logic d,
input logic s1,
input logic s2,
input logic s3,
output logic A,
output logic B,
output logic C,
output logic D,
output logic E,
output logic F,
output logic G,
output logic anode0,
output logic anode1,
output logic anode2,
output logic anode3,
output logic anode4,
output logic anode5,
output logic anode6,
output logic anode7
    );
    
assign A = ((~(a)) & (~(b)) & (~(c)) & (d)) | ((~(a)) & (b) & (~(c)) & (~(d))) | ((a) & (b) & (~(c)) & (d)) | ((a) & (~(b)) & (c) & (d));
assign B = ((b) & (c) & (~(d))) | ((a) & (c) & (d)) | ((~(a)) & (b) & (~(c)) & (d)) | ((a) & (b) & (~(d))) ;
assign C = ((~(a)) & (~(b)) & (c) & (~(d))) | ((a) & (b) & (c)) | ((a) & (b) & (~(d)));
assign D = ((~(a)) & (~(b)) & (~(c)) & (d)) | ((~(a)) & (b) & (~(c)) & (~(d))) | ((b) & (c) & (d)) | ((a) & (~(b)) & (c) & (~(d)));
assign E = ((~(a)) & (b) & (~(c))) | ((~(b)) & (~(c)) & (d)) | ((~(a)) & (d));
assign F = ((~(a)) & (~(b)) & (d)) | ((~(a)) & (c) & (d)) | ((~(a)) & (~(b)) & (c)) | ((a) & (b) & (~(c)) & (d)) ;
assign G = ((~(a)) & (~(b)) & (~(c))) | ((a) & (b) & (~(c)) & (~(d))) | ((~(a)) & (b) & (c) & (d));

assign anode0 = (s3 | s2 | s1);
assign anode1 = (s3 | s2 | ~s1);
assign anode2 = (s3 | ~s2 | s1);
assign anode3 = (s3 | ~s2 | ~s1);
assign anode4 = (~s3 | s2 | s1);
assign anode5 = (~s3 | s2 | ~s1);
assign anode6 = (~s3 | ~s2 | s1);
assign anode7 = (~s3 | ~s2 | ~s1);
endmodule
