// 071-Vamos a ir más allá, y vamos a reducir la fracción (del ejercicio 070) si es
// reducible. Para eso crea otro subproceso que calcule el MCD.

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

// Simplifica la fracción num/den dividiendo ambos entre su MCD
Funcion ReducirFraccion(num Por Referencia, den Por Referencia)
	Definir divisor Como Entero;
	divisor = MCD(num, den);
	Si divisor > 1 Entonces
		num = trunc(num / divisor);
		den = trunc(den / divisor);
	FinSi
FinFuncion

Algoritmo Ejercicio071
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
	denComun = MCMLista(denominadores, n);
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		numTotal = numTotal + numeradores[i] * trunc(denComun / denominadores[i]);
	FinPara
	Escribir "Suma sin reducir: ", numTotal, "/", denComun;
	ReducirFraccion(numTotal, denComun);
	Si numTotal = 0 Entonces
		Escribir "Fracción reducida: 0";
	SiNo
		Si denComun = 1 Entonces
			Escribir "Fracción reducida: ", numTotal;
		SiNo
			Escribir "Fracción reducida: ", numTotal, "/", denComun;
		FinSi
	FinSi
FinAlgoritmo
