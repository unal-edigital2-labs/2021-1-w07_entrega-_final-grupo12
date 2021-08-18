# CONFIGURACIÓN

La configuración se realizó mediante el archivo “OV7670_SETUP_i2c.ino” donde se establece el formato que envía la cámara.

```C++
void set_cam_RGB444_QCIF(){
   
  OV7670_write(0x12, 0x80);

  delay(100);
 
 OV7670_write(0x12, 0x0C);  //COM7: Set QCIF and RGB
 OV7670_write(0x11, 0xC0);       //CLKR: Set internal clock to use external clock
 OV7670_write(0x0C, 0x08);       //COM3: Enable Scaler
 OV7670_write(0x3E, 0x00);
 OV7670_write(0x40,0xD0);      //COM15: Set RGB
 OV7670_write(0x8C,0x02);      // Set RGB 444

 //Color Bar
 //OV7670_write(0x42, 0x08); 
 //OV7670_write(0x12, 0x0E);


 OV7670_write(0x3A,0x04);
 OV7670_write(0x14,0x18); // control de ganancia 

 OV7670_write(0x1E,0x18); // control de ganancia 

 OV7670_write(0x17,0x14);  //cambia hstart
 OV7670_write(0x18,0x02);  // cambia hstop
 OV7670_write(0x32,0x80);  // href deja el valor qye  viene por default
 OV7670_write(0x19,0x03);  // vref start
 OV7670_write(0x1A,0x7B);  // vref stop
 OV7670_write(0x03,0x0A);  // cambia vref

 
 OV7670_write(0x33,0x0B);  //
 OV7670_write(0x69,0x00);   // abajo
 OV7670_write(0xB1,0x0C);  
 OV7670_write(0xB2, 0x0E);
 OV7670_write(0xB3,0x80);    
 
}
```

# Señales de entrada

Los datos de entrada son las señales necesarias para el funcionamiento junto con las conexiones de la cámara.

```verilog
    input  clk,           	// Board clock: 100 MHz Nexys4DDR.
    input  rst,	 	// Reset button. Externo	
    input  CAM_pclk,		// Sennal PCLK de la camara. 
		input  CAM_href,		// Sennal HREF de la camara. 
		input  CAM_vsync,		// Sennal VSYNC de la camara.
		input  [7:0]CAM_px_data,
		
		// Mapa de memoria
			// salidas
		input init_procesamiento
```

# Captura de datos

Se utilizó el módulo “cam_read” para la captura y escritura de datos en memoria.

```verilog
 case (status)
         INIT:begin 
             if(~CAM_vsync&CAM_href)begin // cuando la señal vsync negada y href son, se empieza con la escritura de los datos en memoria.
                 status<=BYTE2;
                 DP_RAM_data_in[11:8]<=CAM_px_data[3:0]; //se asignan los 4 bits menos significativos de la información que da la camara a los 4 bits mas significativos del dato a escribir
             end
             else begin
                 DP_RAM_data_in<=0;
                 DP_RAM_addr_in<=0;
                 DP_RAM_regW<=0;
             end 
         end
         
         BYTE1:begin
             DP_RAM_regW<=0; 					//Desactiva la escritura en memoria 
             if(CAM_href)begin					//si la señal Href esta arriva, evalua si ya llego a la ultima posicion en memoria
                     if(DP_RAM_addr_in==imaSiz) DP_RAM_addr_in<=0;			//Si ya llego al final, reinicia la posición en memoria. 
                     else DP_RAM_addr_in<=DP_RAM_addr_in+1;	//Si aun no ha llegado a la ultima posición sigue recorriendo los espacios en memoria y luego escribe en ellos cuan do pasa al estado Byte2
                 DP_RAM_data_in[11:8]<=CAM_px_data[3:0];
                 status<=BYTE2;
             end
             else status<=NOTHING;   
         end
         
         BYTE2:begin							//En este estado se habilita la escritura en memoria
             	DP_RAM_data_in[7:0]<=CAM_px_data;
             	DP_RAM_regW<=1;    
             	status<=BYTE1;
         end
         
         NOTHING:begin						// es un estado de trnsición    
             if(CAM_href)begin					// verifica la señal href y se asigna los 4 bits mas significativos y se mueve una posición en memoria
                 status<=BYTE2;
                 DP_RAM_data_in[11:8]<=CAM_px_data[3:0];
                 DP_RAM_addr_in<=DP_RAM_addr_in+1;
             end
             else if (CAM_vsync) status<=INIT;		// Si vsync esta arriba inicializa la maquina de estados    
         end
         
         default: status<=INIT;
    endcase
   ```
# BUFFER RAM: 
Este módulo se utilizó para la creación de la memoria de la cámara teniendo en cuenta las dimensiones de la imagen que se deseaba (160x120 pixeles) y el formato RGB 444, esto quiere decir que la memoria fue hecha para registrar 12 bits por cada dirección de memoria, por lo tanto se necesitan como mínimo 19200 direcciones.
   ```verilog
   // Escritura  de la memoria port 1.
always @(posedge clk_w) begin
       if (regwrite == 1)
// Escribe los datos de entrada en la direcciÃ³n que addr_in se lo indique.
             ram[addr_in] <= data_in;
end

// Lectura  de la memoria port 2.
always @(posedge clk_r) begin
// Se leen los datos de las direcciones addr_out y se sacan en data_out.
		data_out <= ram[addr_out];
end


always @(proc_addr_in) begin
proc_data_in<=ram[proc_addr_in];
end


initial begin
// Lee en hexadecimal (readmemb lee en binario) dentro de ram [1, pÃ¡g 217].
	$readmemh(imageFILE, ram);
	// En la posición n+1 (160*120) se guarda el color negro
	ram[imaSiz] = 12'h0;
	ram[15'hffff] = 12'h0; // Necesario par el procesamiento
end
   ```


En el módulo "procesamiento" se procesa la información almacenada en la memoria para determinar el color y la forma del objeto.

# Señales de salida

Las señales de salida son la del módulo VGA para mostrar la imagen de la cámara en pantalla y los registros figura y color. 

   ```verilog
		output  VGA_Hsync_n,  // Horizontal sync output.
		output  VGA_Vsync_n,  // Vertical sync output.
		output  [3:0] VGA_R,  // 4-bit VGA red output.
		output  [3:0] VGA_G,  // 4-bit VGA green output.
		output  [3:0] VGA_B,  // 4-bit VGA blue output.



		output  CAM_xclk,		// System  clock input de la cï¿½mara.
		output  CAM_pwdn,		// Power down mode.
    output [1:0] color, // 1: Rojo, 2:Green, 3:Blue
		output [1:0] figure, // 1: Triángulo, 2: Círculo, 3: cuadrado
		output    done,
    
    ```
