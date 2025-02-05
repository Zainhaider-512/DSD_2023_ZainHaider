`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2025 10:15:22 PM
// Design Name: 
// Module Name: DSDLAB3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DSDLAB3(output x,y,
input a,b,c
);
assign x =(a | b)^ ~c ;
assign y =(a|b)&((~(a&b))^(a|b));

endmodule

