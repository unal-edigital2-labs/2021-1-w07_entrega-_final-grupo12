# ULTRASONIDO

Se utilizó el ultrasonido HC-SR04 el cual junto con el módulo PWM permite realizar el mapeo del laberinto calculando la distancia entre el robot y un obstáculo, con esto, el robot sabe que camino está libre y lo toma. 

![image](https://user-images.githubusercontent.com/80898083/129965238-bd84f8e5-46dd-40d6-ac0c-49141b230b51.png)

Imágen tomada del siguiente [Link](https://datasheetspdf.com/pdf-file/1380136/ETC/HC-SR04/1)


## Caja negra 

La caja negra diseñada para este driver es la siguiente.

![image](https://user-images.githubusercontent.com/36159520/130697541-600bd68d-4f57-49e2-bdfb-e8a238cc28f7.png)


Funciona con dos pines, TRIG y ECHO. Cuando el pin del TRIGER recibe un pulso (mayor a 10us) emite varios pulsos; una vez emitidos los pulsos desde TRIG inicia un conteo en el módulo hasta que el pin ECHO los recibe.

![image](https://user-images.githubusercontent.com/80898083/129965440-eaaccf6f-8253-4a91-8e13-50b4082ab2e0.png)

Imagen tomada del siguiente [Link](https://datasheetspdf.com/pdf-file/1380136/ETC/HC-SR04/1)

 
La distancia se calcula con la siguiente fórmula:

                                                      Distancia=Velocidad del sonido*Tiempo*  1/2
                                                      
De esta ecuación se conoce la velocidad del sonido y el tiempo en el que el pin ECHO recibe los pulsos emitidos por TRIG (se divide en 2 pues los pulsos se emiten y rebotan en el obstáculo para luego ser detectados).

Se crearon dos módulos especiales, uno para la detección de los pulsos emitidos por TRIG y el cálculo de la distancia y otro para generar los pulsos en la entrada TRIG (activación del ultra sonido), cada uno con un reloj propio. 

## CONTADOR
	
```verilog
always@(posedge CLKOUT)
	begin
		logico=(count0[7]||count0[6]||count0[5]||count0[4]||count0[3]||count0[2]||count0[1]||count0[0]);
		if(reset)
		begin
			count0=0;
			calculate=0;
			pulse=0;
		end
		//	Da la orden de mandar un pulso
		else
		begin
			if(ENABLE)
			begin
				pulse=1'b1;
			end
			//
			//	Cuenta el rango que tiene el pulso del ECHO del sensor
			//
			if(ECHO)
			begin
				count0=count0+1;
			end
			if(!ECHO && logico)
			begin
				calculate = 1;
			end
		end
	end
	assign count = count0;
```
	
## Generador de pulsos

```verilog
assign trigg=(Doit && ~NoDoit);
	
	initial
	begin
		Doit<=0;
		NoDoit<=0;
	end

	always@(posedge CLKOUT1)
	begin
		if(reset)
		begin
			Doit<=0;
			NoDoit<=0;
		end
		else
		begin
			if(pulse)
			begin
				Doit<=1'b1;
			end
			if(pulse && Doit)
			begin
				NoDoit<=1'b1;
			end
		end
	end
```
 
El resto de módulos encontrados en el bloque principal son divisores de frecuencia hechos para el correcto funcionamiento del ultra sonido.

## Mapa de memoria 

El mapa de memoria para los registros del dirver Ultrasonido es:

![image](https://user-images.githubusercontent.com/36159520/130697740-a45af731-b4e1-4b87-9c36-ccc07d5bc00f.png)

- Ultrasonido_orden: Se usa para iniciar el procesamiento de la distancia, envia al pin de trigger el pulso que necesita para iniciar el ultrasonido. 
- Ultrasonido_done: Se usa para indicar la finalizacion de cada procesamiento que inicia orden.
- Ultrasonido_d: Es el registro donde se guarda la distancia que calcula el ultraonido.


## Test desde sofware en C

Se utilizó el siguiente código desde software para probar el funcionamiento del módulo:

```C
	static int test_us(void){

        int d;
        
		ultrasonido_orden_write(1);
		bool done = false;
		while(!done){
			done = ultrasonido_done_read();
		}
		d=ultrasonido_d_read();
		ultrasonido_orden_write(0);
		return d;
```



