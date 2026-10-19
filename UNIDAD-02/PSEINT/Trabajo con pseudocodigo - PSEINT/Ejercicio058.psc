// 058-Averigua si una palabra dada por el usuario es igual a otra al darle la vuelta
// (es decir, si es un palíndromo).

Algoritmo Ejercicio058
	Definir palabra, alReves Como Cadena;
	Definir i Como Entero;
	palabra = "";
	alReves = "";
	i = 0;
	Escribir "Dime una palabra: " Sin Saltar;
	Leer palabra;
	palabra = Minusculas(palabra);
	// Se recorre la palabra desde el final hasta el principio
	Para i = Longitud(palabra) - 1 Hasta 0 Con Paso -1 Hacer
		alReves = Concatenar(alReves, Subcadena(palabra, i, i));
	FinPara
	Escribir "Al revés: ", alReves;
	Si palabra = alReves Entonces
		Escribir "La palabra es igual al darle la vuelta (palíndromo)";
	SiNo
		Escribir "La palabra NO es igual al darle la vuelta";
	FinSi
FinAlgoritmo
