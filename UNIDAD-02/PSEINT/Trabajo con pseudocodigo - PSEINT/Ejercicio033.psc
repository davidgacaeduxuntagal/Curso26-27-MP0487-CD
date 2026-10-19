// 033-Pide al usuario que introduzca 100 números enteros. Después calcula y muestra
// su media. (Para probarlo basta con cambiar el valor de CANTIDAD).

Algoritmo Ejercicio033
	Definir CANTIDAD, i, num, suma Como Entero;
	CANTIDAD = 100;      // <- único cambio necesario para probar con menos números
	i = 0;
	num = 0;
	suma = 0;
	Para i = 1 Hasta CANTIDAD Con Paso 1 Hacer
		Escribir "Número ", i, ": " Sin Saltar;
		Leer num;
		suma = suma + num;
	FinPara
	Escribir "La media es: ", suma / CANTIDAD;
FinAlgoritmo
