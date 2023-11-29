//Descripción: Algoritmo que valida si es un caracter vocal o no, independientemente si esta acentuado o no
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 28/11/2023

Proceso Valida_vocal
	Definir vocal Como Caracter;
	
	Repetir
		Escribir Sin Saltar"Ingrese un caracter";
		Leer vocal;
	Hasta Que vocal="a" o vocal="e" o vocal="i" o vocal="o" o vocal="u" o vocal="á" o vocal="é" o vocal="í" o vocal="ó" o vocal="ú" 
	
	Escribir "Has ingresado la vocal de forma correcta";
	
FinProceso
