// 017-Determinar cuál es el menor de tres números dados.

Algoritmo Ejercicio017
	Definir a, b, c, menor Como Real;
	a = 0;
	b = 0;
	c = 0;
	menor = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer a;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer b;
	Escribir "Dime el tercer número: " Sin Saltar;
	Leer c;
	menor = a;
	Si b < menor Entonces
		menor = b;
	FinSi
	Si c < menor Entonces
		menor = c;
	FinSi
	Escribir "El menor de los tres es: ", menor;
FinAlgoritmo
