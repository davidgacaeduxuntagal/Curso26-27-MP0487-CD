// 064-Crea un subproceso que escriba la tabla de multiplicar del número que se le
// indique. Posteriormente aprovecha ese subproceso para escribir las tablas del 1 al 10.

Funcion TablaMultiplicar(n)
	Definir i Como Entero;
	Escribir "TABLA DEL ", n;
	Para i = 1 Hasta 10 Con Paso 1 Hacer
		Escribir n, " x ", i, " = ", n * i;
	FinPara
	Escribir "";
FinFuncion

Algoritmo Ejercicio064
	Definir tabla Como Entero;
	tabla = 0;
	Para tabla = 1 Hasta 10 Con Paso 1 Hacer
		TablaMultiplicar(tabla);
	FinPara
FinAlgoritmo
