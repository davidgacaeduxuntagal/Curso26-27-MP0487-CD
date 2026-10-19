// 003-Convertir un dato de temperatura en Celsius a Kelvin (K=C+273)

Algoritmo Ejercicio003
	Definir celsius, kelvin Como Real;
	celsius = 0;
	kelvin = 0;
	Escribir "CONVERSOR DE CELSIUS A KELVIN";
	Escribir "Escriba la temperatura en grados Celsius: " Sin Saltar;
	Leer celsius;
	kelvin = celsius + 273.15;
	Escribir celsius, " ºC equivalen a ", kelvin, " K";
FinAlgoritmo
