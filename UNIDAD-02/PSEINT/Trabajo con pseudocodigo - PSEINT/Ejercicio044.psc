// 044-Dibuja la siguiente estructura triangular, preguntando al usuario cuántas
// filas tendrá.
// *
// **
// ***
// ****

Algoritmo Ejercicio044
	Definir filas, fila, columna Como Entero;
	filas = 0;
	fila = 0;
	columna = 0;
	Escribir "Número de filas: " Sin Saltar;
	Leer filas;
	Para fila = 1 Hasta filas Con Paso 1 Hacer
		// La fila número "fila" tiene "fila" asteriscos
		Para columna = 1 Hasta fila Con Paso 1 Hacer
			Escribir "*" Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
