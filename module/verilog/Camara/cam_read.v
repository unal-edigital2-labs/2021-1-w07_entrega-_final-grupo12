`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:14:22 12/02/2019 
// Design Name: 
// Module Name:    cam_read 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module cam_read #(
		parameter AW = 17 // Cantidad de bits  de la dirección 
		)(
		input pclk,
		input vsync,
		input href,
		input [7:0] px_data,
        input enable,
		output reg[AW-1:0] mem_px_addr,
		output reg[7:0]  mem_px_data,
		output reg px_wr
   );
	
	

/********************************************************************************
Por favor colocar en este archivo el desarrollo realizado por el grupo para la 
captura de datos de la camara 
debe tener en cuenta el nombre de las entradas  y salidad propuestas 
********************************************************************************/
reg [1:0]cs=0;// Actúa como el contador de case (para establecer los casos)
reg ovsync;// Utilizado para guardar el valor pasado de Vsync
reg bp=1'b0;
always @ (posedge pclk) begin// sentencias que se llevan a cabo siempre y cuando pclk se encuentre en un flanco de subida

    if(enable)begin
	case (cs)//inicio de la máquina de estados
	0: begin// estado 0 de la máquina de estados cs=00
		if(ovsync && vsync)begin//rápidamente ovsync ha tomado el primer valor de vsync y procedemos a compararlos, con && garantizamos una comparación de tipo AND
		cs=1;// si ovsync y !vsync =1 entonces procedemos a pasar al case 1
		mem_px_addr=0;//iniciamos en la posición de memoria 0
		end
	end
	1: begin// primer estado, cs=01, en este caso hacemos la captura de los datos y procedemos a convertirlos a RGB 332
		px_wr=0;// indicamos que aún no escribimos en la memoria
		if (href) begin//debemos asegurar que href se encuentre en flanco de subida para hacer el proceso
/****************************************************************
 En esta parte tomamos los datos más significativo de R(rojo) y V (Verde)
 del primer byte que vienen en formato 565(RGB) y lo guardamos en formato   
 332(RGB)         
******************************************************************/
				mem_px_data[8]=px_data[7];          
				mem_px_data[7]=px_data[6];             
				mem_px_data[6]=px_data[5];                 
				mem_px_data[5]=px_data[2];              
				mem_px_data[4]=px_data[1];         
				mem_px_data[3]=px_data[0];
				cs=2;// Después de tomar los datos más significativos pasamos al estado 2 
		end
	end
	2: begin// Estado 2, en este estado procedemos a tomar los datos del color azul(B) que vienen en formato 565 RGB y se pasa a 332 RGB
				mem_px_data[2]=px_data[2];
				mem_px_data[1]=px_data[4];
				mem_px_data[0]=px_data[3];
			 	px_wr=1;//Procedemos a escribir en memoria
				mem_px_addr=mem_px_addr+1;//Nos desplazamos a la siguiente dirección de memoria
				cs=1;//Posteriormente volvemos al estado 1 de la máquina de estados 
		if(vsync) begin// Con este condicional analizamos si vsync está en un flanco de subida volvemos al estado 0
		cs=0;//volvemos al estado 0 de nuestra máquina de estados
		end		
		if (mem_px_addr==19200) begin//Limitador de memoria
			mem_px_addr=0;// Si la memoria  llega  a la posición de  19200 píxeles, debe volver a la posición 0 nuevamente
			cs=0;//Nos devolvemos al estado 0 a evaluar vsync
		end
		end
endcase
	ovsync<=vsync;// Se usa para que recurrentemente ovsync tome el valor pasado de vsync
end
else begin
mem_px_data = 0;
mem_px_addr = 0;
end 
end
endmodule
