// Proyecto CRAPS
// 096-Aprovecha los ejercicios anteriores para hacer un subproceso que simule
// completamente el juego Craps: en la segunda tirada y sucesivas se gana si se
// consigue repetir el punto y se pierde con un 7. Cualquier otro resultado lleva a
// otra tirada.

Funcion suma <- TirarDados
	Definir suma, dado1, dado2 Como Entero;
	dado1 = azar(6) + 1;
	dado2 = azar(6) + 1;
	suma = dado1 + dado2;
	Escribir "Dados: ", dado1, " + ", dado2, " = ", suma;
FinFuncion

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

Funcion ganado <- TiradasSucesivas(punto)
	Definir ganado Como Logico;
	Definir tirada Como Entero;
	Repetir
		tirada = TirarDados();
	Hasta Que tirada = punto | tirada = 7
	ganado = tirada = punto;
FinFuncion

// Partida completa: devuelve Verdadero si el jugador gana
Funcion ganado <- JugarCraps
	Definir ganado Como Logico;
	Definir resultado, punto Como Entero;
	punto = 0;
	resultado = PrimeraTirada(punto);
	Si resultado = 1 Entonces
		Escribir "¡7 u 11 en la primera tirada!";
		ganado = Verdadero;
	SiNo
		Si resultado = -1 Entonces
			Escribir "Craps (2, 3 o 12) en la primera tirada.";
			ganado = Falso;
		SiNo
			Escribir "Punto: ", punto, ". Hay que repetirlo antes de que salga un 7.";
			ganado = TiradasSucesivas(punto);
		FinSi
	FinSi
FinFuncion

Algoritmo Ejercicio096
	Definir respuesta Como Cadena;
	Definir partidas, victorias Como Entero;
	respuesta = "S";
	partidas = 0;
	victorias = 0;
	Escribir "===== CRAPS =====";
	Mientras respuesta = "S" Hacer
		partidas = partidas + 1;
		Si JugarCraps() Entonces
			Escribir "¡HAS GANADO!";
			victorias = victorias + 1;
		SiNo
			Escribir "HAS PERDIDO";
		FinSi
		Escribir "¿Otra partida? (S/N): " Sin Saltar;
		Leer respuesta;
		respuesta = Mayusculas(respuesta);
	FinMientras
	Escribir "Has ganado ", victorias, " de ", partidas, " partida(s)";
FinAlgoritmo
