//Descripción: Algoritmo dedicado a repetir un proceso para obtener calificaciones y claves de una cadena de texto
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 21/11/2023

Proceso Calificacion_cadena
	Definir caden Como Texto;
	Definir calif,clave,parte Como Caracter;
	Definir constant,seccion,iniciador,contador,suma Como Entero;
	//Es la cadena que contiene la información
	caden<-"01=9.1|02=5.4|03=9.3|04=8.0|05=8.3|06=5.1|07=9.9|08=5.6|09=8.8|10=7.5|";
	contador<-1;
	suma<-Longitud(caden);
	constant<-6;
	iniciador<-0;
	
	//El Mientras fragmenta la cadena para ir sacando las claves y calificaciones.
	Mientras contador<=10 Hacer
		seccion<-(constant+1)*contador;
		parte<-Subcadena(caden,iniciador,(seccion-1));
		clave<-Subcadena(parte,0,1);
		calif<-Subcadena(parte,3,5);
		Escribir "La clave ",clave," tiene la calificación ",calif;
		iniciador<-seccion;
		contador<-contador+1;
	FinMientras
	
FinProceso
