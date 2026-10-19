// 028-Haz un juego en el que el usuario tenga que acertar un número al azar entre
// el 0 y el 9. Después el programa indicará cuántos intentos ha necesitado para acertar.
// NOTA: azar(n) retorna un número al azar entre 0 y n-1

Algoritmo Ejercicio028
	Definir secreto, num, intentos Como Entero;
	secreto = azar(10);
	num = -1;
	intentos = 0;
	Escribir "He pensado un número entre 0 y 9. ¡Adivínalo!";
	Repetir
		Escribir "Tu apuesta: " Sin Saltar;
		Leer num;
		intentos = intentos + 1;
		Si num < secreto Entonces
			Escribir "Es mayor";
		SiNo
			Si num > secreto Entonces
				Escribir "Es menor";
			FinSi
		FinSi
	Hasta Que num = secreto
	Escribir "¡Acertaste! Has necesitado ", intentos, " intento(s)";
FinAlgoritmo
