// 038-Indica el número inverso a otro. Ej: 547->745

Algoritmo Ejercicio038
	Definir num, aux, inverso Como Entero;
	num = 0;
	inverso = 0;
	Escribir "Dime un número entero positivo: " Sin Saltar;
	Leer num;
	aux = abs(num);
	// Se va sacando la última cifra de aux y se añade al final de inverso
	Mientras aux > 0 Hacer
		inverso = inverso * 10 + aux % 10;
		aux = trunc(aux / 10);
	FinMientras
	Escribir num, " -> ", inverso;
FinAlgoritmo
