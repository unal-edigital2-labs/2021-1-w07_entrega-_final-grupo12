# INFRARROJO
Este módulo es un Sensor tipo réflex en board diseñado para aplicaciones de detección de contraste y seguimiento de línea, la salida está diseñada para ser leída en forma digital de un Microcontrolador, Arduino o Raspberry.

![image](https://user-images.githubusercontent.com/36159520/130701337-e2df506f-72e2-4a39-9396-c37209a17670.png)


imagen tomada del siguiente [Link](https://cdn.shopify.com/s/files/1/2267/1961/products/QTR_-_1RC_Sensor_de_Linea_Digital_x_2_Piezas_QTR_1RC_Ferretronica_843fd511-3fd1-4b79-b906-37eda81d5580_512x512.jpg?v=1577493854) 

## Principales Características: 
- Voltaje de Operación: 3.3V ~ 5V.
- Consumo de corriente: 25 mA.
- Salida: Digital.
- Distancia óptima de detección: 4 mm.
- Máxima distancia de detección recomendada: 9 mm.
- Dimensiones: 13mm x 8mm.

Este sensor fue usado con el fin de controlar los puntos de movimiento del carro dentro del laberinto y la activación de otros módulos, se realiza la implementación de este 
módulo como un sensor detector de línea negra, esto permite identificar cuando el carro debe seguir en movimiento y cuando debe detenerse para realizar posteriores análisis con 
los módulos de ultrasonido y servomotor, mientras el módulo se encuentre en línea negra avanzan los motores, cuando El módulo QTR-1RC es un sensor de reflectancia, el 
fototransistor utiliza un circuito de descarga capacitiva que permite leer una señal de entrada/Salida digital de un microcontrolador.

![unknown](https://user-images.githubusercontent.com/36159520/130700935-3369f2ae-0f6f-40aa-b7c4-eea4edff88f8.png)


imagen tomada del siguiente [Link](https://a.pololu-files.com/picture/0J631.297.png?ae9455b459ff6470ff8055966838a530) 

La carga y descarga capacitiva proporciona la diferencia de potencial del condensador que pasa de 0 a 1 en determinado tiempo el cual se puede usar para saber a qué distancia se 
encuentra un objeto.

A continuación, procedemos con el código, los pines de entrada y salida y los registros internos donde podemos encontrar una breve descripción de cada pIn de entrada y salida:

```verilog
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
```   

El pin ir_io, es de entrada debido a que manda la señal a capacitor para su descarga y de entrada para realizar la lectura del sensor, sus valores se conectan al reloj interno 
de la FPGA con la función de reset estos valores se guardan en memoria para usarlo en otros módulos o en el software de control, su salida y entrada se conecta por fuera del Soc.

En este fragmento podemos observar el uso del reset para realizar la inicialización de los registros, contadores y lectura.

```verilog
 if (rst) begin
            contador = 16'b0;
            leer = 1'b0;
            ancho_pulso = 16'b0;
            cont_ancho = 16'b0;
            reg_distancia = 8'b0;
        end
```
Al pasar 130 ciclos se cambia el estado de leer a 1 para pasar de estado de salida a entrada, para este momento el condensador estará descargado y con el cambio de estado se
inicia la carga y el valor de ir_io pasa de 0 a 1.
```verilog
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
 ```
Luego de finalizar el ciclo el valor de los contadores es reiniciado a 0 así mismo los valores del ancho del pulso son guardados en registro para ser enviados 
posteriormente en la memoria.

El siguiente código que se puede encontrar en el main.c para hacer la prueba del modulo IR, este modulo al ser digital mostrará un valor muy grande en binario 
con los leds de la fpga cuando detecte negro y un valor pequeño cuando detecta blanco o otro color.
```C
static void test_ir(void){
	while(!(buttons_in_read()&1)) {
		leds_out_write(infrarrojo_cntrl_distancia_read());
		delay_ms(50);
		}
}
```
 
 
 
