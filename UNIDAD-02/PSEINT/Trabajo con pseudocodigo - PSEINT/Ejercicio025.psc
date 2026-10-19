// 025-Calcula cuántos dígitos tiene un número.

Algoritmo Ejercicio025
	Definir num, aux, digitos Como Entero;
	num = 0;
	digitos = 0;
	Escribir "Dime un número entero: " Sin Saltar;
	Leer num;
	aux = abs(num);
	// Cada división entera entre 10 "quita" un dígito. El 0 tiene un dígito.
	Repetir
		aux = trunc(aux / 10);
		digitos = digitos + 1;
	Hasta Que aux = 0
	Escribir "El número ", num, " tiene ", digitos, " dígito(s)";
FinAlgoritmo
