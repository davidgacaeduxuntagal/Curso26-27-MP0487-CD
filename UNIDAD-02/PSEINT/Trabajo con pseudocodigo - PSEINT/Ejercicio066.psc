// 066-Convierte el ejercicio anterior en un subproceso que devuelva ordenada una lista
// que se le proporcione. Después crea un algoritmo principal en el que se cree una
// matriz y posteriormente se ordenen de mayor a menor sus filas.
// NOTA: en PSeInt los arreglos se pasan siempre por referencia, así que el subproceso
// ordena directamente la lista que recibe.

Funcion pos <- PosicionMayor(lista, limite)
	Definir pos, i Como Entero;
	pos = 0;
	Para i = 1 Hasta limite Con Paso 1 Hacer
		Si lista[i] > lista[pos] Entonces
			pos = i;
		FinSi
	FinPara
FinFuncion

// Ordena la lista de menor a mayor por selección
Funcion OrdenarLista(lista, n)
	Definir ultimo, posMax, aux Como Entero;
	Para ultimo = n - 1 Hasta 1 Con Paso -1 Hacer
		posMax = PosicionMayor(lista, ultimo);
		aux = lista[ultimo];
		lista[ultimo] = lista[posMax];
		lista[posMax] = aux;
	FinPara
FinFuncion

Funcion MostrarMatriz(matriz, filas, columnas)
	Definir f, c Como Entero;
	Para f = 0 Hasta filas - 1 Con Paso 1 Hacer
		Para c = 0 Hasta columnas - 1 Con Paso 1 Hacer
			Escribir matriz[f, c], "  " Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinFuncion

Algoritmo Ejercicio066
	Definir FILAS, COLUMNAS, matriz, fila, columna, filaAux Como Entero;
	FILAS = 4;
	COLUMNAS = 5;
	Dimension matriz[FILAS, COLUMNAS];
	Dimension filaAux[COLUMNAS];
	fila = 0;
	columna = 0;
	Para fila = 0 Hasta FILAS - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta COLUMNAS - 1 Con Paso 1 Hacer
			matriz[fila, columna] = azar(100);
		FinPara
	FinPara
	Escribir "Matriz original:";
	MostrarMatriz(matriz, FILAS, COLUMNAS);
	// Una fila de la matriz no se puede pasar sola, así que se copia a un arreglo,
	// se ordena y se devuelve a la matriz al revés (para que quede de mayor a menor)
	Para fila = 0 Hasta FILAS - 1 Con Paso 1 Hacer
		Para columna = 0 Hasta COLUMNAS - 1 Con Paso 1 Hacer
			filaAux[columna] = matriz[fila, columna];
		FinPara
		OrdenarLista(filaAux, COLUMNAS);
		Para columna = 0 Hasta COLUMNAS - 1 Con Paso 1 Hacer
			matriz[fila, columna] = filaAux[COLUMNAS - 1 - columna];
		FinPara
	FinPara
	Escribir "Filas ordenadas de mayor a menor:";
	MostrarMatriz(matriz, FILAS, COLUMNAS);
FinAlgoritmo
