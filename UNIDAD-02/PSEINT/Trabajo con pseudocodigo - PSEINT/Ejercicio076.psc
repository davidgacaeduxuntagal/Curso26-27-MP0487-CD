// 076-Crea un subproceso que calcule la potencia de dos números de forma recursiva,
// sabiendo que n^m = n x n^(m-1). Pruébalo en un algoritmo general.

// Caso base: n^0 = 1
Funcion p <- Potencia(n, m)
	Definir p Como Real;
	Si m = 0 Entonces
		p = 1;
	SiNo
		p = n * Potencia(n, m - 1);
	FinSi
FinFuncion

Algoritmo Ejercicio076
	Definir base Como Real;
	Definir exponente Como Entero;
	base = 0;
	exponente = 0;
	Escribir "Base: " Sin Saltar;
	Leer base;
	Repetir
		Escribir "Exponente (entero no negativo): " Sin Saltar;
		Leer exponente;
	Hasta Que exponente >= 0
	Escribir base, " ^ ", exponente, " = ", Potencia(base, exponente);
FinAlgoritmo
