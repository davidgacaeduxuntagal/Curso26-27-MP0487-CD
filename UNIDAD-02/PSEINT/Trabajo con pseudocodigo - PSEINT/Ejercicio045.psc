// 045-Dibuja un cuadrado con asteriscos, en el que aparezca solamente el borde.
// El número de asteriscos de ancho y alto serán los mismos y lo indicará el usuario.
// ****
// *  *
// *  *
// ****

Algoritmo Ejercicio045
	Definir lado, fila, columna Como Entero;
	lado = 0;
	fila = 0;
	columna = 0;
	Escribir "Tamaño del lado: " Sin Saltar;
	Leer lado;
	Para fila = 1 Hasta lado Con Paso 1 Hacer
		Para columna = 1 Hasta lado Con Paso 1 Hacer
			// Sólo se dibuja asterisco en la primera/última fila o columna
			Si fila = 1 | fila = lado | columna = 1 | columna = lado Entonces
				Escribir "*" Sin Saltar;
			SiNo
				Escribir " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
FinAlgoritmo
