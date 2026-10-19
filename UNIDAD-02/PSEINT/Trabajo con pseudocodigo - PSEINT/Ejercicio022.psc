// 022-Indica la calificación de un alumno (SOBRESALIENTE, NOTABLE, BIEN, APROBADO,
// SUSPENSO) según su calificación numérica.
//   [0,5) SUSPENSO  [5,6) APROBADO  [6,7) BIEN  [7,9) NOTABLE  [9,10] SOBRESALIENTE

Algoritmo Ejercicio022
	Definir nota Como Real;
	nota = 0;
	Escribir "Dime la nota numérica (0-10): " Sin Saltar;
	Leer nota;
	Si nota < 0 | nota > 10 Entonces
		Escribir "Nota no válida";
	SiNo
		Si nota >= 9 Entonces
			Escribir "SOBRESALIENTE";
		SiNo
			Si nota >= 7 Entonces
				Escribir "NOTABLE";
			SiNo
				Si nota >= 6 Entonces
					Escribir "BIEN";
				SiNo
					Si nota >= 5 Entonces
						Escribir "APROBADO";
					SiNo
						Escribir "SUSPENSO";
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
