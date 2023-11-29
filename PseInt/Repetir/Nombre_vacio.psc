//Descripción: Algoritmo que valida que un nombre no este en blanco, que tenga caracteres validos y sea un nombre.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 28/11/2023

Proceso Nombre_vacio
	Definir nombre Como Caracter;
	Definir extension Como Entero;
	
	Repetir
		Escribir Sin Saltar "Ingresa un nombre";
		Leer nombre;
		extension<-Longitud(nombre);
	Hasta Que extension>0 y (nombre<>"" o nombre<>" ")
	
	Escribir "Has ingresado el nombre de forma adecuada";
	
FinProceso
