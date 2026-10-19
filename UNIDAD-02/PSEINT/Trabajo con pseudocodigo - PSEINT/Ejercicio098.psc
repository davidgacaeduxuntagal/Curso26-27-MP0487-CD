// Proyecto PIEDRA, PAPEL O TIJERAS
// 098-Crea un subproceso que simule el turno del jugador, asegurándote de la validez
// de su elección.
// Codificación: 1 = Piedra, 2 = Papel, 3 = Tijeras

Funcion nombre <- NombreJugada(jugada)
	Definir nombre Como Cadena;
	Segun jugada Hacer
		1:
			nombre = "Piedra";
		2:
			nombre = "Papel";
		De Otro Modo:
			nombre = "Tijeras";
	FinSegun
FinFuncion

// Repite la pregunta hasta que la elección sea 1, 2 o 3
Funcion jugada <- TurnoJugador
	Definir jugada Como Entero;
	Repetir
		Escribir "1-Piedra  2-Papel  3-Tijeras. Tu elección: " Sin Saltar;
		Leer jugada;
		Si jugada < 1 | jugada > 3 Entonces
			Escribir "Elección no válida.";
		FinSi
	Hasta Que jugada >= 1 & jugada <= 3
FinFuncion

Algoritmo Ejercicio098
	Definir jugada Como Entero;
	jugada = TurnoJugador();
	Escribir "Has elegido: ", NombreJugada(jugada);
FinAlgoritmo
