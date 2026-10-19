// Proyecto BLACKJACK
// 088-Crear un subproceso que genere una baraja y mostrarla por pantalla.
// Cada carta se representa con un número del 0 al 51:
//   palo  = trunc(carta / 13)  -> 0 Corazones, 1 Diamantes, 2 Tréboles, 3 Picas
//   valor = carta % 13 + 1     -> 1 As, 2..10, 11 J, 12 Q, 13 K

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

// Muestra la baraja en filas de 13 cartas
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

Algoritmo Ejercicio088
	Definir baraja Como Entero;
	Dimension baraja[52];
	CrearBaraja(baraja);
	MostrarBaraja(baraja);
FinAlgoritmo
