// 072-Calcula las soluciones de una ecuación de segundo grado conociendo los
// coeficientes (ax^2 + bx + c = 0). Utiliza subprocesos para ayudarte en el cálculo.

Funcion d <- Discriminante(a, b, c)
	Definir d Como Real;
	d = b ^ 2 - 4 * a * c;
FinFuncion

Funcion PedirCoeficiente(nombre, valor Por Referencia)
	Escribir "Coeficiente ", nombre, ": " Sin Saltar;
	Leer valor;
FinFuncion

Funcion ResolverEcuacion(a, b, c)
	Definir d, x1, x2 Como Real;
	Si a = 0 Entonces
		// No es de segundo grado: bx + c = 0
		Si b = 0 Entonces
			Escribir "No es una ecuación válida";
		SiNo
			Escribir "Ecuación de primer grado. x = ", -c / b;
		FinSi
	SiNo
		d = Discriminante(a, b, c);
		Si d > 0 Entonces
			x1 = (-b + rc(d)) / (2 * a);
			x2 = (-b - rc(d)) / (2 * a);
			Escribir "Dos soluciones reales: x1 = ", x1, "  x2 = ", x2;
		SiNo
			Si d = 0 Entonces
				Escribir "Una solución real doble: x = ", -b / (2 * a);
			SiNo
				// Soluciones complejas: -b/2a ± (raíz(-d)/2a) i
				Escribir "No tiene soluciones reales. Soluciones complejas:";
				Escribir "x1 = ", -b / (2 * a), " + ", rc(-d) / (2 * a), "i";
				Escribir "x2 = ", -b / (2 * a), " - ", rc(-d) / (2 * a), "i";
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo Ejercicio072
	Definir a, b, c Como Real;
	a = 0;
	b = 0;
	c = 0;
	Escribir "Ecuación ax^2 + bx + c = 0";
	PedirCoeficiente("a", a);
	PedirCoeficiente("b", b);
	PedirCoeficiente("c", c);
	ResolverEcuacion(a, b, c);
FinAlgoritmo
