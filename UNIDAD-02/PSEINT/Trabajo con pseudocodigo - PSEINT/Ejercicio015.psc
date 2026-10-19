// 015-Calcula el sueldo de un trabajador dado su sueldo base y sabiendo que si ha
// trabajado más de 40 horas cobrará un 20% más.

Algoritmo Ejercicio015
	Definir sueldoBase, sueldoFinal, horas Como Real;
	sueldoBase = 0;
	sueldoFinal = 0;
	horas = 0;
	Escribir "Dime el sueldo base: " Sin Saltar;
	Leer sueldoBase;
	Escribir "Dime las horas trabajadas: " Sin Saltar;
	Leer horas;
	Si horas > 40 Entonces
		sueldoFinal = sueldoBase * 1.20;
	SiNo
		sueldoFinal = sueldoBase;
	FinSi
	Escribir "El sueldo a cobrar es: ", sueldoFinal, " €";
FinAlgoritmo
