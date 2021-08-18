# MOTOR

Con el fin de controlar el movimiento del robot se utilizaron dos motores DC conectados a las ruedas delanteras y una rueda trasera independiente con un rodamiento como se muestra en las imagenenes:

##### Ruedas delanteras                                                                                  
![image](https://user-images.githubusercontent.com/80898083/129971973-c1820080-d68b-456d-ac6a-7b34604f678b.png) 

##### Ruedas traseras 
![image](https://user-images.githubusercontent.com/80898083/129972025-6378d064-21f8-46b8-94fa-1fdde8814370.png)

Para poder controlar los motores DC y aumentar la potencia con la que trabajan se utiliza el controlador L298N, el cual se conecta a la FPGA siguiendo el siguiente diagrama:

![image](https://user-images.githubusercontent.com/80898083/129972359-bf668713-1e34-4258-84e7-09dbf1d84347.png)


En las salidas A y B se conectan los dos motores, los cuales funcionaran con el voltaje de la fuente Vin que se conecte. P ara el control digital se debe tener una tierra común entre la FPGA y la fuente y enviar un uno o cero lógicos en las entradas IN1 a IN4, por lo que la entrada digital será de 4 Bits. Estos bits se programan en Verilog como un registro igualado a la salida.

Este registro se utiliza desde software para controlar el movimiento de la siguiente manera:
