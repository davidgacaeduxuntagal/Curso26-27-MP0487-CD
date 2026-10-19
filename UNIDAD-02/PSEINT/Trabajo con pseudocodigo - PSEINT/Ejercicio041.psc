// 041-Escribe por pantalla las tablas de multiplicar, del 1 al 10.

Algoritmo Ejercicio041
	Definir tabla, i Como Entero;
	tabla = 0;
	i = 0;
	Para tabla = 1 Hasta 10 Con Paso 1 Hacer
		Escribir "TABLA DEL ", tabla;
		Para i = 1 Hasta 10 Con Paso 1 Hacer
			Escribir tabla, " x ", i, " = ", tabla * i;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
