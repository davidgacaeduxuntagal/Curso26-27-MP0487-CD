// 075-Crea un subproceso recursivo que calcule el número de la serie de Fibonacci que
// se indique, sabiendo que esta es: 0,1,1,2,3,5,8,13,21 .... es decir la suma de los
// dos términos anteriores de la serie, exceptuando a los dos primeros.
// Después crea un algoritmo general donde se muestre la serie de Fibonacci hasta el
// término que indique el usuario.

// Término n-ésimo (empezando a contar en 1): Fib(1) = 0, Fib(2) = 1
Funcion f <- Fibonacci(n)
	Definir f Como Entero;
	Si n <= 1 Entonces
		f = 0;
	SiNo
		Si n = 2 Entonces
			f = 1;
		SiNo
			f = Fibonacci(n - 1) + Fibonacci(n - 2);
		FinSi
	FinSi
FinFuncion

Algoritmo Ejercicio075
	Definir terminos, i Como Entero;
	terminos = 0;
	i = 0;
	Escribir "¿Cuántos términos de la serie quieres ver? " Sin Saltar;
	Leer terminos;
	Para i = 1 Hasta terminos Con Paso 1 Hacer
		Escribir Fibonacci(i) Sin Saltar;
		Si i < terminos Entonces
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
	Escribir "";
FinAlgoritmo
