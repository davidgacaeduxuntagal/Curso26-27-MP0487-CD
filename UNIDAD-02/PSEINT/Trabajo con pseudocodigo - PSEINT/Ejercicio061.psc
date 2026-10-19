// 061-Crea un subproceso que sume dos números, otro que los reste, otro que los
// multiplique y otro que los divida. Posteriormente pide dos números al usuario y que
// elija la operación que quiere realizar con ellos. Muestra el resultado por pantalla.
// Al menos un subproceso tendrá que ser sin retorno y otro con retorno.

// Con retorno
Funcion resultado <- Sumar(a, b)
	Definir resultado Como Real;
	resultado = a + b;
FinFuncion

// Con retorno
Funcion resultado <- Restar(a, b)
	Definir resultado Como Real;
	resultado = a - b;
FinFuncion

// Sin retorno: escribe directamente el resultado
Funcion Multiplicar(a, b)
	Escribir a, " x ", b, " = ", a * b;
FinFuncion

// Sin retorno: escribe directamente el resultado
Funcion Dividir(a, b)
	Si b = 0 Entonces
		Escribir "ERROR: no se puede dividir entre 0";
	SiNo
		Escribir a, " / ", b, " = ", a / b;
	FinSi
FinFuncion

Algoritmo Ejercicio061
	Definir num1, num2 Como Real;
	Definir eleccion Como Entero;
	num1 = 0;
	num2 = 0;
	eleccion = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer num1;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer num2;
	Escribir "1-Sumar  2-Restar  3-Multiplicar  4-Dividir";
	Escribir "Elige una operación: " Sin Saltar;
	Leer eleccion;
	Segun eleccion Hacer
		1:
			Escribir num1, " + ", num2, " = ", Sumar(num1, num2);
		2:
			Escribir num1, " - ", num2, " = ", Restar(num1, num2);
		3:
			Multiplicar(num1, num2);
		4:
			Dividir(num1, num2);
		De Otro Modo:
			Escribir "Operación no válida";
	FinSegun
FinAlgoritmo
