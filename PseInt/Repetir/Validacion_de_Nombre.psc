//Descripción: Algoritmo que valida que un nombre este entre los 3 y los 50 caracteres.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 28/11/2023

Proceso Validacion_de_Nombre
	Definir nombre Como Caracter;
	Definir long Como Entero;
	
	//Estructura ciclica que permite verificar longitud hasta que se cumpla el requisito
	//hasta que el nombre sea adecuado y este entre el rango de caracteres.
	Repetir
		Escribir "Ingresa un nombre entre 3 y 50 caracteres";
		Leer nombre;
		long<-Longitud(nombre);
	Hasta Que long<50 y long>3 y nombre<>" "
	
	Escribir "Has ingresado el nombre correctamente";
	Escribir "";
	
FinProceso
