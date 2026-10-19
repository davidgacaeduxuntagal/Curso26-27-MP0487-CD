// Proyecto PIEDRA, PAPEL O TIJERAS
// 100-Aprovecha todos los subprocesos generados para completar el juego.
// (El enunciado dice "craps", pero por su posición corresponde a este proyecto;
// el Craps completo está en el ejercicio 096.)
// Gana la partida el primero que consiga 3 victorias.

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

Funcion jugada <- TiradaOrdenador
	Definir jugada Como Entero;
	jugada = azar(3) + 1;
FinFuncion

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

Funcion resultado <- Comparar(jugador, ordenador)
	Definir resultado Como Entero;
	resultado = (jugador - ordenador + 3) % 3;
FinFuncion

Algoritmo Ejercicio100
	Definir VICTORIAS_PARA_GANAR, jugador, ordenador, resultado Como Entero;
	Definir puntosJugador, puntosOrdenador, ronda Como Entero;
	VICTORIAS_PARA_GANAR = 3;
	jugador = 0;
	ordenador = 0;
	resultado = 0;
	puntosJugador = 0;
	puntosOrdenador = 0;
	ronda = 0;
	Escribir "===== PIEDRA, PAPEL O TIJERAS =====";
	Escribir "Gana el primero que consiga ", VICTORIAS_PARA_GANAR, " victorias.";
	Mientras puntosJugador < VICTORIAS_PARA_GANAR & puntosOrdenador < VICTORIAS_PARA_GANAR Hacer
		ronda = ronda + 1;
		Escribir "";
		Escribir "--- Ronda ", ronda, " ---";
		jugador = TurnoJugador();
		ordenador = TiradaOrdenador();
		Escribir "Tú: ", NombreJugada(jugador), "  -  Ordenador: ", NombreJugada(ordenador);
		resultado = Comparar(jugador, ordenador);
		Segun resultado Hacer
			0:
				Escribir "Empate.";
			1:
				Escribir "¡Ganas la ronda!";
				puntosJugador = puntosJugador + 1;
			De Otro Modo:
				Escribir "El ordenador gana la ronda.";
				puntosOrdenador = puntosOrdenador + 1;
		FinSegun
		Escribir "Marcador: Tú ", puntosJugador, " - ", puntosOrdenador, " Ordenador";
	FinMientras
	Escribir "";
	Si puntosJugador > puntosOrdenador Entonces
		Escribir "¡¡HAS GANADO LA PARTIDA!!";
	SiNo
		Escribir "El ordenador gana la partida.";
	FinSi
FinAlgoritmo
