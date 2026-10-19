// 020-Para recibir una subvención una empresa tiene que cumplir los siguientes
// criterios (TODOS):
//   -Provincia de CUENCA, TERUEL, o SORIA.
//   -Tener al menos 5 trabajadores.
// Determina si la empresa recibirá o no subvención una vez aportados los datos.

Algoritmo Ejercicio020
	Definir provincia Como Cadena;
	Definir trabajadores Como Entero;
	Definir provinciaValida Como Logico;
	provincia = "";
	trabajadores = 0;
	provinciaValida = Falso;
	Escribir "Provincia de la empresa: " Sin Saltar;
	Leer provincia;
	Escribir "Número de trabajadores: " Sin Saltar;
	Leer trabajadores;
	// Pasamos a mayúsculas para que no importe cómo lo escriba el usuario
	provincia = Mayusculas(provincia);
	provinciaValida = provincia = "CUENCA" | provincia = "TERUEL" | provincia = "SORIA";
	Si provinciaValida & trabajadores >= 5 Entonces
		Escribir "La empresa RECIBIRÁ la subvención";
	SiNo
		Escribir "La empresa NO recibirá la subvención";
	FinSi
FinAlgoritmo
