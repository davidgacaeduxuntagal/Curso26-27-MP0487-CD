// Proyecto BLACKJACK
// 092-Completar el juego creando los subprocesos que sean necesarios para simular la
// tirada del crupier. El crupier pide carta mientras tenga menos de 17 puntos.

Funcion nombre <- NombreCarta(carta)
	Definir nombre, figura, palo Como Cadena;
	Definir valor, numPalo Como Entero;
	valor = carta % 13 + 1;
	numPalo = trunc(carta / 13);
	Segun valor Hacer
		1:
			figura = "As";
		11:
			figura = "J";
		12:
			figura = "Q";
		13:
			figura = "K";
		De Otro Modo:
			figura = ConvertirATexto(valor);
	FinSegun
	Segun numPalo Hacer
		0:
			palo = "Corazones";
		1:
			palo = "Diamantes";
		2:
			palo = "Tréboles";
		De Otro Modo:
			palo = "Picas";
	FinSegun
	nombre = Concatenar(Concatenar(figura, " de "), palo);
FinFuncion

Funcion CrearBaraja(baraja)
	Definir i Como Entero;
	Para i = 0 Hasta 51 Con Paso 1 Hacer
		baraja[i] = i;
	FinPara
FinFuncion

Funcion MezclarBaraja(baraja)
	Definir i, j, aux Como Entero;
	Para i = 51 Hasta 1 Con Paso -1 Hacer
		j = azar(i + 1);
		aux = baraja[i];
		baraja[i] = baraja[j];
		baraja[j] = aux;
	FinPara
FinFuncion

Funcion carta <- TomarCarta(baraja, siguiente Por Referencia)
	Definir carta Como Entero;
	carta = baraja[siguiente];
	siguiente = siguiente + 1;
FinFuncion

Funcion puntos <- PuntosCarta(carta)
	Definir puntos, valor Como Entero;
	valor = carta % 13 + 1;
	Si valor = 1 Entonces
		puntos = 11;
	SiNo
		Si valor > 10 Entonces
			puntos = 10;
		SiNo
			puntos = valor;
		FinSi
	FinSi
FinFuncion

Funcion total <- PuntosMano(mano, n)
	Definir total, ases, i Como Entero;
	total = 0;
	ases = 0;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		total = total + PuntosCarta(mano[i]);
		Si mano[i] % 13 = 0 Entonces
			ases = ases + 1;
		FinSi
	FinPara
	Mientras total > 21 & ases > 0 Hacer
		total = total - 10;
		ases = ases - 1;
	FinMientras
FinFuncion

Funcion MostrarMano(mano, n)
	Definir i Como Entero;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "   ", NombreCarta(mano[i]);
	FinPara
	Escribir "   Puntos: ", PuntosMano(mano, n);
FinFuncion

Funcion puntos <- TurnoJugador(baraja, siguiente Por Referencia)
	Definir puntos, mano, nCartas Como Entero;
	Definir respuesta Como Cadena;
	Dimension mano[12];
	nCartas = 0;
	respuesta = "S";
	mano[0] = TomarCarta(baraja, siguiente);
	mano[1] = TomarCarta(baraja, siguiente);
	nCartas = 2;
	puntos = PuntosMano(mano, nCartas);
	Escribir "Tus cartas:";
	MostrarMano(mano, nCartas);
	Mientras puntos < 21 & respuesta = "S" Hacer
		Escribir "¿Quieres otra carta? (S/N): " Sin Saltar;
		Leer respuesta;
		respuesta = Mayusculas(respuesta);
		Si respuesta = "S" Entonces
			mano[nCartas] = TomarCarta(baraja, siguiente);
			nCartas = nCartas + 1;
			puntos = PuntosMano(mano, nCartas);
			Escribir "Tus cartas:";
			MostrarMano(mano, nCartas);
		FinSi
	FinMientras
FinFuncion

// El crupier no decide: pide carta obligatoriamente hasta llegar a 17 o más
Funcion puntos <- TurnoCrupier(baraja, siguiente Por Referencia)
	Definir puntos, mano, nCartas Como Entero;
	Dimension mano[12];
	mano[0] = TomarCarta(baraja, siguiente);
	mano[1] = TomarCarta(baraja, siguiente);
	nCartas = 2;
	puntos = PuntosMano(mano, nCartas);
	Mientras puntos < 17 Hacer
		mano[nCartas] = TomarCarta(baraja, siguiente);
		nCartas = nCartas + 1;
		puntos = PuntosMano(mano, nCartas);
	FinMientras
	Escribir "Cartas del crupier:";
	MostrarMano(mano, nCartas);
FinFuncion

Algoritmo Ejercicio092
	Definir baraja, siguiente, puntosJugador, puntosCrupier Como Entero;
	Dimension baraja[52];
	siguiente = 0;
	puntosJugador = 0;
	puntosCrupier = 0;
	Escribir "===== BLACKJACK =====";
	CrearBaraja(baraja);
	MezclarBaraja(baraja);
	puntosJugador = TurnoJugador(baraja, siguiente);
	Si puntosJugador > 21 Entonces
		Escribir "Te has pasado de 21. ¡Gana la banca!";
	SiNo
		Escribir "Te plantas con ", puntosJugador, ". Juega el crupier...";
		puntosCrupier = TurnoCrupier(baraja, siguiente);
		Si puntosCrupier > 21 Entonces
			Escribir "El crupier se ha pasado. ¡Ganas tú!";
		SiNo
			Si puntosJugador > puntosCrupier Entonces
				Escribir "¡Ganas tú! (", puntosJugador, " a ", puntosCrupier, ")";
			SiNo
				Si puntosJugador < puntosCrupier Entonces
					Escribir "Gana la banca (", puntosCrupier, " a ", puntosJugador, ")";
				SiNo
					Escribir "Empate a ", puntosJugador;
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
