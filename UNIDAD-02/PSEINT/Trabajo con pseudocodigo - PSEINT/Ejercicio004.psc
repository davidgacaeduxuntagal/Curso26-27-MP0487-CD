// 004-Convertir una distancia en millas náuticas en metros.
// 1 milla náutica son 1852 metros.

Algoritmo Ejercicio004
	Definir millasNauticas, metros Como Real;
	millasNauticas = 0;
	metros = 0;
	Escribir "CONVERSOR DE MILLAS NÁUTICAS A METROS";
	Escribir "Escriba la distancia en millas náuticas: " Sin Saltar;
	Leer millasNauticas;
	metros = millasNauticas * 1852;
	Escribir millasNauticas, " millas náuticas son ", metros, " m";
FinAlgoritmo
