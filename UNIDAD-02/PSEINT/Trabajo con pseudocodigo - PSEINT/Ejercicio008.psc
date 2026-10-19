// 008-Diseña un programa que calcule las unidades de un número entero dado.

Algoritmo Ejercicio008
	Definir num, unidades Como Entero;
	num = 0;
	unidades = 0;
	Escribir "Dime un número entero: " Sin Saltar;
	Leer num;
	// La cifra de las unidades es el resto de dividir entre 10
	unidades = abs(num) % 10;
	Escribir "Las unidades de ", num, " son: ", unidades;
FinAlgoritmo
