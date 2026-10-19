// 074-Crea un subproceso recursivo que calcule el factorial de un número. Después usa
// esa función para calcular y mostrar por pantalla el factorial de todos los números
// enteros comprendidos entre 1 y el número que indique el usuario.

// n! = n * (n-1)!   y   0! = 1! = 1 (caso base)
Funcion f <- Factorial(n)
	Definir f Como Entero;
	Si n <= 1 Entonces
		f = 1;
	SiNo
		f = n * Factorial(n - 1);
	FinSi
FinFuncion

Algoritmo Ejercicio074
	Definir limite, i Como Entero;
	limite = 0;
	i = 0;
	Escribir "¿Hasta qué número quieres calcular factoriales? " Sin Saltar;
	Leer limite;
	Para i = 1 Hasta limite Con Paso 1 Hacer
		Escribir i, "! = ", Factorial(i);
	FinPara
FinAlgoritmo
