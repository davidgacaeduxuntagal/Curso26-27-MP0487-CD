// 081-Descompón un número en factores primos. Ej: 60 = 2 x 2 x 3 x 5

Algoritmo Ejercicio081
	Definir num, resto, divisor Como Entero;
	Definir primero Como Logico;
	num = 0;
	Repetir
		Escribir "Dime un número entero mayor que 1: " Sin Saltar;
		Leer num;
	Hasta Que num > 1
	resto = num;
	divisor = 2;
	primero = Verdadero;
	Escribir num, " = " Sin Saltar;
	// Se divide entre cada divisor todas las veces que se pueda
	Mientras resto > 1 Hacer
		Si resto % divisor = 0 Entonces
			Si ~primero Entonces
				Escribir " x " Sin Saltar;
			FinSi
			Escribir divisor Sin Saltar;
			primero = Falso;
			resto = trunc(resto / divisor);
		SiNo
			divisor = divisor + 1;
		FinSi
	FinMientras
	Escribir "";
FinAlgoritmo
