Algoritmo Series
	Definir c,serie,fib,fac,acumuladora,inicial,siguiente Como Entero;
	
	Escribir "==================================";
	Escribir "				Series				";
	Escribir "==================================";
	Escribir "(1)Serie 1: 5 al numero 500 de cinco en cinco";
	Escribir "(2)Serie 2: 500 al numero 5 de cinco en cinco";
	Escribir "(3)Serie 3: Serie Fibonacci";
	Escribir "(4)Serie 4: Factorial";
	Escribir "==================================";
	Escribir "Elija la opci�n";
	Leer serie;
	Escribir "==================================";
	Escribir "Serie ",serie;
	Escribir "";
	
	c<-0;
	fib<-0;
	fac<-0;
	acumuladora<-0;
	Si serie>=1 y serie<=4 Entonces
		
		Si serie=1 Entonces
			Para c<-5 Hasta 500 Con Paso 5 Hacer
				Escribir Sin Saltar c," ";
			Fin Para
		FinSi
		
		Si serie=2 Entonces
			Para c<-500 Hasta 5 Con Paso -5 Hacer
				Escribir Sin Saltar c," ";
			Fin Para
		FinSi
		
		Si serie=3 Entonces
			inicial<-1;
			acumuladora<-0;
			siguiente<-0;
			Escribir inicial;
			Para c<-1 Hasta 10 Con Paso 1 Hacer
				acumuladora<-inicial+siguiente;
				Escribir Sin Saltar acumuladora,", ";
				siguiente<-inicial+acumuladora;
				inicial<-acumuladora;
			FinPara
		FinSi
		
		Si serie=4 Entonces
			Escribir "Ingresa valor factorial";
			Leer fac;
			acumuladora<-1;
			Para c<-fac Hasta 1 Con Paso -1 Hacer
				acumuladora<-acumuladora*c;
				Escribir Sin Saltar c,"*";
			FinPara
			Escribir "= ",acumuladora;
		FinSi
		Escribir "";
	SiNo
		Escribir "Opci�n Incorrecta";
	FinSi
	
	
FinAlgoritmo
