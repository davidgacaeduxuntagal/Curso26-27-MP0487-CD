// Proyecto BLACKJACK
// 089-Crear un subproceso que mezcle la baraja.

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

Funcion MostrarBaraja(baraja)
	Definir i Como Entero;
	Para i = 0 Hasta 51 Con Paso 1 Hacer
		Escribir NombreCarta(baraja[i]) Sin Saltar;
		Si (i + 1) % 13 = 0 Entonces
			Escribir "";
		SiNo
			Escribir ", " Sin Saltar;
		FinSi
	FinPara
FinFuncion

// Algoritmo de Fisher-Yates: cada carta, desde la última, se intercambia con otra
// elegida al azar entre las que quedan por delante (ella incluida)
Funcion MezclarBaraja(baraja)
	Definir i, j, aux Como Entero;
	Para i = 51 Hasta 1 Con Paso -1 Hacer
		j = azar(i + 1);
		aux = baraja[i];
		baraja[i] = baraja[j];
		baraja[j] = aux;
	FinPara
FinFuncion

Algoritmo Ejercicio089
	Definir baraja Como Entero;
	Dimension baraja[52];
	CrearBaraja(baraja);
	Escribir "Baraja ordenada:";
	MostrarBaraja(baraja);
	MezclarBaraja(baraja);
	Escribir "";
	Escribir "Baraja mezclada:";
	MostrarBaraja(baraja);
FinAlgoritmo
