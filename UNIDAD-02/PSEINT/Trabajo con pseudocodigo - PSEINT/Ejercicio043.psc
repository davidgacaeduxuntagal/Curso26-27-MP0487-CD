// 043-Dibuja la siguiente estructura cuadrada, pidiendo al usuario que te diga
// cuántos asteriscos tendremos de alto y de ancho:
// *****
// *****
// *****

Algoritmo Ejercicio043
	Definir alto, ancho, fila, columna Como Entero;
	alto = 0;
	ancho = 0;
	fila = 0;
	columna = 0;
	Escribir "Alto: " Sin Saltar;
	Leer alto;
	Escribir "Ancho: " Sin Saltar;
	Leer ancho;
	Para fila = 1 Hasta alto Con Paso 1 Hacer
		Para columna = 1 Hasta ancho Con Paso 1 Hacer
			Escribir "*" Sin Saltar;
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
