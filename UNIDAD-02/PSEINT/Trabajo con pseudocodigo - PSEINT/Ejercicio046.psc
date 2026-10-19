// 046-Dibuja el siguiente patrón con asteriscos. El número de asteriscos de ancho y
// alto serán los mismos y lo indicará el usuario. La figura se deriva de las
// diagonales de un cuadrado.
// *   *
//  * *
//   *
//  * *
// *   *

Algoritmo Ejercicio046
	Definir lado, fila, columna Como Entero;
	lado = 0;
	fila = 0;
	columna = 0;
	Escribir "Tamaño del lado: " Sin Saltar;
	Leer lado;
	Para fila = 1 Hasta lado Con Paso 1 Hacer
		Para columna = 1 Hasta lado Con Paso 1 Hacer
			// Diagonal principal (fila = columna) y secundaria (fila + columna = lado + 1)
			Si columna = fila | columna = lado + 1 - fila Entonces
				Escribir "*" Sin Saltar;
			SiNo
				Escribir " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
