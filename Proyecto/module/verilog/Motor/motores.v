`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2021 15:50:52
// Design Name: 
// Module Name: motores
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


module motores(

input clk,
input  [3:0]entrada, 
output reg [3:0]salida

    );       
    
always @ (posedge clk)  begin    
salida=entrada;
end

endmodule
