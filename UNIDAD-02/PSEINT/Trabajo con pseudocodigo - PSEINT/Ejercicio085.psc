// Proyecto LOTERÍA PRIMITIVA
// 085-Crea un subproceso que simule el sorteo y obtén al azar 6 números del 1 al 49,
// un reintegro del 0 al 9 y un complementario del 1 al 49. Compruébalo en un
// algoritmo general.

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

// Combinación de 6 números distintos; el complementario tampoco puede repetirse
Funcion Sorteo(combinacion, complementario Por Referencia, reintegro Por Referencia)
	Definir i, bola Como Entero;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Repetir
			bola = azar(49) + 1;
		Hasta Que ~Contiene(combinacion, i, bola)
		combinacion[i] = bola;
	FinPara
	Repetir
		complementario = azar(49) + 1;
	Hasta Que ~Contiene(combinacion, 6, complementario)
	reintegro = azar(10);
FinFuncion

Algoritmo Ejercicio085
	Definir combinacion, complementario, reintegro, i Como Entero;
	Dimension combinacion[6];
	complementario = 0;
	reintegro = 0;
	i = 0;
	Sorteo(combinacion, complementario, reintegro);
	Escribir "Combinación ganadora: " Sin Saltar;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Escribir combinacion[i], " " Sin Saltar;
	FinPara
	Escribir "";
	Escribir "Complementario: ", complementario;
	Escribir "Reintegro: ", reintegro;
FinAlgoritmo
