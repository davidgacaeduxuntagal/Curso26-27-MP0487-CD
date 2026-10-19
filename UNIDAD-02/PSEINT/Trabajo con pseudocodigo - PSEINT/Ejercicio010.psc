// 010-Calcula la longitud de la circunferencia y el área del círculo dado el radio.

Algoritmo Ejercicio010
	Definir radio, longitudCirc, area Como Real;
	radio = 0;
	longitudCirc = 0;
	area = 0;
	Escribir "Dime el radio: " Sin Saltar;
	Leer radio;
	longitudCirc = 2 * PI * radio;
	area = PI * radio ^ 2;
	Escribir "Longitud de la circunferencia: ", longitudCirc;
	Escribir "Área del círculo: ", area;
FinAlgoritmo
