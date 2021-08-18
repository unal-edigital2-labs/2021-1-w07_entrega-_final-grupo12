# W07_Entrega-_final
Integrantes: 

-Juan Esteban Bustos

-Jhian Emmanuel Ramos

-Camilo Andres Jaimes Reyes

-Julian Enrique Tovar Aranguren

# Introducción

En el presente repositorio se encuentra la documentación del proyecto propuesto en la asignatura Electrónica Digital II, 2021-1. Se trata de un robot controlado mediante una FPGA el cual sigue un camino(línea) de color negro y se detiene periódicamente para inspeccionar los muros que se encuentran su alrededor, según los resultados después de escanear los muros, el robot toma la decisión que se necesita para el movimiento a través del laberinto.

![image](https://user-images.githubusercontent.com/80898083/129450137-a25cf210-a061-4db9-8955-82f0634982c0.png)


# [Módulos](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog)

En esta sección se encuentran los archivos de Phyton que integran los módulos en Litex. Además hay un listado con los módulos trabajados en el proyecto a los cuales podrá darle click para ser dirigido a los archivos de Verilog respectivamente.

- [Cámara](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/Camara#configuración)
- [Ir](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/Infrarrojo/InfrafSeguidor#infrarrojo)
- [UltraSonido](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/UltraSonido/Ultrasonido#ultrasonido)
- [PWM](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/Servomotor/PWM#pwm)
- [Motores](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/Motor#motor)
- [Mp3](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/tree/main/Proyecto/module/verilog/MP3#mp3)

# [Firmware](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/blob/main/Proyecto/firmware/main.c)

En esta sección se encuentra el código en [C](https://github.com/unal-edigital2/w07_entrega-_final-grupo12/blob/main/Proyecto/firmware/main.c) implementado por software para el correcto funcionamiento de los módulos integrados, los test de cada uno y dos videos del [Robot](https://drive.google.com/drive/folders/1Hh_13-JmLhdWhKrUaU3uM7BEDILhJfw-?usp=sharing) funcionando.

# Videos del funcionamiento 
En esta sección encontrara los videos del fucionamiento de cada modulo y de su funcionamiento en el laberinto.

- [Cámara]().
- [Ir](https://drive.google.com/file/d/1dV9SI1r8zqdS_Ni_v4smj4hE9Wnl74uQ/view?usp=sharing).
- [UltraSonido](https://drive.google.com/file/d/14NFNhAlaI67s44ADbqtb7LwVWNmsmIAM/view?usp=sharing).
- [PWM](https://drive.google.com/file/d/1iuK0drKznQKG5YPt6Kx4SLeGOcFT8geJ/view?usp=sharing).
- [Motores](https://drive.google.com/file/d/1g023qtCN4vmJmZh7jRD3i76XGNkPFGcU/view?usp=sharing).
- [Mp3](https://drive.google.com/file/d/1ti8UWqYfkx0ukT2T8rq3f_QlsviyVKIb/view?usp=sharing).


