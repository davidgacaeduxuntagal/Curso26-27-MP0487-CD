// 080-Convierte un número binario en octal.
// Se pasa primero a decimal y después de decimal a octal (aprovechando los ejercicios
// 078 y 079).

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
	Para i = 0 Hasta Longitud(binario) - 1 Con Paso 1 Hacer
		decimal = decimal * 2 + ConvertirANumero(Subcadena(binario, i, i));
	FinPara
FinFuncion

Funcion resultado <- DecimalABase(n, base)
	Definir resultado, digitos Como Cadena;
	Definir resto Como Entero;
	digitos = "0123456789ABCDEF";
	Si n = 0 Entonces
		resultado = "0";
	SiNo
		resultado = "";
		Mientras n > 0 Hacer
			resto = n % base;
			resultado = Concatenar(Subcadena(digitos, resto, resto), resultado);
			n = trunc(n / base);
		FinMientras
	FinSi
FinFuncion

Algoritmo Ejercicio080
	Definir binario Como Cadena;
	binario = "";
	Repetir
		Escribir "Dime un número binario: " Sin Saltar;
		Leer binario;
	Hasta Que EsBinario(binario)
	Escribir binario, " en octal es: ", DecimalABase(BinarioADecimal(binario), 8);
FinAlgoritmo
