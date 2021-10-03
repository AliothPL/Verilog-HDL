`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2021 23:11:13
// Design Name: 
// Module Name: full_adder
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


module full_adder(
input c_in,y,x,
output s, c_out
    );
 wire c[1:0];
 wire s1;   
    half_adder h0 (   
    .x(x),
    .y(y), 
    .c(c0),
    .s(s1)
    );
      half_adder h1 (   
    .x(c_in),
    .y(s1), 
    .c(c1),
    .s(s)
    
    );
        or(c_out,c0,c1);

endmodule
