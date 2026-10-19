// 035-Indica cuál es el mayor y el menor de 100 números dados por el usuario.
// (Para probarlo basta con cambiar el valor de CANTIDAD).

Algoritmo Ejercicio035
	Definir CANTIDAD, i Como Entero;
	Definir num, mayor, menor Como Real;
	CANTIDAD = 100;      // <- único cambio necesario para probar con menos números
	i = 0;
	num = 0;
	mayor = 0;
	menor = 0;
	Para i = 1 Hasta CANTIDAD Con Paso 1 Hacer
		Escribir "Número ", i, ": " Sin Saltar;
		Leer num;
		// El primer número es a la vez el mayor y el menor
		Si i = 1 | num > mayor Entonces
			mayor = num;
		FinSi
		Si i = 1 | num < menor Entonces
			menor = num;
		FinSi
	FinPara
	Escribir "El mayor es: ", mayor;
	Escribir "El menor es: ", menor;
FinAlgoritmo
