// 056-Pide al usuario que te diga cómo se llama y después salúdale con la frase
// "Hola, <nombre>, ¿Cómo estás?"

Algoritmo Ejercicio056
	Definir nombre, saludo Como Cadena;
	nombre = "";
	saludo = "";
	Escribir "¿Cómo te llamas? " Sin Saltar;
	Leer nombre;
	saludo = Concatenar(Concatenar("Hola, ", nombre), ", ¿Cómo estás?");
	Escribir saludo;
FinAlgoritmo
