// 073-Sustituye todos los valores que se alejen más de dos unidades de la media en una
// lista de 50 números por ese valor de la media.
// (La lista se rellena con números aleatorios entre 0 y 9)

Funcion MostrarLista(lista, n)
	Definir i Como Entero;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir lista[i], " " Sin Saltar;
	FinPara
	Escribir "";
FinFuncion

Algoritmo Ejercicio073
	Definir N, i, cambiados Como Entero;
	Definir lista, media Como Real;
	N = 50;
	Dimension lista[N];
	i = 0;
	cambiados = 0;
	media = 0;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		lista[i] = azar(10);
		media = media + lista[i];
	FinPara
	media = media / N;
	Escribir "Lista original:";
	MostrarLista(lista, N);
	Escribir "Media: ", media;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Si abs(lista[i] - media) > 2 Entonces
			lista[i] = media;
			cambiados = cambiados + 1;
		FinSi
	FinPara
	Escribir "Lista modificada (", cambiados, " valores sustituidos):";
	MostrarLista(lista, N);
FinAlgoritmo
