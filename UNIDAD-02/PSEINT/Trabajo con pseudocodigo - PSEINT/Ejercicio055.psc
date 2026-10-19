// 055-Crea una matriz 3x3 con valores aleatorios y después indica el número menor
// de cada columna.

Algoritmo Ejercicio055
	Definir N, matriz, fila, columna, menor Como Entero;
	N = 3;
	Dimension matriz[N, N];
	fila = 0;
	columna = 0;
	menor = 0;
	Para fila = 0 Hasta N - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta N - 1 Con Paso 1 Hacer
			matriz[fila, columna] = azar(100);
			Escribir matriz[fila, columna], "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	Para columna = 0 Hasta N - 1 Con Paso 1 Hacer
		menor = matriz[0, columna];
		Para fila = 1 Hasta N - 1 Con Paso 1 Hacer
			Si matriz[fila, columna] < menor Entonces
				menor = matriz[fila, columna];
			FinSi
		FinPara
		Escribir "Menor de la columna ", columna + 1, ": ", menor;
	FinPara
FinAlgoritmo
