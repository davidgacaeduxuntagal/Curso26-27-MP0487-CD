// 068-Haz un subproceso que devuelva el número mayor de una lista de números que se
// le proporcione en forma de arreglo. Crea el algoritmo principal necesario para
// probar su funcionamiento.

Funcion mayor <- MayorDeLista(lista, n)
	Definir mayor Como Real;
	Definir i Como Entero;
	mayor = lista[0];
	Para i = 1 Hasta n - 1 Con Paso 1 Hacer
		Si lista[i] > mayor Entonces
			mayor = lista[i];
		FinSi
	FinPara
FinFuncion

Algoritmo Ejercicio068
	Definir n, i Como Entero;
	Definir numeros Como Real;
	n = 0;
	i = 0;
	Repetir
		Escribir "¿Cuántos números tiene la lista? " Sin Saltar;
		Leer n;
	Hasta Que n > 0
	Dimension numeros[n];
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Escribir "Número ", i + 1, ": " Sin Saltar;
		Leer numeros[i];
	FinPara
	Escribir "El mayor de la lista es: ", MayorDeLista(numeros, n);
FinAlgoritmo
