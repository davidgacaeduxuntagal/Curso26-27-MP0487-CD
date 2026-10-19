// 014-Indica si un número entero dado es par o impar. (Entendemos el cero como par).

Algoritmo Ejercicio014
	Definir num Como Entero;
	num = 0;
	Escribir "Dime un número entero: " Sin Saltar;
	Leer num;
	Si num % 2 = 0 Entonces
		Escribir "El número ", num, " es par";
	SiNo
		Escribir "El número ", num, " es impar";
	FinSi
FinAlgoritmo
