# ULTRASONIDO

Se utilizó el ultrasonido HC-SR04 el cual junto con el módulo PWM permite realizar el mapeo del laberinto calculando la distancia entre el robot y un obstáculo, con esto, el robot sabe que camino está libre y lo toma. 
![image](https://user-images.githubusercontent.com/80898083/129965238-bd84f8e5-46dd-40d6-ac0c-49141b230b51.png)

Funciona con dos pines, TRIG y ECHO. Cuando el pin del TRIGER recibe un pulso (mayor a 10us) emite varios pulsos; una vez emitidos los pulsos desde TRIG inicia un conteo en el módulo hasta que el pin ECHO los recibe.
![image](https://user-images.githubusercontent.com/80898083/129965440-eaaccf6f-8253-4a91-8e13-50b4082ab2e0.png)

 
La distancia se calcula con la siguiente fórmula:

                                                      Distancia=Velocidad del sonido*Tiempo*  1/2
                                                      
De esta ecuación se conoce la velocidad del sonido y el tiempo en el que el pin ECHO recibe los pulsos emitidos por TRIG (se divide en 2 pues los pulsos se emiten y rebotan en el obstáculo para luego ser detectados).

Se crearon dos módulos especiales, uno para la detección de los pulsos emitidos por TRIG y el cálculo de la distancia y otro para generar los pulsos en la entrada TRIG (activación del ultra sonido), cada uno con un reloj propio. 

---------------------------------------CODIGO DE LOS MODULOS CONTADOR Y GENPULSOS--------------------
El resto de módulos encontrados en el bloque principal son divisores de frecuencia hechos para el correcto funcionamiento del ultra sonido.
--------------------------------------------CODIGO BLOQUE PRINCIPAL-------------------------------------------------
Se utilizó el siguiente código para probar el funcionamiento del periférico:
--------------------------------------------------CODIGO EN EL MAIN DEL US--------------------------------------------

