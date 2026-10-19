// Proyecto BLACKJACK
// 091-Crear un subproceso que simule la tirada del jugador.
// El jugador recibe dos cartas y puede pedir más mientras no pase de 21.
// Valores: As = 11 o 1, figuras = 10, resto = su número.

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

// Puntos de una carta: el As cuenta inicialmente como 11
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

// Suma la mano; si se pasa de 21, cada As puede pasar a valer 1 (restando 10)
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

// Devuelve los puntos finales del jugador
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
	Si puntos > 21 Entonces
		Escribir "¡Te has pasado!";
	SiNo
		Si puntos = 21 Entonces
			Escribir "¡21!";
		FinSi
	FinSi
FinFuncion

Algoritmo Ejercicio091
	Definir baraja, siguiente, puntos Como Entero;
	Dimension baraja[52];
	siguiente = 0;
	puntos = 0;
	CrearBaraja(baraja);
	MezclarBaraja(baraja);
	puntos = TurnoJugador(baraja, siguiente);
	Escribir "Te has plantado con ", puntos, " puntos";
FinAlgoritmo
