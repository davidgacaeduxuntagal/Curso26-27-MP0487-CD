// 063-Crea un subproceso que escriba si un número dado es primo o no. Aprovecha ese
// subproceso para indicar si los números naturales comprendidos entre el 1 y el que
// indique el usuario son primos o no.

Funcion EscribirSiEsPrimo(n)
	Definir divisor Como Entero;
	Definir esPrimo Como Logico;
	esPrimo = n > 1;
	divisor = 2;
	Mientras esPrimo & divisor * divisor <= n Hacer
		Si n % divisor = 0 Entonces
			esPrimo = Falso;
		FinSi
		divisor = divisor + 1;
	FinMientras
	Si esPrimo Entonces
		Escribir n, " es primo";
	SiNo
		Escribir n, " no es primo";
	FinSi
FinFuncion

Algoritmo Ejercicio063
	Definir limite, i Como Entero;
	limite = 0;
	i = 0;
	Escribir "¿Hasta qué número quieres comprobar? " Sin Saltar;
	Leer limite;
	Para i = 1 Hasta limite Con Paso 1 Hacer
		EscribirSiEsPrimo(i);
	FinPara
FinAlgoritmo
