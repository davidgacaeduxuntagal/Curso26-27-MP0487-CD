// 031-Cuenta cuántos números de los comprendidos entre el 500 y el 1000 (incluidos)
// cumplen que son a la vez múltiplos de 2 y 3.

Algoritmo Ejercicio031
	Definir i, contador Como Entero;
	i = 0;
	contador = 0;
	Para i = 500 Hasta 1000 Con Paso 1 Hacer
		Si i % 2 = 0 & i % 3 = 0 Entonces
			contador = contador + 1;
		FinSi
	FinPara
	Escribir "Entre 500 y 1000 hay ", contador, " múltiplos de 2 y 3 a la vez";
FinAlgoritmo
