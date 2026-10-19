// Proyecto PIEDRA, PAPEL O TIJERAS
// 097-Crea un subproceso que simule la tirada del ordenador.
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

Funcion jugada <- TiradaOrdenador
	Definir jugada Como Entero;
	jugada = azar(3) + 1;
FinFuncion

Algoritmo Ejercicio097
	Definir i Como Entero;
	i = 0;
	Escribir "Cinco tiradas del ordenador:";
	Para i = 1 Hasta 5 Con Paso 1 Hacer
		Escribir "   ", NombreJugada(TiradaOrdenador());
	FinPara
FinAlgoritmo
