// 023-Para determinar la tarifa de un gimnasio se tiene en cuenta la siguiente tabla.
// Indica cuánto tendrá que pagar el usuario según sus preferencias:
//                  HORAS:    1        2        3
//   (M) MAÑANAS          20,00 €  30,00 €  40,00 €
//   (T) TARDES           30,00 €  40,00 €  50,00 €

Algoritmo Ejercicio023
	Definir tarifas Como Real;
	Definir periodo Como Caracter;
	Definir horas, fila Como Entero;
	Dimension tarifas[2,3];
	// Fila 0: mañanas; fila 1: tardes. Columna = horas - 1
	tarifas[0,0] = 20; tarifas[0,1] = 30; tarifas[0,2] = 40;
	tarifas[1,0] = 30; tarifas[1,1] = 40; tarifas[1,2] = 50;
	periodo = "";
	horas = 0;
	fila = 0;
	Repetir
		Escribir "Período (M = mañanas, T = tardes): " Sin Saltar;
		Leer periodo;
		periodo = Mayusculas(periodo);
	Hasta Que periodo = "M" | periodo = "T"
	Repetir
		Escribir "Horas (1, 2 o 3): " Sin Saltar;
		Leer horas;
	Hasta Que horas >= 1 & horas <= 3
	Si periodo = "M" Entonces
		fila = 0;
	SiNo
		fila = 1;
	FinSi
	Escribir "Tendrá que pagar: ", tarifas[fila, horas - 1], " €";
FinAlgoritmo
