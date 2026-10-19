// 009-Diseña el programa que dado el precio de venta de un artículo calcule su
// precio antes de impuestos, (IVA 21%).

Algoritmo Ejercicio009
	Definir precioVenta, precioSinIva Como Real;
	precioVenta = 0;
	precioSinIva = 0;
	Escribir "Dime el precio de venta (con IVA): " Sin Saltar;
	Leer precioVenta;
	// precioVenta = precioSinIva * 1.21
	precioSinIva = precioVenta / 1.21;
	Escribir "Precio antes de impuestos: ", precioSinIva, " €";
	Escribir "IVA (21%): ", precioVenta - precioSinIva, " €";
FinAlgoritmo
