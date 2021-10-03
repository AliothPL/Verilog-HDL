`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2021 15:27:06
// Design Name: 
// Module Name: n_bit_adder
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


module n_bit_adder 
#(parameter n =4)
(
input [n-1:0]x,y,
input c_in,
output c_out,
output [n-1:0]s
 );
 
 wire [n-1:0]c;
 assign c[0]=c_in;
 generate // used for replicated hardware structures
  genvar k; 
    begin 
        for(k=0; k<n; k=k+1)
            begin
                full_adder FA {
                .x(x[k]),
                .y(y[k]),
                .c_in(c[k]),
                .s(s[k]),
                .c_out(c[k+1])
                };
            end
 endgenerate
endmodule
