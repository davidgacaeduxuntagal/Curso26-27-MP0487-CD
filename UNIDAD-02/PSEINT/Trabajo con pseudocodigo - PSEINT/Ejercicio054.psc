// 054-Crea una matriz 4x3 con valores aportados por el usuario que represente el
// número de personas que viven en los pisos de un edificio de viviendas. Después
// indica cuál es la planta con mayor número de vecinos, indicando también el número.
// (4 plantas, 3 pisos por planta)

Algoritmo Ejercicio054
	Definir PLANTAS, PISOS, edificio, planta, piso Como Entero;
	Definir vecinosPlanta, maxVecinos, plantaMax Como Entero;
	PLANTAS = 4;
	PISOS = 3;
	Dimension edificio[PLANTAS, PISOS];
	planta = 0;
	piso = 0;
	vecinosPlanta = 0;
	maxVecinos = -1;
	plantaMax = 0;
	Para planta = 0 Hasta PLANTAS - 1 Con Paso 1 Hacer
		Para piso = 0 Hasta PISOS - 1 Con Paso 1 Hacer
			Escribir "Personas en la planta ", planta + 1, ", piso ", piso + 1, ": " Sin Saltar;
			Leer edificio[planta, piso];
		FinPara
	FinPara
	Para planta = 0 Hasta PLANTAS - 1 Con Paso 1 Hacer
		vecinosPlanta = 0;
		Para piso = 0 Hasta PISOS - 1 Con Paso 1 Hacer
			vecinosPlanta = vecinosPlanta + edificio[planta, piso];
		FinPara
		Escribir "Planta ", planta + 1, ": ", vecinosPlanta, " vecinos";
		Si vecinosPlanta > maxVecinos Entonces
			maxVecinos = vecinosPlanta;
			plantaMax = planta;
		FinSi
	FinPara
	Escribir "La planta con más vecinos es la ", plantaMax + 1, " con ", maxVecinos, " vecinos";
FinAlgoritmo
