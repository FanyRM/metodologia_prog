//Descripción: Algoritmo que resaliza una suma de dos fracciones dadas en base a cuatro números enteros
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:30/11/2023

Proceso Suma_de_fracciones_simple
	Definir n1,d1,n2,d2,nf,df Como Entero; //Las n's son numeradores, y las d's demoninadores
	
	
	Escribir "Ingrese a continuación los valores deseados en la fracción siguiendo en orden de numerador, denominador, numerador, denominador";
	Escribir "Rango de valores permitido [1,20]"; //Dos renglones con especificaciones e instrucciones necesarias para que se realice sin percanses la ejecución
	Leer n1,d1,n2,d2;
	
	//La condición de este si evalua si los valores están dentro del rango permitido
	Si (n1>=1 y n1<=20) y (n2>=1 y n2<=20) y (d1>=1 y d1<=20) y (d2>=1 y d2<=20) Entonces
		Si d1<>d2 Entonces //Si los denominadores son distintos estos se multiplican entre ellos y de forma cruzada con los numeradores
			df<-d1*d2;
			nf<-(n1*d2)+(n2*d1);
		SiNo //Sino se ejecutan solo las sumas dejando el denominador común abajo
			df<-d1;
			nf<-n1+n2;
		FinSi
		Escribir n1,"/",d1,"+",n2,"/",d2," = ",nf,"/",df; //Arroja los resultados esperados de la salida
	SiNo
		Escribir "Uno de los valores no esta en el rango permitido";
	FinSi
	
FinProceso
