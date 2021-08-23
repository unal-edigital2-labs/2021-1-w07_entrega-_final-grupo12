# MP3

Pare reproducir un audio mientras el robot esta detenido y escaneando lo que tiene alrededor, se utiliza un MP3 DFplayer mini alimentado con la FPGA y conectado a un parlante genérico de 0.5W – 8 Ohm como se muestra en el diagrama:

![image](https://user-images.githubusercontent.com/80898083/129971680-c941b815-ba4d-4dfc-ba22-9a09b923be95.png)

Sin embargo se utilizó la conexión mostrada en la siguiente figura donde se utiliza el pin IO-1 para reporducir el audio guardado en la posición 1 de la memoria SD:

![image](https://user-images.githubusercontent.com/80898083/130477572-ad0b8e81-e7b7-4af0-8f4f-31a64df1ef39.png)


El audio que se quiere reproducir se graba previamente en una memoria micro SD y se pone en el parlante; para controlar el momento en el que se reproduce el sonido se conecta la entrada digital IO_1 del reproductor a un pin de la FPGA, por lo que en el código de Verilog simplemente se utiliza un registro de un bit para poder ser manipulado desde software.

```verilog
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
```

Se utilizó el siguiente código desde software para probar su funcionamiento:

```C
static void mp3_play(void)
{
  mp3_pasar1_write(0);
  delay_ms(200);
  mp3_pasar1_write(1);
  delay_ms(200);
  mp3_pasar1_write(0);
}
```
