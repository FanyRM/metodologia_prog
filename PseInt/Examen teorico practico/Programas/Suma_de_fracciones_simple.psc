//Descripci�n: Algoritmo que resaliza una suma de dos fracciones dadas en base a cuatro n�meros enteros
//Autor: Celeste Estefan�a Ram�rez Matehuala
//Fecha:30/11/2023

Proceso Suma_de_fracciones_simple
	Definir n1,d1,n2,d2,nf,df Como Entero; //Las n's son numeradores, y las d's demoninadores
	
	
	Escribir "Ingrese a continuaci�n los valores deseados en la fracci�n siguiendo en orden de numerador, denominador, numerador, denominador";
	Escribir "Rango de valores permitido [1,20]"; //Dos renglones con especificaciones e instrucciones necesarias para que se realice sin percanses la ejecuci�n
	Leer n1,d1,n2,d2;
	
	//La condici�n de este si evalua si los valores est�n dentro del rango permitido
	Si (n1>=1 y n1<=20) y (n2>=1 y n2<=20) y (d1>=1 y d1<=20) y (d2>=1 y d2<=20) Entonces
		Si d1<>d2 Entonces //Si los denominadores son distintos estos se multiplican entre ellos y de forma cruzada con los numeradores
			df<-d1*d2;
			nf<-(n1*d2)+(n2*d1);
		SiNo //Sino se ejecutan solo las sumas dejando el denominador com�n abajo
			df<-d1;
			nf<-n1+n2;
		FinSi
		Escribir n1,"/",d1,"+",n2,"/",d2," = ",nf,"/",df; //Arroja los resultados esperados de la salida
	SiNo
		Escribir "Uno de los valores no esta en el rango permitido";
	FinSi
	
FinProceso
