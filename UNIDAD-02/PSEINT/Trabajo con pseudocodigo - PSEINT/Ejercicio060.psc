// 060-¡Encuentra la palabra oculta! El siguiente mensaje está encriptado de manera
// que para obtenerlo hay que escoger la primera letra de cada palabra:
//   "Estoy seguro te urge devolver intereses ahora"
// Crea un algoritmo para encontrar la solución al enigma.

Algoritmo Ejercicio060
	Definir mensaje, letra, anterior, oculta Como Cadena;
	Definir i Como Entero;
	mensaje = "Estoy seguro te urge devolver intereses ahora";
	letra = "";
	anterior = " ";
	oculta = "";
	i = 0;
	// Una letra es la primera de su palabra si el carácter anterior es un espacio
	Para i = 0 Hasta Longitud(mensaje) - 1 Con Paso 1 Hacer
		letra = Subcadena(mensaje, i, i);
		Si letra <> " " & anterior = " " Entonces
			oculta = Concatenar(oculta, letra);
		FinSi
		anterior = letra;
	FinPara
	Escribir "Mensaje: ", mensaje;
	Escribir "Palabra oculta: ", Mayusculas(oculta);
FinAlgoritmo
