// Proyecto LOTERÍA PRIMITIVA
// 084-Crea un subproceso que pida al usuario 6 números (del 1 al 49) y uno para el
// reintegro (del 0 al 9). Asegúrate de que los números elegidos son correctos (que no
// se salgan del rango, ni se repitan). Prueba su funcionamiento en un algoritmo
// principal en el que muestres por pantalla los números que ha elegido el usuario.

// Indica si "valor" está entre las n primeras posiciones de la lista
Funcion esta <- Contiene(lista, n, valor)
	Definir esta Como Logico;
	Definir i Como Entero;
	esta = Falso;
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Si lista[i] = valor Entonces
			esta = Verdadero;
		FinSi
	FinPara
FinFuncion

// Rellena "numeros" (6 posiciones) y devuelve el reintegro por referencia
Funcion PedirApuesta(numeros, reintegro Por Referencia)
	Definir i, num Como Entero;
	Definir correcto Como Logico;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Repetir
			Escribir "Número ", i + 1, " (1-49): " Sin Saltar;
			Leer num;
			correcto = Verdadero;
			Si num < 1 | num > 49 Entonces
				Escribir "   Fuera de rango.";
				correcto = Falso;
			SiNo
				Si Contiene(numeros, i, num) Entonces
					Escribir "   Ese número ya lo has elegido.";
					correcto = Falso;
				FinSi
			FinSi
		Hasta Que correcto
		numeros[i] = num;
	FinPara
	Repetir
		Escribir "Reintegro (0-9): " Sin Saltar;
		Leer reintegro;
	Hasta Que reintegro >= 0 & reintegro <= 9
FinFuncion

Algoritmo Ejercicio084
	Definir apuesta, reintegro, i Como Entero;
	Dimension apuesta[6];
	reintegro = 0;
	i = 0;
	PedirApuesta(apuesta, reintegro);
	Escribir "Tu apuesta: " Sin Saltar;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Escribir apuesta[i], " " Sin Saltar;
	FinPara
	Escribir " - Reintegro: ", reintegro;
FinAlgoritmo
