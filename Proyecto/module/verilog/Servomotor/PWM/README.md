# PWM

Para orientar el ultrasonido y la cámara en las direcciones que se requiere, se utiliza un servomotor MG90S alimentado mediante la FPGA.


![image](https://user-images.githubusercontent.com/80898083/129970920-19c28b06-f383-48fb-a5ca-b65e47f02703.png)

La salida del pin de datos (PWM) requiere de ciertas condiciones en la señal de entrada, las cuales se programan en el modulo PWM del Verilog, se hace inicialmente un divisor de frecuencia para disminuir la frecuencia de reloj de la FPGA a la que se pide en el datasheet del servomotor.


Después de esto se realiza la modulación de pulsos mediante un contador y una maquina de estados para establecer la salida dependiendo del valor del registro orden.

![image](https://user-images.githubusercontent.com/80898083/129971042-585ece5f-87f5-46d3-b024-47dd88db6a07.png)


Este registro se utiliza desde software para girar el servomotor a la derecha, izquierda y delante de la siguiente manera:


|Valor del registro |	Movimiento realizado |
|---|---|
|100 |	Servomotor en 90 grados (mirando al frente) |
|101 |	Servomotor en 180 grados (mirando a la derecha)| 
|110 |	Servomotor en 0 grados (mirando a la izquierda)|

