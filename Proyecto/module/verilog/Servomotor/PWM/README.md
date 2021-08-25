# PWM

Para orientar el ultrasonido y la cámara en las direcciones que se requiere, se utiliza un servomotor MG90S alimentado mediante la FPGA.


![image](https://user-images.githubusercontent.com/80898083/129970920-19c28b06-f383-48fb-a5ca-b65e47f02703.png)

Imágen tomada del siguiente [Link](https://pdf1.alldatasheet.com/datasheet-pdf/view/1132104/ETC2/MG90S.html)

## Caja negra 

La caja negra diseñada para este modulo es la siguiente 

![image](https://user-images.githubusercontent.com/36159520/130699975-457cc9f3-384e-4156-86f8-49b7f92bbb14.png)

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



```verilog
 if(ENABLE==1)
  begin  
        contador<=contador+1;
    
  
        if(grados==2'b00) begin
         ancho<=30; end               //numero de ciclos de reloj para hacer 1.5ms
        else if(grados==2'b01) begin
         ancho<=50; end                //numero de ciclos de reloj para hacer 2ms
        else if(grados==2'b10) begin
         ancho<=10; end                //numero de ciclos de reloj para hacer 1ms
        else begin
         ancho<=30; end 
         
        //Creación del pulso modulado      
        if(contador<ancho) begin 
        pwm<=1; end
        else if(contador>=ancho) begin
        pwm<=0; end 
        else  begin
        pwm<=0; end
    
        if(contador>=top-1)begin 
        contador<=0; end
                                                       
  end
```
![image](https://user-images.githubusercontent.com/80898083/129971042-585ece5f-87f5-46d3-b024-47dd88db6a07.png)


Imágen tomada del siguiente [Link](https://dronprofesional.com/blog/tutorial-teorico-practico-con-servos-y-arduino/)

## Mapa de memoria

El mapa de memoria para los registros del driver PWM es:

![image](https://user-images.githubusercontent.com/36159520/130700183-7ab1a77f-cd49-4279-b9b7-fa6a586ccb7a.png)

- Este registro se utiliza desde software para girar el servomotor a la derecha, izquierda y delante de la siguiente manera:


|Valor del registro |	Movimiento realizado |
|---|---|
|100 |	Servomotor en 90 grados (mirando al frente) |
|101 |	Servomotor en 180 grados (mirando a la derecha)| 
|110 |	Servomotor en 0 grados (mirando a la izquierda)|




## Test desde sofware en C

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
