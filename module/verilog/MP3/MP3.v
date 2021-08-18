`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.07.2021 22:00:25
// Design Name: 
// Module Name: MP3
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


module MP3(
input clk,
input  pasar1, 
output reg salida1
    );

       
always @ (posedge clk)  begin    
    if (pasar1)
    begin    
        salida1 <= 0;    
    end
    else
    if (~pasar1)
    begin    
        salida1 <= 1;    
    end
 end
    
endmodule

