// Proyecto CRAPS
// 093-Crear un subproceso para obtener el resultado de la tirada de dos dados.

Funcion suma <- TirarDados
	Definir suma, dado1, dado2 Como Entero;
	dado1 = azar(6) + 1;
	dado2 = azar(6) + 1;
	suma = dado1 + dado2;
	Escribir "Dados: ", dado1, " + ", dado2, " = ", suma;
FinFuncion

Algoritmo Ejercicio093
	Definir resultado Como Entero;
	resultado = TirarDados();
	Escribir "Has sacado un ", resultado;
FinAlgoritmo
