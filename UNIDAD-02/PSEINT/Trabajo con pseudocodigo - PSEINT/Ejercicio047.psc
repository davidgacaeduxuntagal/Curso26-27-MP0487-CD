// 047-Pide al usuario que introduzca el valor de las componentes x,y,z de un vector
// de 3 dimensiones y guárdalas en un arreglo. Después calcula y muestra por pantalla
// su módulo (raíz cuadrada de la suma de los cuadrados de todas las componentes).

Algoritmo Ejercicio047
	Definir vector, sumaCuadrados Como Real;
	Definir nombres Como Cadena;
	Definir i Como Entero;
	Dimension vector[3];
	Dimension nombres[3];
	nombres[0] = "x";
	nombres[1] = "y";
	nombres[2] = "z";
	sumaCuadrados = 0;
	i = 0;
	Para i = 0 Hasta 2 Con Paso 1 Hacer
		Escribir "Componente ", nombres[i], ": " Sin Saltar;
		Leer vector[i];
		sumaCuadrados = sumaCuadrados + vector[i] ^ 2;
	FinPara
	Escribir "El módulo del vector (", vector[0], ", ", vector[1], ", ", vector[2], ") es: ", rc(sumaCuadrados);
FinAlgoritmo
