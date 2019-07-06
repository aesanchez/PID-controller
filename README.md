# Simulacion de controlador PID

Trabajo con el objetivo de diseñar y simular un controlador PID para una planta hipotetica, desarrollado sobre  Matlab y Simulink.

### Diagrama

El diagrama simulado es el siguiente, en el que posteriormente se calibraron las ganancias del controlador PID.

![PID](https://github.com/trorik23/PID-controller/blob/master/img/PID.png)

### Método de la curva de reacción de Ziegler-Nichols

Las ganancias proporcional, integral y derivativa se obtienen analizando la respuesta del sistema
en lazo abierto de una señal escalón. A partir de la respuesta se buscan los parámetros de la constante de tiempo
y el tiempo de retardo respectivamente. Estos parámetros se calculan
dibujando una recta tangente a la curva de la respuesta al escalón.

Se realizó un script de Matlab que realiza el cálculo de la derivada de la respuesta al escalón
para calcular la recta tangente correspondiente. Los resultados se pueden ver a continuacion donde se presenta
la respuesta al escalón (azul), su derivada (rojo) y su tangente (verde).

![analisis](https://github.com/trorik23/PID-controller/blob/master/img/analisis.png)

En base a la tangente maxima y las formulas correspondientes, se obtienen valores iniciales de ganancias:
* Kp = 39.7
* Ki = 220.6
* Kd = 1.79

La salida posee la forma que se ve a continuacion donde la respuesta de lazo cerrado al escalon se presenta en azul.
Posteriormente se analizaron diferentes combinaciones para mejorar al sistema.

![salida](https://github.com/trorik23/PID-controller/blob/master/img/salida.png)
