// 059-Cuenta las palabras que tiene una frase dada por el usuario.

Algoritmo Ejercicio059
	Definir frase, letra Como Cadena;
	Definir i, palabras Como Entero;
	Definir dentroPalabra Como Logico;
	frase = "";
	letra = "";
	i = 0;
	palabras = 0;
	dentroPalabra = Falso;
	Escribir "Escribe una frase: " Sin Saltar;
	Leer frase;
	// Se cuenta una palabra nueva cada vez que se pasa de un espacio a una letra.
	// Así no importa si hay varios espacios seguidos o al principio/final.
	Para i = 0 Hasta Longitud(frase) - 1 Con Paso 1 Hacer
		letra = Subcadena(frase, i, i);
		Si letra = " " Entonces
			dentroPalabra = Falso;
		SiNo
			Si ~dentroPalabra Entonces
				palabras = palabras + 1;
				dentroPalabra = Verdadero;
			FinSi
		FinSi
	FinPara
	Escribir "La frase tiene ", palabras, " palabra(s)";
FinAlgoritmo
