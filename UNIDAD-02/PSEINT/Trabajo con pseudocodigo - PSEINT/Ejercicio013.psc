// 013-Indica si un número dado es mayor, menor o igual a cero.

Algoritmo Ejercicio013
	Definir num Como Real;
	num = 0;
	Escribir "Dime un número: " Sin Saltar;
	Leer num;
	Si num > 0 Entonces
		Escribir "El número es mayor que cero";
	SiNo
		Si num = 0 Entonces
			Escribir "El número es igual a cero";
		SiNo
			Escribir "El número es menor que cero";
		FinSi
	FinSi
FinAlgoritmo
