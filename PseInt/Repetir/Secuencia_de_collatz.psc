//Descripci�n:Algoritmo en el que siempre se har� un preceso
//dependiendo de si el numero tenido es par o impar en cada procedimiento hasta dar 1
//Autor: Celeste Estefan�a Ram�rez Matehuala
//Fecha: 28/11/2023

Proceso Secuencia_de_collatz
	Definir n,contador Como Entero;
	Escribir "Ingresa el n�mero";
	Leer n;
	contador<-1;
	Repetir
		Si (n mod 2)=0 Entonces
			n<-n/2;
		SiNo
			n<-(n*3)+1;
		FinSi
		contador<-contador+1;
	Hasta Que n=1
	Escribir contador;
FinProceso
