// 021-Pide al usuario que te dé el valor de dos números. Posteriormente el usuario
// tendrá que elegir qué operación quiere que se realice entre ellos según un menú
// que muestre las opciones: 1-Suma 2-Resta 3-Multiplicación 4-División.
// Si intenta dividir entre 0 habrá que indicarlo con un mensaje.

Algoritmo Ejercicio021
	Definir num1, num2 Como Real;
	Definir eleccion Como Entero;
	num1 = 0;
	num2 = 0;
	eleccion = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer num1;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer num2;
	Escribir "1-Suma";
	Escribir "2-Resta";
	Escribir "3-Multiplicación";
	Escribir "4-División";
	Escribir "Elige una operación: " Sin Saltar;
	Leer eleccion;
	Segun eleccion Hacer
		1:
			Escribir num1, " + ", num2, " = ", num1 + num2;
		2:
			Escribir num1, " - ", num2, " = ", num1 - num2;
		3:
			Escribir num1, " x ", num2, " = ", num1 * num2;
		4:
			Si num2 = 0 Entonces
				Escribir "ERROR: no se puede dividir entre 0";
			SiNo
				Escribir num1, " / ", num2, " = ", num1 / num2;
			FinSi
		De Otro Modo:
			Escribir "Opción no válida";
	FinSegun
FinAlgoritmo
