// 006-Pide al usuario dos números. Posteriormente muestra por pantalla el resultado
// de sumarlos, restarlos, multiplicarlos, dividirlos, hacer la potencia del primero
// elevado al segundo y el resto que resulte de dividir el primero entre el segundo.

Algoritmo Ejercicio006
	Definir num1, num2 Como Entero;
	num1 = 0;
	num2 = 0;
	Escribir "Dime el primer número: " Sin Saltar;
	Leer num1;
	Escribir "Dime el segundo número: " Sin Saltar;
	Leer num2;
	Escribir num1, " + ", num2, " = ", num1 + num2;
	Escribir num1, " - ", num2, " = ", num1 - num2;
	Escribir num1, " x ", num2, " = ", num1 * num2;
	Escribir num1, " ^ ", num2, " = ", num1 ^ num2;
	// La división y el resto no se pueden calcular si el divisor es cero
	Si num2 <> 0 Entonces
		Escribir num1, " / ", num2, " = ", num1 / num2;
		Escribir num1, " % ", num2, " = ", num1 % num2;
	SiNo
		Escribir "No se puede dividir entre cero (ni calcular el resto).";
	FinSi
FinAlgoritmo
