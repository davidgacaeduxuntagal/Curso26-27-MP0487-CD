// 039-Averigua si un número es perfecto (número positivo que es igual a la suma de
// sus divisores positivos). NOTA: no se cuenta a él mismo como divisor.
// Ej: 6 = 1 + 2 + 3; 28 = 1 + 2 + 4 + 7 + 14

Algoritmo Ejercicio039
	Definir n, i, suma Como Entero;
	n = 0;
	i = 0;
	suma = 0;
	Escribir "Dime un número positivo: " Sin Saltar;
	Leer n;
	Para i = 1 Hasta trunc(n / 2) Con Paso 1 Hacer
		Si n % i = 0 Entonces
			suma = suma + i;
		FinSi
	FinPara
	Si n > 0 & suma = n Entonces
		Escribir n, " es un número perfecto";
	SiNo
		Escribir n, " NO es un número perfecto";
	FinSi
FinAlgoritmo
