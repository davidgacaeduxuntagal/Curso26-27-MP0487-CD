// 030-Calcula la suma de todos los números comprendidos entre 0 y el número natural
// que quiera el usuario.

Algoritmo Ejercicio030
	Definir n, i, suma Como Entero;
	n = 0;
	i = 0;
	suma = 0;
	Repetir
		Escribir "Dime un número natural: " Sin Saltar;
		Leer n;
	Hasta Que n >= 0
	Para i = 0 Hasta n Con Paso 1 Hacer
		suma = suma + i;
	FinPara
	Escribir "La suma de 0 a ", n, " es: ", suma;
FinAlgoritmo
