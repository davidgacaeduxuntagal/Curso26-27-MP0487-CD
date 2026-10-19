// 049-Guarda en un arreglo tantos números enteros como quiera el usuario. Después
// cuenta las veces que otro número indicado por el usuario aparece en el arreglo.

Algoritmo Ejercicio049
	Definir n, i, numeros, buscado, veces Como Entero;
	n = 0;
	i = 0;
	buscado = 0;
	veces = 0;
	Repetir
		Escribir "¿Cuántos números quieres guardar? " Sin Saltar;
		Leer n;
	Hasta Que n > 0
	Dimension numeros[n];
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Número ", i + 1, ": " Sin Saltar;
		Leer numeros[i];
	FinPara
	Escribir "¿Qué número quieres buscar? " Sin Saltar;
	Leer buscado;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si numeros[i] = buscado Entonces
			veces = veces + 1;
		FinSi
	FinPara
	Escribir "El número ", buscado, " aparece ", veces, " vez/veces";
FinAlgoritmo
