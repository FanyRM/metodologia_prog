//Descripción: Algoritmo que sirve para evaluar dos numeros que no deben ser igules, o no deben ser los dos pares o impares, o deben ser mayores de 1000
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 22/11/2023

Proceso Todavia_NO
	Definir numerone,numertwo,limite Como Entero;
	Escribir Sin Saltar "Ingrese el primer número:";
	Leer numerone;
	Escribir Sin Saltar "Ingrese el segundo número:";
	Leer numertwo;
	
	limite<-0;
	
	Si numerone<>numertwo Entonces
		limite<-limite+1;
	FinSi
	
	Si (((numertwo mod 2)=0)y((numerone mod 2)=0)) Entonces
		
	FinSi
	
	Mientras ((((numertwo mod 2)=0)y((numerone mod 2)=0)) o (((numerone mod 2)<>0)y((numertwo mod 2)<>0))) y ((numerone<=1000)y(numertwo<=1000)) Hacer
		Escribir "Todavía no";
		Escribir Sin Saltar "Ingrese el primer número:";
		Leer numerone;
		Escribir Sin Saltar "Ingrese el segundo número:";
		Leer numertwo;
	FinMientras
	
	Escribir "Ya";
	Escribir "";
	
FinProceso
