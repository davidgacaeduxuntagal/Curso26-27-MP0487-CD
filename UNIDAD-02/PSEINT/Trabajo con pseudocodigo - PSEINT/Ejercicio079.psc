// 079-Pasar de binario a decimal.
// Cada cifra se multiplica por la potencia de 2 que le corresponde según su posición.

Funcion valido <- EsBinario(texto)
	Definir valido Como Logico;
	Definir i Como Entero;
	Definir cifra Como Cadena;
	valido = Longitud(texto) > 0;
	Para i = 0 Hasta Longitud(texto) - 1 Con Paso 1 Hacer
		cifra = Subcadena(texto, i, i);
		Si cifra <> "0" & cifra <> "1" Entonces
			valido = Falso;
		FinSi
	FinPara
FinFuncion

Funcion decimal <- BinarioADecimal(binario)
	Definir decimal, i Como Entero;
	decimal = 0;
	// Método de Horner: se recorre de izquierda a derecha multiplicando por 2
	Para i = 0 Hasta Longitud(binario) - 1 Con Paso 1 Hacer
		decimal = decimal * 2 + ConvertirANumero(Subcadena(binario, i, i));
	FinPara
FinFuncion

Algoritmo Ejercicio079
	Definir binario Como Cadena;
	binario = "";
	Repetir
		Escribir "Dime un número binario: " Sin Saltar;
		Leer binario;
	Hasta Que EsBinario(binario)
	Escribir binario, " en decimal es: ", BinarioADecimal(binario);
FinAlgoritmo
