// 082-Crea un programa que dada una frase haga un dibujo como el siguiente:
//   Dime la frase
//   > CURSO DE PSEINT CON 100 EJERCICIOS
//   ****************************************
//   **CURSO DE PSEINT CON 100 EJERCICIOS**
//   ****************************************

Algoritmo Ejercicio082
	Definir frase Como Cadena;
	Definir i, ancho Como Entero;
	frase = "";
	i = 0;
	Escribir "Dime la frase";
	Leer frase;
	// La línea de asteriscos mide lo mismo que la frase más los cuatro asteriscos laterales
	ancho = Longitud(frase) + 4;
	Para i = 1 Hasta ancho Con Paso 1 Hacer
		Escribir "*" Sin Saltar;
	FinPara
	Escribir "";
	Escribir "**", frase, "**";
	Para i = 1 Hasta ancho Con Paso 1 Hacer
		Escribir "*" Sin Saltar;
	FinPara
	Escribir "";
FinAlgoritmo
