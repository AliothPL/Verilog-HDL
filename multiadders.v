`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2021 17:31:42
// Design Name: 
// Module Name: multiadders
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


module multiadders
(
input [15:0]a,b,
output [15:0]s_ab, 
output c_out_ab,

input [33:0]x,y,
output[33:0]s_xy,
output c_out_xy
);

rcanbit #(.n(16)) adder_16(
// for simplicity c_in just 0
    .x(a),
    .y(b),
    .c_in(0), 
    .s(s_ab),
    .c_out(c_out_ab)
);
rcanbit #(.n(34)) adder_34(

    .x(x),
    .y(y),
    .c_in(0),
    .s(s_xy),
    .c_out(c_out_xy)
);
endmodule
