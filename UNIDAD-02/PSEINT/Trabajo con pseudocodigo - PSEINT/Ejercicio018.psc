// 018-Un artículo determinado sigue la siguiente política de descuentos:
//   -15% si se compran más de 1000 unidades.
//   -10% si se compran entre 500 y 999 unidades.
//   -5% si se compran entre 200 y 499 unidades.
// Calcula el coste final de un pedido dado el precio de artículo y las unidades de compra.
// NOTA: el enunciado deja sin tramo las 1000 unidades exactas; se les aplica el 15%.

Algoritmo Ejercicio018
	Definir precio, descuento, coste Como Real;
	Definir unidades Como Entero;
	precio = 0;
	unidades = 0;
	descuento = 0;
	coste = 0;
	Escribir "Precio del artículo: " Sin Saltar;
	Leer precio;
	Escribir "Unidades compradas: " Sin Saltar;
	Leer unidades;
	Si unidades >= 1000 Entonces
		descuento = 15;
	SiNo
		Si unidades >= 500 Entonces
			descuento = 10;
		SiNo
			Si unidades >= 200 Entonces
				descuento = 5;
			FinSi
		FinSi
	FinSi
	coste = precio * unidades * (1 - descuento / 100);
	Escribir "Descuento aplicado: ", descuento, "%";
	Escribir "Coste final del pedido: ", coste, " €";
FinAlgoritmo
