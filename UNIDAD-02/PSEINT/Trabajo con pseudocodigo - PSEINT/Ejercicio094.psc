// Proyecto CRAPS
// 094-Aprovecha el ejercicio anterior para hacer un subproceso que simule la primera
// tirada del CRAPS: 7 u 11 gana. 2, 3, 12 pierde. Otro resultado establece punto
// para la siguiente.

Funcion suma <- TirarDados
	Definir suma, dado1, dado2 Como Entero;
	dado1 = azar(6) + 1;
	dado2 = azar(6) + 1;
	suma = dado1 + dado2;
	Escribir "Dados: ", dado1, " + ", dado2, " = ", suma;
FinFuncion

// Devuelve 1 si gana, -1 si pierde y 0 si se establece punto (que se devuelve
// por referencia)
Funcion resultado <- PrimeraTirada(punto Por Referencia)
	Definir resultado, tirada Como Entero;
	tirada = TirarDados();
	Segun tirada Hacer
		7, 11:
			resultado = 1;
		2, 3, 12:
			resultado = -1;
		De Otro Modo:
			resultado = 0;
			punto = tirada;
	FinSegun
FinFuncion

Algoritmo Ejercicio094
	Definir resultado, punto Como Entero;
	punto = 0;
	resultado = PrimeraTirada(punto);
	Segun resultado Hacer
		1:
			Escribir "¡Has ganado en la primera tirada!";
		-1:
			Escribir "Has perdido en la primera tirada (craps).";
		De Otro Modo:
			Escribir "Se establece el punto en ", punto;
	FinSegun
FinAlgoritmo
