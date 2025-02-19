module dsd4(
 input logic [1:0] a,
 input logic [1:0] b,
 output logic r,
 output logic g,
 output logic bl
  );
  
 always_comb
  begin
  r = (a>b) || (a==b);
  g = (a==b) || (a<b);
  bl = (a>b) || (a < b);
 end
endmodule