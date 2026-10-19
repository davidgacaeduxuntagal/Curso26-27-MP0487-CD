// 048-Guarda en un arreglo cinco notas de un alumno que has de pedir al usuario.
// Posteriormente calcula la media e indica cuál es la mayor y la menor de ellas.

Algoritmo Ejercicio048
	Definir NUM_NOTAS, i Como Entero;
	Definir notas, suma, mayor, menor Como Real;
	NUM_NOTAS = 5;
	Dimension notas[NUM_NOTAS];
	i = 0;
	suma = 0;
	Para i = 0 Hasta NUM_NOTAS - 1 Con Paso 1 Hacer
		Escribir "Nota ", i + 1, ": " Sin Saltar;
		Leer notas[i];
	FinPara
	mayor = notas[0];
	menor = notas[0];
	Para i = 0 Hasta NUM_NOTAS - 1 Con Paso 1 Hacer
		suma = suma + notas[i];
		Si notas[i] > mayor Entonces
			mayor = notas[i];
		FinSi
		Si notas[i] < menor Entonces
			menor = notas[i];
		FinSi
	FinPara
	Escribir "Media: ", suma / NUM_NOTAS;
	Escribir "Nota mayor: ", mayor;
	Escribir "Nota menor: ", menor;
FinAlgoritmo
