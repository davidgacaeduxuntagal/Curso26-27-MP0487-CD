// Proyecto BLACKJACK
// 090-Crear un subproceso que tome la primera carta de la baraja.
// La variable "siguiente" indica la posición de la carta que está encima del mazo;
// cada vez que se toma una carta avanza una posición.

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

Algoritmo Ejercicio090
	Definir baraja, siguiente, i, carta Como Entero;
	Dimension baraja[52];
	siguiente = 0;
	i = 0;
	carta = 0;
	CrearBaraja(baraja);
	MezclarBaraja(baraja);
	Escribir "Tomamos 5 cartas de la baraja mezclada:";
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		carta = TomarCarta(baraja, siguiente);
		Escribir "   ", NombreCarta(carta);
	FinPara
	Escribir "Quedan ", 52 - siguiente, " cartas en la baraja";
FinAlgoritmo
