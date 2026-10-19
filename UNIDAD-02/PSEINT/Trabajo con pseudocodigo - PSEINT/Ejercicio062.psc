// 062-Crea dos subprocesos que incrementen el valor de un número, pero no devuelvan
// ningún valor. A uno de ellos se le ha de pasar el argumento por valor y al otro por
// referencia. Después en el algoritmo principal llama a los dos y crea un programa en
// el que se observen las diferencias de ambos métodos.

// Recibe una COPIA del valor: los cambios no salen del subproceso
Funcion IncrementarPorValor(n Por Valor)
	n = n + 1;
	Escribir "   Dentro de IncrementarPorValor, n = ", n;
FinFuncion

// Recibe la PROPIA variable: los cambios se ven en el algoritmo principal
Funcion IncrementarPorReferencia(n Por Referencia)
	n = n + 1;
	Escribir "   Dentro de IncrementarPorReferencia, n = ", n;
FinFuncion

Algoritmo Ejercicio062
	Definir numero Como Entero;
	numero = 10;
	Escribir "Valor inicial: ", numero;
	Escribir "Llamada por VALOR:";
	IncrementarPorValor(numero);
	Escribir "   Después de la llamada, numero = ", numero, "  (no ha cambiado)";
	Escribir "Llamada por REFERENCIA:";
	IncrementarPorReferencia(numero);
	Escribir "   Después de la llamada, numero = ", numero, "  (sí ha cambiado)";
FinAlgoritmo
