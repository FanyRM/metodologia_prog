//Descripci�n: Algoritmo que evalua tres digitos donde si el primero es igual al ultimo es pal�ndromo
//Autor:Celeste Estefan�a Ram�rez Matehuala
//Fecha: 01/12/2023

Proceso Tres_digitos_palindromo
	Definir numer,digit1,digit3 Como Caracter;
	Definir i,long Como Entero;
	Escribir "Ingresar el n�mero de tres d�gitos";
	Leer numer;
	long<-Longitud(numer);
	
	//Evalua que no sean m�s de tres d�gitos(Caracteres) en los datos dados
	Si long<>3 Entonces
		Escribir "No es un d�gito v�lido";
	SiNo
		//Las subcadenas solo toman el primer y ultimo caracter para hacer la comparaci�n y saber si es un pal�ndromo
		digit1<-Subcadena(numer,0,0);
		digit3<-Subcadena(numer,2,2);
		Si digit1=digit3 Entonces
			Escribir "True";
		SiNo
			Escribir "Falso";
		FinSi
	FinSi
	
	
FinProceso
