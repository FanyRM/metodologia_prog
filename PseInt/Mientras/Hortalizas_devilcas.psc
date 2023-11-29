//Descripción: Registra un cultivo total repartiendo e intercalando entre zanahorias y coles
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 20/11/2023


Proceso Hortalizas_devilcas
	Definir cantihort,div,sobr,c1,c2,plantada,filas Como Entero;
	Definir distintor Como Real;
	Escribir "Ingresa la cantidad de hortalizas a plantar";
	Leer cantihort;
	filas<-0;
	div<-trunc(cantihort/10);
	filas<-div;
	sobr<-cantihort mod 10;
	Si sobr>0 Entonces
		filas<-filas+1;
	FinSi
	plantada<-1;
	c1<-1;
	c2<-0;
	
	Mientras c1<=filas y plantada<=cantihort Hacer
		distintor<-plantada mod 2;
		Si distintor<>0 o plantada=1 Entonces
			Escribir Sin Saltar " * ";
			plantada<-plantada+1;
		SiNo
			Escribir Sin Saltar " & ";
			plantada<-plantada+1;
		FinSi
		c2<-c2+1;
		Si c2=10 Entonces
			Escribir "";
			c2<-0;
			c1<-c1+1;
		FinSi
	FinMientras
	
	Escribir "";
	Escribir "";
	
FinProceso
