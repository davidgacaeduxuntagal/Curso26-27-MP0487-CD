// 053-Crea una matriz con números aleatorios y después cuenta el número de veces que
// aparece el número que te indique el usuario.

Algoritmo Ejercicio053
	Definir FILAS, COLUMNAS, matriz, fila, columna, buscado, veces Como Entero;
	FILAS = 5;
	COLUMNAS = 5;
	Dimension matriz[FILAS, COLUMNAS];
	fila = 0;
	columna = 0;
	buscado = 0;
	veces = 0;
	// Números entre 0 y 9 para que haya repeticiones
	Para fila = 0 Hasta FILAS - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta COLUMNAS - 1 Con Paso 1 Hacer
			matriz[fila, columna] = azar(10);
			Escribir matriz[fila, columna], "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
	Escribir "¿Qué número (0-9) quieres buscar? " Sin Saltar;
	Leer buscado;
	Para fila = 0 Hasta FILAS - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta COLUMNAS - 1 Con Paso 1 Hacer
			Si matriz[fila, columna] = buscado Entonces
				veces = veces + 1;
			FinSi
		FinPara
	FinPara
	Escribir "El número ", buscado, " aparece ", veces, " vez/veces";
FinAlgoritmo
