//Descripción: Algoritmo que evalua tres digitos donde si el primero es igual al ultimo es palíndromo
//Autor:Celeste Estefanía Ramírez Matehuala
//Fecha: 01/12/2023

Proceso Tres_digitos_palindromo
	Definir numer,digit1,digit3 Como Caracter;
	Definir i,long Como Entero;
	Escribir "Ingresar el número de tres dígitos";
	Leer numer;
	long<-Longitud(numer);
	
	//Evalua que no sean más de tres dígitos(Caracteres) en los datos dados
	Si long<>3 Entonces
		Escribir "No es un dígito válido";
	SiNo
		//Las subcadenas solo toman el primer y ultimo caracter para hacer la comparación y saber si es un palíndromo
		digit1<-Subcadena(numer,0,0);
		digit3<-Subcadena(numer,2,2);
		Si digit1=digit3 Entonces
			Escribir "True";
		SiNo
			Escribir "Falso";
		FinSi
	FinSi
	
	
FinProceso
