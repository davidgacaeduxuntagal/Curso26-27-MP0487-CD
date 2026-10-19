// 067-Crea un subproceso que reciba tres números por referencia y que los ordene de
// mayor a menor al pasarle los valores desde el algoritmo principal. Muestra los
// valores por pantalla.

Funcion Intercambiar(x Por Referencia, y Por Referencia)
	Definir aux Como Real;
	aux = x;
	x = y;
	y = aux;
FinFuncion

Funcion Ordenar3(a Por Referencia, b Por Referencia, c Por Referencia)
	Si a < b Entonces
		Intercambiar(a, b);
	FinSi
	Si a < c Entonces
		Intercambiar(a, c);
	FinSi
	// En este punto "a" es el mayor; falta colocar b y c
	Si b < c Entonces
		Intercambiar(b, c);
	FinSi
FinFuncion

Algoritmo Ejercicio067
	Definir n1, n2, n3 Como Real;
	n1 = 0;
	n2 = 0;
	n3 = 0;
	Escribir "Primer número: " Sin Saltar;
	Leer n1;
	Escribir "Segundo número: " Sin Saltar;
	Leer n2;
	Escribir "Tercer número: " Sin Saltar;
	Leer n3;
	Ordenar3(n1, n2, n3);
	Escribir "De mayor a menor: ", n1, ", ", n2, ", ", n3;
FinAlgoritmo
