// 007-Escribe un programa que calcule el área y el perímetro de un triángulo
// rectángulo, dados los dos catetos.

Algoritmo Ejercicio007
	Definir cateto1, cateto2, hipotenusa, area, perimetro Como Real;
	cateto1 = 0;
	cateto2 = 0;
	Escribir "Dime la longitud del primer cateto: " Sin Saltar;
	Leer cateto1;
	Escribir "Dime la longitud del segundo cateto: " Sin Saltar;
	Leer cateto2;
	// Teorema de Pitágoras: h^2 = c1^2 + c2^2
	hipotenusa = rc(cateto1 ^ 2 + cateto2 ^ 2);
	area = cateto1 * cateto2 / 2;
	perimetro = cateto1 + cateto2 + hipotenusa;
	Escribir "Área: ", area;
	Escribir "Perímetro: ", perimetro;
FinAlgoritmo
