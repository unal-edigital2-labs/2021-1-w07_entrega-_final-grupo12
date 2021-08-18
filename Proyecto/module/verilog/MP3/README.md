# MP#

Pare reproducir un audio mientras el robot esta detenido y escaneando lo que tiene alrededor, se utiliza un MP3 DFplayer mini alimentado con la FPGA y conectado a un parlante genérico de 0.5W – 8 Ohm como se muestra en el diagrama:

![image](https://user-images.githubusercontent.com/80898083/129971680-c941b815-ba4d-4dfc-ba22-9a09b923be95.png)

El audio que se quiere reproducir se graba previamente en una memoria micro SD y se pone en el parlante; para controlar el momento en el que se reproduce el sonido se conecta la entrada digital IO_1 del reproductor a un pin de la FPGA, por lo que en el código de Verilog simplemente se utiliza un registro de un bit para poder ser manipulado desde software.


Se utilizó el siguiente código para probar su funcionamiento:

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
