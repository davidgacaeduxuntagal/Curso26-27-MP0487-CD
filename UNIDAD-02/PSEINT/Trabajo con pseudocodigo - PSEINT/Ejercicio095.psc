// Proyecto CRAPS
// 095-Crea un subproceso que simule la segunda tirada y sucesivas donde se gana si se
// consigue repetir el punto y se pierde con un 7. Cualquier otro resultado lleva a
// otra tirada.

Funcion suma <- TirarDados
	Definir suma, dado1, dado2 Como Entero;
	dado1 = azar(6) + 1;
	dado2 = azar(6) + 1;
	suma = dado1 + dado2;
	Escribir "Dados: ", dado1, " + ", dado2, " = ", suma;
FinFuncion

// Devuelve Verdadero si se repite el punto antes de que salga un 7
Funcion ganado <- TiradasSucesivas(punto)
	Definir ganado Como Logico;
	Definir tirada Como Entero;
	Repetir
		tirada = TirarDados();
	Hasta Que tirada = punto | tirada = 7
	ganado = tirada = punto;
FinFuncion

Algoritmo Ejercicio095
	Definir punto Como Entero;
	punto = 0;
	Repetir
		Escribir "¿Qué punto se ha establecido? (4, 5, 6, 8, 9 o 10): " Sin Saltar;
		Leer punto;
	Hasta Que punto = 4 | punto = 5 | punto = 6 | punto = 8 | punto = 9 | punto = 10
	Si TiradasSucesivas(punto) Entonces
		Escribir "¡Has repetido el punto! Ganas.";
	SiNo
		Escribir "Ha salido un 7. Pierdes.";
	FinSi
FinAlgoritmo
