# MOTOR

Con el fin de controlar el movimiento del robot se utilizaron dos motores DC conectados a las ruedas delanteras y una rueda trasera independiente con un rodamiento como se muestra en las imagenenes:

##### Ruedas delanteras                                                                                  
![image](https://user-images.githubusercontent.com/80898083/129971973-c1820080-d68b-456d-ac6a-7b34604f678b.png) 

##### Ruedas traseras 
![image](https://user-images.githubusercontent.com/80898083/129972025-6378d064-21f8-46b8-94fa-1fdde8814370.png)

Para poder controlar los motores DC y aumentar la potencia con la que trabajan se utiliza el controlador L298N, el cual se conecta a la FPGA siguiendo el siguiente diagrama:

![image](https://user-images.githubusercontent.com/80898083/129972359-bf668713-1e34-4258-84e7-09dbf1d84347.png)


En las salidas A y B se conectan los dos motores, los cuales funcionaran con el voltaje de la fuente Vin que se conecte. P ara el control digital se debe tener una tierra común entre la FPGA y la fuente y enviar un uno o cero lógicos en las entradas IN1 a IN4, por lo que la entrada digital será de 4 Bits. Estos bits se programan en Verilog como un registro igualado a la salida.
```verilog
module motores(

input clk,
input  [3:0]entrada, 
output reg [3:0]salida

    );       
    
always @ (posedge clk)  begin    
salida=entrada;
end

endmodule
```

Este registro se utiliza desde software para controlar el movimiento de la siguiente manera:

|Valor del registro| 	Movimiento realizado |
|---|---|
|0000 | No hay giro en ningún motor (Detenido) |
|0011 |	Hay giro horario en ambos motores (Movimiento hacia adelante) |
|0101 | Motor izquierdo antihorario, motor derecho horario (Giro a la izquierda) |
|1010 |	Motor derecho antihorario, motor izquierdo horario (Giro a la derecha) |
|1100 | Hay giro antihorario en ambos motores (Movimiento hacia atrás) |

Se utilizó el siguiente código para probar su funcionamiento:

```C
static void motor_test(void)
{
    printf("Test del motor... se interrumpe con el botton 1\n");
        while(!(buttons_in_read()&1)) {
	motor_entrada_write(10); // 1 derecha adelante
	delay_ms(790);
	motor_entrada_write(0); //2 izquierda adelante
	delay_ms(700);
	motor_entrada_write(5); // 4 izquierda atras
	delay_ms(810);
	motor_entrada_write(0); //8 derecha atras
	delay_ms(500);
	
	}
}
```
