`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.09.2021 22:40:36
// Design Name: 
// Module Name: MUX2x1GL
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


module MUX2x1GL(

    input x1,x2,s,
    output f
     );   
        and A0(g1,sn,x1);
        and A1(g0,x2,~s);
        or O0(f,g1,g0);
             
endmodule
