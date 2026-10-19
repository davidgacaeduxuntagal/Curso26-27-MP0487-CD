// 083-Mejora el programa 082 y créalo en forma de subproceso que al recibir una
// cantidad de frases determinada por el usuario devuelva un dibujo como el siguiente:
//   ****************************
//     CURSO COMPLETO DE PSEINT
//       CON 100 EJERCICIOS
//           TECNODAVID
//   ****************************

Funcion LineaAsteriscos(ancho)
	Definir i Como Entero;
	Para i = 1 Hasta ancho Con Paso 1 Hacer
		Escribir "*" Sin Saltar;
	FinPara
	Escribir "";
FinFuncion

Funcion DibujarFrases(frases, n)
	Definir i, j, ancho, espacios Como Entero;
	// El ancho del dibujo depende de la frase más larga
	ancho = 0;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si Longitud(frases[i]) > ancho Entonces
			ancho = Longitud(frases[i]);
		FinSi
	FinPara
	ancho = ancho + 4;
	LineaAsteriscos(ancho);
	// Cada frase se centra añadiendo espacios a la izquierda
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		espacios = trunc((ancho - Longitud(frases[i])) / 2);
		Para j = 1 Hasta espacios Con Paso 1 Hacer
			Escribir " " Sin Saltar;
		FinPara
		Escribir frases[i];
	FinPara
	LineaAsteriscos(ancho);
FinFuncion

Algoritmo Ejercicio083
	Definir n, i Como Entero;
	Definir frases Como Cadena;
	n = 0;
	i = 0;
	Repetir
		Escribir "¿Cuántas frases vas a escribir? " Sin Saltar;
		Leer n;
	Hasta Que n > 0
	Dimension frases[n];
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Dime la frase número ", i + 1;
		Leer frases[i];
	FinPara
	DibujarFrases(frases, n);
FinAlgoritmo
