//Descripción: Algoritmo que validar un número entre los rangos [1,10] y [40,50]
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 28/11/2023

Proceso Validacion_de_Numero_entre_rangos
	Definir numer Como Entero;
	
	//Ciclo que se repite hasta que se cumpla la condición de que el número ingresado este entre los rangos dados
	Repetir
		Escribir Sin Saltar "Ingresa un número entre los rango [1,10] y [40,50]";
		Leer numer;
	Hasta Que (numer<=10 y numer>=1) o (numer<=50 y numer>=40)
	
	Escribir "Has ingresado el número adecuado";
	
FinProceso
