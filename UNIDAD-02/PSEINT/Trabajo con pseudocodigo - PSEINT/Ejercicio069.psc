// 069-Crea un subproceso que calcule el mcm (mínimo común múltiplo) de varios números
// proporcionados en un arreglo. Prueba su funcionamiento en el algoritmo principal.
// mcm(a, b) = a * b / MCD(a, b)  y  mcm(a, b, c) = mcm(mcm(a, b), c)

Funcion resultado <- MCD(a, b)
	Definir resultado, resto Como Entero;
	a = abs(a);
	b = abs(b);
	Mientras b <> 0 Hacer
		resto = a % b;
		a = b;
		b = resto;
	FinMientras
	resultado = a;
FinFuncion

Funcion resultado <- MCM(a, b)
	Definir resultado Como Entero;
	resultado = trunc(abs(a) / MCD(a, b)) * abs(b);
FinFuncion

Funcion resultado <- MCMLista(lista, n)
	Definir resultado, i Como Entero;
	resultado = lista[0];
	Para i = 1 Hasta n - 1 Con Paso 1 Hacer
		resultado = MCM(resultado, lista[i]);
	FinPara
FinFuncion

Algoritmo Ejercicio069
	Definir n, i, numeros Como Entero;
	n = 0;
	i = 0;
	Repetir
		Escribir "¿De cuántos números quieres el mcm? " Sin Saltar;
		Leer n;
	Hasta Que n > 0
	Dimension numeros[n];
	Para i = 0 Hasta n - 1 Con Paso 1 Hacer
		Repetir
			Escribir "Número ", i + 1, " (distinto de 0): " Sin Saltar;
			Leer numeros[i];
		Hasta Que numeros[i] <> 0
	FinPara
	Escribir "El mcm es: ", MCMLista(numeros, n);
FinAlgoritmo
