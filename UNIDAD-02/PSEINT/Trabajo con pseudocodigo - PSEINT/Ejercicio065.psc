// 065-Crea un subproceso que devuelva la posición que ocupa el mayor número de una
// lista dada (se le pasa otro argumento que indica hasta qué posición tiene que
// analizar). Después aprovecha ese subproceso para ordenar una lista por el método de
// selección (ejercicio 051): se busca el mayor y se mueve a la derecha del todo.
// (Resultado: de menor a mayor)

// Devuelve la posición del mayor elemento entre las posiciones 0 y limite (incluida)
Funcion pos <- PosicionMayor(lista, limite)
	Definir pos, i Como Entero;
	pos = 0;
	Para i = 1 Hasta limite Con Paso 1 Hacer
		Si lista[i] > lista[pos] Entonces
			pos = i;
		FinSi
	FinPara
FinFuncion

Algoritmo Ejercicio065
	Definir N, lista, i, ultimo, posMax, aux Como Entero;
	N = 10;
	Dimension lista[N];
	i = 0;
	ultimo = 0;
	posMax = 0;
	aux = 0;
	Escribir "Lista original:  " Sin Saltar;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		lista[i] = azar(100);
		Escribir lista[i], " " Sin Saltar;
	FinPara
	Escribir "";
	Para ultimo = N - 1 Hasta 1 Con Paso -1 Hacer
		posMax = PosicionMayor(lista, ultimo);
		aux = lista[ultimo];
		lista[ultimo] = lista[posMax];
		lista[posMax] = aux;
	FinPara
	Escribir "Lista ordenada:  " Sin Saltar;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir lista[i], " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
