`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2020 20:06:56
// Design Name: 
// Module Name: modulo_ir
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


module modulo_ir(
    input clk,
    input rst,
    inout ir_io,                // Pin de descarga del capacitor y lectura.  
    output descarga,            // Salida para uso interno   
    output [7:0] distancia      // Salida legible desde el procesador
    );
    
    reg [15:0] contador;        // Contador general
    reg leer;                   // Bit que activa la lectura
    reg reg_descarga;           // Registro de descarga
    reg [15:0] cont_ancho;      // Contador para el ancho de pulso de lectura
    reg [15:0] ancho_pulso;     // Registro de ancho de pulso
    reg [7:0] reg_distancia;    // Registro con la distancia medida.
    
    // Inicialización de variables
    initial begin
        contador = 16'b0;
        leer = 1'b0;
        reg_descarga = 1'b0;
        ancho_pulso = 16'b0;
        cont_ancho = 16'b0;
        reg_distancia = 8'b0;
    end
    
    // Triestado para el pin de lectura y descarga
    assign ir_io = (leer) ? 1'bz : descarga; 
    
    always@(posedge clk) begin
        // Reinicio
        if (rst) begin
            contador = 16'b0;
            leer = 1'b0;
            ancho_pulso = 16'b0;
            cont_ancho = 16'b0;
            reg_distancia = 8'b0;
        end
        
        contador = contador + 1;
        
        // Debemos descargar el capacitor por 1.3us cada 655us
        // Para 50MHz, 1 ciclo = 20ns ---> 65 ciclos cada 32750 ciclos
        // Para 100MHz, 1 ciclo = 10ns ---> 130 ciclos cada 65500 cilos
        if (contador < 129) begin
            leer = 0;
            reg_descarga = 1; 
        end else begin
            leer = 1;
            reg_descarga = 0;
            // Obtenemos el ancho de pulso
            if (ir_io) begin
                cont_ancho = cont_ancho + 1;
            end
        end
        // Cerramos el ciclo y procesamos los datos
        if (contador >= 32750) begin
            contador = 16'b0;
            ancho_pulso = cont_ancho;
            cont_ancho = 16'b0;
            reg_distancia = ancho_pulso;
        end
       
    end
    
    // Asignación de las salidas
    assign descarga = reg_descarga;
    assign distancia = reg_distancia;

endmodule
