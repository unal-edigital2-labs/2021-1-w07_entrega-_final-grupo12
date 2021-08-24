# MP3

Pare reproducir un audio mientras el robot esta detenido y escaneando lo que tiene alrededor, se utiliza un MP3 DFplayer mini alimentado con la FPGA y conectado a un parlante genérico de 0.5W – 8 Ohm como se muestra en el diagrama:

![image](https://user-images.githubusercontent.com/80898083/129971680-c941b815-ba4d-4dfc-ba22-9a09b923be95.png)

Imágen tomada del siguiente [Link](https://picaxe.com/docs/spe033.pdf)

Sin embargo se utilizó la conexión mostrada en la siguiente figura donde se utiliza el pin IO-1 para reporducir el audio guardado en la posición 1 de la memoria SD:

![image](https://user-images.githubusercontent.com/80898083/130477572-ad0b8e81-e7b7-4af0-8f4f-31a64df1ef39.png)

Imágen tomada del siguiente [Link](https://picaxe.com/docs/spe033.pdf)

## Caja negra
La caja negra diseñada para este driver es la siguiente.

![image](https://user-images.githubusercontent.com/36159520/130696271-0c9c7582-3117-4087-be8e-779dc07d3902.png)

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
## Mapa de memoria 
Se hace uso del registro mp3_pasar1.

![image](https://user-images.githubusercontent.com/36159520/130696305-8c8d9793-bd60-4c09-bb00-bbf15b042434.png)

Como se puede observar constantemente se esta enviando los 3.3V por el registro pasar1 lo que equivale a un 1 logico para evitar que en pin IO_1 se vaya a tierra, una vez se manda por el pin un 0 logico, lo que equivale a tierra, realizara el cambio de cancion que hay en la tarjeta SD o lo que equivale a reprodicir el audio que esta en esa memoria.

## Test de sofware en C.
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
