// 078-Convierte un número decimal en binario, octal o hexadecimal.

// Sirve para cualquier base entre 2 y 16
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

Algoritmo Ejercicio078
	Definir num, eleccion, base Como Entero;
	num = 0;
	eleccion = 0;
	base = 0;
	Repetir
		Escribir "Dime un número entero no negativo: " Sin Saltar;
		Leer num;
	Hasta Que num >= 0
	Escribir "1-Binario  2-Octal  3-Hexadecimal";
	Repetir
		Escribir "¿A qué sistema quieres convertirlo? " Sin Saltar;
		Leer eleccion;
	Hasta Que eleccion >= 1 & eleccion <= 3
	Segun eleccion Hacer
		1:
			base = 2;
		2:
			base = 8;
		3:
			base = 16;
	FinSegun
	Escribir num, " en base ", base, " es: ", DecimalABase(num, base);
FinAlgoritmo
