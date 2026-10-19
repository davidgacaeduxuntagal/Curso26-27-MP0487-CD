// 040-Calcula el MCD de dos números dados. (Algoritmo de Euclides)

Algoritmo Ejercicio040
	Definir a, b, resto Como Entero;
	a = 0;
	b = 0;
	resto = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer a;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer b;
	Escribir "El MCD de ", a, " y ", b, " es: " Sin Saltar;
	a = abs(a);
	b = abs(b);
	// mcd(a, b) = mcd(b, a % b) hasta que el resto sea 0
	Mientras b <> 0 Hacer
		resto = a % b;
		a = b;
		b = resto;
	FinMientras
	Escribir a;
FinAlgoritmo
