// 027-Suma todos los números que indique el usuario hasta que introduzca un 0.

Algoritmo Ejercicio027
	Definir num, suma Como Real;
	num = 0;
	suma = 0;
	Repetir
		Escribir "Dime un número (0 para terminar): " Sin Saltar;
		Leer num;
		suma = suma + num;
	Hasta Que num = 0
	Escribir "La suma total es: ", suma;
FinAlgoritmo
