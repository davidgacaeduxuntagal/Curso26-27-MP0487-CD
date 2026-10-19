// 042-Calcula y muestra por pantalla los factoriales de los números del 10 al 1.

Algoritmo Ejercicio042
	Definir n, i, factorial Como Entero;
	n = 0;
	i = 0;
	factorial = 0;
	Para n = 10 Hasta 1 Con Paso -1 Hacer
		factorial = 1;
		Para i = 2 Hasta n Con Paso 1 Hacer
			factorial = factorial * i;
		FinPara
		Escribir n, "! = ", factorial;
	FinPara
FinAlgoritmo
