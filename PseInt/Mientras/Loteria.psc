//Descripción: Buscar un valor en una apuesta de azar en un determinado numero de intentos.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 20/11/2023
Proceso Loteria
	Definir numboleto,intentos,sacado Como Entero;
	Escribir "Ingrese su boleto de la suerte";
	Leer numboleto;
	intentos<-0;
	sacado<-0;
	
	Mientras numboleto<>sacado Hacer
		sacado<-azar(101);
		intentos<-intentos+1;
	FinMientras
	
	Si intentos<=100 Entonces
		Escribir "El boleto ",numboleto,"° tiene la probabilidad de salir a los ",intentos," intentos.";
	SiNo
		Escribir "El boleto ",numboleto,"° tiene la probabilidad de no salir en 100 intentos ";
	FinSi
	
	Escribir "";
	
FinProceso
