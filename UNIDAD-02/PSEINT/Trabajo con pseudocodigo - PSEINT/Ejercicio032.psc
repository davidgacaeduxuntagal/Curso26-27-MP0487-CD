// 032-Pide al usuario que introduzca 100 números enteros. Después indica cuántos de
// esos números son pares, cuántos impares, cuántos negativos y cuántos positivos.
// (Para probarlo basta con cambiar el valor de CANTIDAD).
// El cero se cuenta como par pero no como positivo ni como negativo.

Algoritmo Ejercicio032
	Definir CANTIDAD, i, num, pares, impares, positivos, negativos Como Entero;
	CANTIDAD = 100;      // <- único cambio necesario para probar con menos números
	i = 0;
	num = 0;
	pares = 0;
	impares = 0;
	positivos = 0;
	negativos = 0;
	Para i = 1 Hasta CANTIDAD Con Paso 1 Hacer
		Escribir "Número ", i, ": " Sin Saltar;
		Leer num;
		Si num % 2 = 0 Entonces
			pares = pares + 1;
		SiNo
			impares = impares + 1;
		FinSi
		Si num > 0 Entonces
			positivos = positivos + 1;
		SiNo
			Si num < 0 Entonces
				negativos = negativos + 1;
			FinSi
		FinSi
	FinPara
	Escribir "Pares: ", pares;
	Escribir "Impares: ", impares;
	Escribir "Positivos: ", positivos;
	Escribir "Negativos: ", negativos;
FinAlgoritmo
