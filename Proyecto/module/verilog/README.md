# Otros

En esta sección se muestran la caja negra y el mapa de memoria de los módulos UART, TIMER y GPIO ya que están integrados en el procesador y no se hizo una construcción desde Verilog.

# UART 

 ### CAJA NEGRA
 La caja negra de la UART es:
 
 ![image](https://user-images.githubusercontent.com/80898083/130701952-da9730d7-f479-46bb-b707-29ea1ed0e0a7.png)

 ### MAPA DE MEMORIA 
El mapa de memoria de los registros de la UART es:

 ![image](https://user-images.githubusercontent.com/80898083/130701840-7bb0fc25-1511-4980-b5dd-6d7d637ea5e3.png)
 
# GPIO

### CAJA NEGRA
La caja negra del GPIO es :

![image](https://user-images.githubusercontent.com/80898083/130836425-ac8eb35e-ba8a-4e48-9282-5fe218937042.png)

## MAPA DE MEMORIA 

Los Leds y los Botones (integrados por defecto) funcionan con el GPIO, por tanto el mapa de memoria de los registros del GPIO es: 

![image](https://user-images.githubusercontent.com/80898083/130702257-3366da7c-d603-4111-b257-f2db393c3ec7.png)

- leds_out: Se utiliza para encender los leds de la FPGA.
- buttons_in: Se utiliza para leer si hay accionamiento de un botón de la FPGA.

# TIMER

### CAJA NEGRA
La caja negra del TIMER es :

![image](https://user-images.githubusercontent.com/80898083/130702724-56da995d-e6e8-44ea-ad72-ae590e98268e.png)


## MAPA DE MEMORIA 
El mapa de memoria de los registros del TIMER es: 

![image](https://user-images.githubusercontent.com/80898083/130702759-ca39539c-cd75-4343-a9cd-1940bf063885.png)

En el main se utiliza la función ***delay*** con frecuencia.


 

