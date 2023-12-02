//Descripción: Algoritmo que evalua una operación dando tres valores en tres variables diferentes.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:30/11/2023

Proceso Evaluando_una_expresion_complicada
	Definir u,x,z,operacion1,operacion2,resultado Como Real;
	Escribir "Ingresa los valores x,y,z en ese orden sin pasar del rango [1,100]";
	Leer x;
	Leer u;
	Leer z;
	
	//Condicional en donde si se pasa del rango o no llega no evalua la acción.
	Si (x<1 o x>100) o (u<1 o u>100) o (x<1 o x>100) Entonces
		Escribir "Una de las variables esta fuera del rango";
	SiNo 
		//Son las operaciones necesarias para obtener el resultado
		operacion1<-2*u;
		operacion1<-operacion1+z;
		operacion1<-operacion1^2.8;
		operacion1<-operacion1-z;
		
		operacion2<-x+u;
		operacion2<-operacion2-(x/z);
		
		resultado<-operacion1/operacion2;
		Escribir resultado; //Da el resultado de todas las operaciones
		
	FinSi
	
FinProceso
