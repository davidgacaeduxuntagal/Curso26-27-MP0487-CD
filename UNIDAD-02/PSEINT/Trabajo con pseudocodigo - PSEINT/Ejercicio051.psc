// 051-Ejercicio 050 con el método de selección: buscar el número menor y moverlo a
// la derecha del todo. Después se repite este procedimiento hasta tener todo el
// arreglo colocado. (Resultado: de mayor a menor)

Algoritmo Ejercicio051
	Definir N, i, ultimo, posMenor Como Entero;
	Definir numeros, aux Como Real;
	N = 5;
	Dimension numeros[N];
	i = 0;
	ultimo = 0;
	posMenor = 0;
	aux = 0;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir "Número ", i + 1, ": " Sin Saltar;
		Leer numeros[i];
	FinPara
	// "ultimo" es la posición de la derecha que falta por colocar
	Para ultimo = N - 1 Hasta 1 Con Paso -1 Hacer
		// Buscar el menor entre las posiciones 0 y ultimo
		posMenor = 0;
		Para i = 1 Hasta ultimo Con Paso 1 Hacer
			Si numeros[i] < numeros[posMenor] Entonces
				posMenor = i;
			FinSi
		FinPara
		// Intercambiarlo con el de la posición "ultimo"
		aux = numeros[ultimo];
		numeros[ultimo] = numeros[posMenor];
		numeros[posMenor] = aux;
	FinPara
	Escribir "Ordenados de mayor a menor:";
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir numeros[i], " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
