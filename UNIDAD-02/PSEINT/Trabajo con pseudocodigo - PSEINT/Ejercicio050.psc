// 050-Guarda 5 números en un arreglo y posteriormente muéstralos ordenados de mayor
// a menor. (Método de la burbuja)

Algoritmo Ejercicio050
	Definir N, i, j Como Entero;
	Definir numeros, aux Como Real;
	N = 5;
	Dimension numeros[N];
	i = 0;
	j = 0;
	aux = 0;
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir "Número ", i + 1, ": " Sin Saltar;
		Leer numeros[i];
	FinPara
	// En cada pasada el menor de los que quedan "burbujea" hasta el final
	Para i = 0 Hasta N - 2 Con Paso 1 Hacer
		Para j = 0 Hasta N - 2 - i Con Paso 1 Hacer
			Si numeros[j] < numeros[j + 1] Entonces
				aux = numeros[j];
				numeros[j] = numeros[j + 1];
				numeros[j + 1] = aux;
			FinSi
		FinPara
	FinPara
	Escribir "Ordenados de mayor a menor:";
	Para i = 0 Hasta N - 1 Con Paso 1 Hacer
		Escribir numeros[i], " " Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
