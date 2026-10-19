// 077-Convierte un número decimal en binario.
// Se divide sucesivamente entre 2; los restos leídos al revés forman el número binario.

Funcion binario <- DecimalABinario(n)
	Definir binario Como Cadena;
	Si n = 0 Entonces
		binario = "0";
	SiNo
		binario = "";
		Mientras n > 0 Hacer
			// Cada resto se coloca delante de los anteriores
			binario = Concatenar(ConvertirATexto(n % 2), binario);
			n = trunc(n / 2);
		FinMientras
	FinSi
FinFuncion

Algoritmo Ejercicio077
	Definir num Como Entero;
	num = 0;
	Repetir
		Escribir "Dime un número entero no negativo: " Sin Saltar;
		Leer num;
	Hasta Que num >= 0
	Escribir num, " en binario es: ", DecimalABinario(num);
FinAlgoritmo
