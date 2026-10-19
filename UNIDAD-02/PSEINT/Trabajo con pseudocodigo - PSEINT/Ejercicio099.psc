// Proyecto PIEDRA, PAPEL O TIJERAS
// 099-Crea un subproceso que realice una comparativa entre las elecciones de jugador
// y ordenador.
// Codificación: 1 = Piedra, 2 = Papel, 3 = Tijeras
// Papel gana a Piedra, Tijeras gana a Papel y Piedra gana a Tijeras: cada jugada gana
// a la anterior (de forma circular), por eso (jugador - ordenador + 3) % 3 vale
// 0 si empatan, 1 si gana el jugador y 2 si gana el ordenador.

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

// Devuelve 0 = empate, 1 = gana el jugador, 2 = gana el ordenador
Funcion resultado <- Comparar(jugador, ordenador)
	Definir resultado Como Entero;
	resultado = (jugador - ordenador + 3) % 3;
FinFuncion

Algoritmo Ejercicio099
	Definir jugador, ordenador Como Entero;
	jugador = 0;
	ordenador = 0;
	// Se prueban todas las combinaciones posibles
	Para jugador = 1 Hasta 3 Con Paso 1 Hacer
		Para ordenador = 1 Hasta 3 Con Paso 1 Hacer
			Escribir NombreJugada(jugador), " contra ", NombreJugada(ordenador), ": " Sin Saltar;
			Segun Comparar(jugador, ordenador) Hacer
				0:
					Escribir "empate";
				1:
					Escribir "gana el jugador";
				De Otro Modo:
					Escribir "gana el ordenador";
			FinSegun
		FinPara
	FinPara
FinAlgoritmo
