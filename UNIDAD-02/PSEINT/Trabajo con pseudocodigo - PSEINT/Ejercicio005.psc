// 005-Calcular el precio final de un artículo, conociendo el precio inicial
// y el porcentaje de descuento.

Algoritmo Ejercicio005
	Definir precioInicial, descuento, precioFinal Como Real;
	precioInicial = 0;
	descuento = 0;
	precioFinal = 0;
	Escribir "Indique el precio del artículo: " Sin Saltar;
	Leer precioInicial;
	Escribir "Indique el porcentaje de descuento: " Sin Saltar;
	Leer descuento;
	precioFinal = precioInicial * (1 - descuento / 100);
	Escribir "El precio final del artículo es: ", precioFinal, " €";
FinAlgoritmo
