//Descripción: Algoritmo que va contando cuantas letras "A" se ingresan antes de ingresar un "."
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 28/11/2023

Proceso Contar_A
	Definir a,letra Como Texto;
	Definir contador Como Entero;
	contador<-0;
	a<-"A";
	
	Escribir "Ingresar los caracteres:";
	Repetir
		Leer letra;
		Si letra=a Entonces
			contador<-contador+1;
		FinSi
	Hasta Que letra="."
	
	Escribir contador;
	
FinProceso
