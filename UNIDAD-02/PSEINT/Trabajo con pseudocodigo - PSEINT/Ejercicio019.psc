// 019-Determina si una letra dada es vocal o no. (En minúscula y sin tildes).

Algoritmo Ejercicio019
	Definir letra Como Caracter;
	letra = "";
	Escribir "Dime una letra (minúscula y sin tilde): " Sin Saltar;
	Leer letra;
	Segun letra Hacer
		"a", "e", "i", "o", "u":
			Escribir "La letra ", letra, " es una vocal";
		De Otro Modo:
			Escribir "La letra ", letra, " NO es una vocal";
	FinSegun
FinAlgoritmo
