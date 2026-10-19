// Proyecto LOTERÍA PRIMITIVA
// 087-Crea un programa en el que utilizando los subprocesos generados en los últimos
// 4 ejercicios simules el sorteo de lotería completo.
//   - Categoría Especial: seis números de la combinación ganadora y el reintegro
//   - 1ª Categoría: seis números de la combinación ganadora
//   - 2ª Categoría: cinco números de la combinación y el número complementario
//   - 3ª Categoría: cinco números de la combinación
//   - 4ª Categoría: cuatro números de la combinación
//   - 5ª Categoría: tres números de la combinación
//   - Reintegro: acertar el número del reintegro

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

Funcion Sorteo(combinacion, complementario Por Referencia, reintegro Por Referencia)
	Definir i, bola Como Entero;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Repetir
			bola = azar(49) + 1;
		Hasta Que ~Contiene(combinacion, i, bola)
		combinacion[i] = bola;
	FinPara
	Repetir
		complementario = azar(49) + 1;
	Hasta Que ~Contiene(combinacion, 6, complementario)
	reintegro = azar(10);
FinFuncion

Funcion aciertos <- Coincidencias(lista1, lista2)
	Definir aciertos, i Como Entero;
	aciertos = 0;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Si Contiene(lista2, 6, lista1[i]) Entonces
			aciertos = aciertos + 1;
		FinSi
	FinPara
FinFuncion

Funcion MostrarSeis(lista)
	Definir i Como Entero;
	Para i = 0 Hasta 5 Con Paso 1 Hacer
		Escribir lista[i], " " Sin Saltar;
	FinPara
	Escribir "";
FinFuncion

Algoritmo Ejercicio087
	Definir apuesta, reintegroJugador Como Entero;
	Definir combinacion, complementario, reintegroSorteo Como Entero;
	Definir aciertos Como Entero;
	Definir aciertaComplementario, aciertaReintegro Como Logico;
	Dimension apuesta[6];
	Dimension combinacion[6];
	reintegroJugador = 0;
	complementario = 0;
	reintegroSorteo = 0;
	Escribir "===== LOTERÍA PRIMITIVA =====";
	PedirApuesta(apuesta, reintegroJugador);
	Sorteo(combinacion, complementario, reintegroSorteo);
	Escribir "";
	Escribir "Tu apuesta:            " Sin Saltar;
	MostrarSeis(apuesta);
	Escribir "Tu reintegro:          ", reintegroJugador;
	Escribir "Combinación ganadora:  " Sin Saltar;
	MostrarSeis(combinacion);
	Escribir "Complementario:        ", complementario;
	Escribir "Reintegro:             ", reintegroSorteo;
	Escribir "";
	aciertos = Coincidencias(apuesta, combinacion);
	aciertaComplementario = Contiene(apuesta, 6, complementario);
	aciertaReintegro = reintegroJugador = reintegroSorteo;
	Escribir "Has acertado ", aciertos, " número(s).";
	Si aciertos = 6 & aciertaReintegro Entonces
		Escribir "¡¡¡PREMIO DE CATEGORÍA ESPECIAL!!!";
	SiNo
		Si aciertos = 6 Entonces
			Escribir "¡Premio de 1ª categoría!";
		SiNo
			Si aciertos = 5 & aciertaComplementario Entonces
				Escribir "¡Premio de 2ª categoría!";
			SiNo
				Si aciertos = 5 Entonces
					Escribir "¡Premio de 3ª categoría!";
				SiNo
					Si aciertos = 4 Entonces
						Escribir "¡Premio de 4ª categoría!";
					SiNo
						Si aciertos = 3 Entonces
							Escribir "¡Premio de 5ª categoría!";
						SiNo
							Si aciertaReintegro Entonces
								Escribir "Has ganado el reintegro.";
							SiNo
								Escribir "Lo siento, no has obtenido premio.";
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
