`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2021 15:17:27
// Design Name: 
// Module Name: add_subtr
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

module add_subtr // using ripple carrry adder 
#(parameter b = 8, qtty = 5)(

input [b-1:0]x,y,
input add_n,
output [b-1:0]s,
output c_out
                            );
  wire [b:0]xored_y;
  wire [qtty:0]c_or;
    
    generate 
        genvar z; 
        genvar q; 
            for(q=0; q<qtty; q=q+1)
                begin
                    for(z=0; z<b; z=z+1)
                        begin
                              assign xored_y[z] = y[z]^add_n;
                        end
                       rcanbit#(.n(b))(
                        .x(x),
                        .y(xored_y),
                        .c_in(add_n),
                        .s(s)                      
                       );
                end
    endgenerate      
endmodule
