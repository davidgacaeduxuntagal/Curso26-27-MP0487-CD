// 037-Averigua cuál es el dígito más pequeño de un número dado.

Algoritmo Ejercicio037
	Definir num, aux, digito, menor Como Entero;
	num = 0;
	Escribir "Dime un número entero: " Sin Saltar;
	Leer num;
	aux = abs(num);
	menor = 9;
	Repetir
		digito = aux % 10;
		Si digito < menor Entonces
			menor = digito;
		FinSi
		aux = trunc(aux / 10);
	Hasta Que aux = 0
	Escribir "El dígito más pequeño de ", num, " es: ", menor;
FinAlgoritmo
