// 070-Crea un algoritmo que calcule la suma de unas fracciones dadas por el usuario.
// El resultado debe de ser expresado en forma de fracción. Ej: 5/7.
// NOTA: Aprovecha los subprocesos creados en los ejercicios anteriores (mcm).

Funcion resultado <- MCD(a, b)
	Definir resultado, resto Como Entero;
	a = abs(a);
	b = abs(b);
	Mientras b <> 0 Hacer
		resto = a % b;
		a = b;
		b = resto;
	FinMientras
	resultado = a;
FinFuncion

Funcion resultado <- MCM(a, b)
	Definir resultado Como Entero;
	resultado = trunc(abs(a) / MCD(a, b)) * abs(b);
FinFuncion

Funcion resultado <- MCMLista(lista, n)
	Definir resultado, i Como Entero;
	resultado = lista[0];
	Para i = 1 Hasta n - 1 Con Paso 1 Hacer
		resultado = MCM(resultado, lista[i]);
	FinPara
FinFuncion

Algoritmo Ejercicio070
	Definir n, i, numeradores, denominadores, denComun, numTotal Como Entero;
	n = 0;
	i = 0;
	numTotal = 0;
	Repetir
		Escribir "¿Cuántas fracciones quieres sumar? " Sin Saltar;
		Leer n;
	Hasta Que n > 0
	Dimension numeradores[n];
	Dimension denominadores[n];
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Fracción ", i + 1, " - numerador: " Sin Saltar;
		Leer numeradores[i];
		Repetir
			Escribir "Fracción ", i + 1, " - denominador (distinto de 0): " Sin Saltar;
			Leer denominadores[i];
		Hasta Que denominadores[i] <> 0
	FinPara
	// Se pasan todas las fracciones al mínimo común denominador y se suman los numeradores
	denComun = MCMLista(denominadores, n);
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		numTotal = numTotal + numeradores[i] * trunc(denComun / denominadores[i]);
	FinPara
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir numeradores[i], "/",denominadores[i] Sin Saltar;
		Si i < n - 1 Entonces
			Escribir " + " Sin Saltar;
		FinSi
	FinPara
	Escribir " = ", numTotal, "/", denComun;
FinAlgoritmo
