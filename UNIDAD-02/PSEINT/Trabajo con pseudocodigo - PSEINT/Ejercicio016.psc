// 016-Determinar si un número dado es a la vez múltiplo de 2 y 3, o no.

Algoritmo Ejercicio016
	Definir num Como Entero;
	num = 0;
	Escribir "Dime un número entero: " Sin Saltar;
	Leer num;
	Si num % 2 = 0 & num % 3 = 0 Entonces
		Escribir num, " es múltiplo de 2 y de 3";
	SiNo
		Escribir num, " NO es múltiplo de 2 y de 3 a la vez";
	FinSi
FinAlgoritmo
