// 052-Crea una matriz 3x3 con números aleatorios y después escribe su transpuesta.
// Debe aparecer en formato de filas y columnas.

Algoritmo Ejercicio052
	Definir N, matriz, fila, columna Como Entero;
	N = 3;
	Dimension matriz[N, N];
	fila = 0;
	columna = 0;
	Para fila = 0 Hasta N - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta N - 1 Con Paso 1 Hacer
			matriz[fila, columna] = azar(10);
		FinPara
	FinPara
	Escribir "Matriz original:";
	Para fila = 0 Hasta N - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta N - 1 Con Paso 1 Hacer
			Escribir matriz[fila, columna], "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	// La transpuesta intercambia filas por columnas: T[f,c] = M[c,f]
	Escribir "Matriz transpuesta:";
	Para fila = 0 Hasta N - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta N - 1 Con Paso 1 Hacer
			Escribir matriz[columna, fila], "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
