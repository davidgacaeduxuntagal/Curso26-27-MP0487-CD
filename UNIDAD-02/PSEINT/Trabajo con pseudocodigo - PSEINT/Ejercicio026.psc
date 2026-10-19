// 026-Suma todos los números comprendidos entre los dos números enteros que indique
// el usuario (sin incluirlos).

Algoritmo Ejercicio026
	Definir num1, num2, menor, mayor, i, suma Como Entero;
	num1 = 0;
	num2 = 0;
	suma = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer num1;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer num2;
	// Da igual el orden en que se introduzcan
	Si num1 < num2 Entonces
		menor = num1;
		mayor = num2;
	SiNo
		menor = num2;
		mayor = num1;
	FinSi
	Para i = menor + 1 Hasta mayor - 1 Con Paso 1 Hacer
		suma = suma + i;
	FinPara
	Escribir "La suma de los números entre ", menor, " y ", mayor, " es: ", suma;
FinAlgoritmo
