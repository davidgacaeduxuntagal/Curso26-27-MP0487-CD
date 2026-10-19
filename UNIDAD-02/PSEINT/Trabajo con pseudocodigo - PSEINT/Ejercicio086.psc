// Proyecto LOTERÍA PRIMITIVA
// 086-Crea un subproceso que devuelva el número de coincidencias que hay en dos listas
// de 6 números que se le proporcionan como argumento. Prueba su funcionamiento en un
// algoritmo principal.

Funcion esta <- Contiene(lista, n, valor)
	Definir esta Como Logico;
	Definir i Como Entero;
	esta = Falso;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si lista[i] = valor Entonces
			esta = Verdadero;
		FinSi
	FinPara
FinFuncion

Funcion aciertos <- Coincidencias(lista1, lista2)
	Definir aciertos, i Como Entero;
	aciertos = 0;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Si Contiene(lista2, 6, lista1[i]) Entonces
			aciertos = aciertos + 1;
		FinSi
	FinPara
FinFuncion

Algoritmo Ejercicio086
	Definir lista1, lista2, i Como Entero;
	Dimension lista1[6];
	Dimension lista2[6];
	i = 0;
	// Datos de prueba: coinciden 5, 12 y 40
	lista1[0] = 5;  lista1[1] = 12; lista1[2] = 23; lista1[3] = 31; lista1[4] = 40; lista1[5] = 49;
	lista2[0] = 40; lista2[1] = 3;  lista2[2] = 5;  lista2[3] = 18; lista2[4] = 12; lista2[5] = 27;
	Escribir "Lista 1: " Sin Saltar;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Escribir lista1[i], " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Lista 2: " Sin Saltar;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Escribir lista2[i], " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Coincidencias: ", Coincidencias(lista1, lista2);
FinAlgoritmo
