`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2021 15:25:23
// Design Name: 
// Module Name: rcanbit
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


module rcanbit
#(parameter n =4)(
input [n-1 :0]x,y,
input c_in,
output [n-1:0]s,
output c_out
    );
    wire [n:0]c;
   assign  c[0]  =  c_in; // use assign
   assign c_out = c[n];
    generate // for replicated hardware structures
    genvar k;
    for(k=0; k<n; k=k+1)
        begin 
            full_adder FA (
            .x(x[k]),
            .y(y[k]),
            .c_in(c[k]),
            .s(s[k]),
            .c_out(c[k+1])
            );
        end
    endgenerate
endmodule
