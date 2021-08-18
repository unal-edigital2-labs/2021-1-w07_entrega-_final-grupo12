# PWM

Para orientar el ultrasonido y la cámara en las direcciones que se requiere, se utiliza un servomotor MG90S alimentado mediante la FPGA.


![image](https://user-images.githubusercontent.com/80898083/129970920-19c28b06-f383-48fb-a5ca-b65e47f02703.png)

La salida del pin de datos (PWM) requiere de ciertas condiciones en la señal de entrada, las cuales se programan en el modulo PWM del Verilog, se hace inicialmente un divisor de frecuencia para disminuir la frecuencia de reloj de la FPGA a la que se pide en el datasheet del servomotor.

```verilog
module DivFreqPWM#( 
parameter top=12'h9C4) //100M/20k =5k -> top = 12'h9C4 (para que nuestro clock sea de 20khz) 
					   // 50M/20k = 2.5k -> top = 12'h4E6
    (input clkin,
    output reg clkout
    );
    reg [12:0] count_D;
	
	initial
	begin
		clkout=1'b1;
		count_D=0;
	end
	
	always @(posedge clkin) 
	begin
		count_D <= count_D + 1;
		if(count_D == top-1)
		begin
			count_D<=0;
			clkout <= ~clkout;
		end
	end
endmodule
```


Después de esto se realiza la modulación de pulsos mediante un contador y una maquina de estados para establecer la salida dependiendo del valor del registro orden.

![image](https://user-images.githubusercontent.com/80898083/129971042-585ece5f-87f5-46d3-b024-47dd88db6a07.png)


Este registro se utiliza desde software para girar el servomotor a la derecha, izquierda y delante de la siguiente manera:


|Valor del registro |	Movimiento realizado |
|---|---|
|100 |	Servomotor en 90 grados (mirando al frente) |
|101 |	Servomotor en 180 grados (mirando a la derecha)| 
|110 |	Servomotor en 0 grados (mirando a la izquierda)|

Se realiza la prueba del modulo del servomotor en litex con el siguiente fragmento encontrado en el main.c

```C
static void pwm_test(void)
{  
        printf("Test del pwm... se interrumpe con el botton 1\n");
        while(!(buttons_in_read()&1)) {
        //pwm_cntrl_orden_write(4);
	//delay_ms(3000);
	pwm_cntrl_orden_write(5);
	delay_ms(3000);
	pwm_cntrl_orden_write(4);
	delay_ms(3000);
	pwm_cntrl_orden_write(6);
	delay_ms(3000);
	pwm_cntrl_orden_write(4);
	delay_ms(3000);
	
	}
}
```
