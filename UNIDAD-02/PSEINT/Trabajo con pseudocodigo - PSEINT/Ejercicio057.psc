// 057-Cuenta las vocales y las consonantes que tiene una palabra dada por el usuario.

Algoritmo Ejercicio057
	Definir palabra, letra Como Cadena;
	Definir i, vocales, consonantes Como Entero;
	palabra = "";
	letra = "";
	i = 0;
	vocales = 0;
	consonantes = 0;
	Escribir "Dime una palabra: " Sin Saltar;
	Leer palabra;
	palabra = Minusculas(palabra);
	Para i = 0 Hasta Longitud(palabra) - 1 Con Paso 1 Hacer
		letra = Subcadena(palabra, i, i);
		Si letra = "a" | letra = "e" | letra = "i" | letra = "o" | letra = "u" | letra = "á" | letra = "é" | letra = "í" | letra = "ó" | letra = "ú" | letra = "ü" Entonces
			vocales = vocales + 1;
		SiNo
			// Cualquier otra letra (incluida la ñ) es consonante; se ignoran números y signos
			Si (letra >= "a" & letra <= "z") | letra = "ñ" Entonces
				consonantes = consonantes + 1;
			FinSi
		FinSi
	FinPara
	Escribir "Vocales: ", vocales;
	Escribir "Consonantes: ", consonantes;
FinAlgoritmo
