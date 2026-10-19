// 034-Calcula el factorial de un número dado. Ejemplo: 5! = 5x4x3x2x1

Algoritmo Ejercicio034
	Definir n, i, factorial Como Entero;
	n = 0;
	i = 0;
	factorial = 1;
	Repetir
		Escribir "Dime un número entero no negativo: " Sin Saltar;
		Leer n;
	Hasta Que n >= 0
	// 0! = 1, por eso empezamos con factorial = 1
	Para i = 2 Hasta n Con Paso 1 Hacer
		factorial = factorial * i;
	FinPara
	Escribir n, "! = ", factorial;
FinAlgoritmo
