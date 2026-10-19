// 036-Averigua si un número es primo. (Divisible entre 1 y sí mismo solamente).

Algoritmo Ejercicio036
	Definir n, divisor Como Entero;
	Definir esPrimo Como Logico;
	n = 0;
	Escribir "Dime un número natural: " Sin Saltar;
	Leer n;
	// 0 y 1 no son primos
	esPrimo = n > 1;
	divisor = 2;
	// Basta con probar divisores hasta la raíz cuadrada de n
	Mientras esPrimo & divisor * divisor <= n Hacer
		Si n % divisor = 0 Entonces
			esPrimo = Falso;
		FinSi
		divisor = divisor + 1;
	FinMientras
	Si esPrimo Entonces
		Escribir n, " es primo";
	SiNo
		Escribir n, " NO es primo";
	FinSi
FinAlgoritmo
