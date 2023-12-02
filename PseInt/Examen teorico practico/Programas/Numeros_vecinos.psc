//Descripción: Algoritmo que evalua si dos numeros de casas son cotinuos o no
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:30/11/2023

Proceso Numeros_vecinos
	Definir pares,conta,casas,i,ca,cb,vecino Como Entero;
	Definir result Como Caracter;
	Escribir "ingresa el número de pares a evaluar";
	Leer pares;
	
	
	Si pares<=1000 y pares>=1 Entonces
		Escribir "A continuación ingresa los números de las casas";
		//A contunuación se les asigna un valor a las variables numericas para desarrollar la lógica de las operaciones
		i<-1;
		result<-""; //Una cadena que devolverá el resultado
		conta<-0;
		ca<-0;
		cb<-0;
		
		Repetir //El repetir de esta función sirve para que deje de ejecutarse en el momento en el que se hayan completado todas las comparaciones y evaluaciones
			
			Si (i mod 2)=0 Entonces
				//Este si solo sirve para la recolección de datos
				Leer ca;//Primero se solicita la casa A (ca) si es que se trata de la primera (numero de proceso par)
				Si ca>100 o ca<1 Entonces //Evalua que se cumpla el rango
					Escribir "No es un número de casa valido";
					ca<-(-1);
				FinSi
				i<-i+1;
			SiNo
				Leer cb; //Se solicita la casa B (cb) si es que se trata de la segunda (numero de proceso impar)
				si cb>100 o cb<1 Entonces //Evalua que se cumplan las codiciones
					Escribir "No es un número de casa valido";
					cb<-(-1);
				FinSi
				i<-i+1;
			FinSi
			
			Si ca<>0 y cb<>0 Entonces //Este si sirve para la ejecución de la comparación para saber si son o no vecinos
				vecino<-ca-cb;
				
				Si vecino=1 o vecino=-1 o (ca=100 y cb=1) o (ca=1 y cb=100) Entonces
					result<-Concatenar(result," ");
					result<-Concatenar(result,"SI");
				SiNo
					result<-Concatenar(result," ");
					result<-Concatenar(result,"NO");
				FinSi
				//Tras la operación se limpian los valores para volver a ingresar un segundo grupo de casa contando uno más a las veces del proceso y de pares evalauados
				ca<-0;
				cb<-0;
				conta<-conta+1;
			FinSi
		Hasta Que pares=conta o ca=(-1) o cb=(-1)
		
		Escribir result; //Suelta el resultado de las comparaciones
	SiNo
		Escribir "Número de pares a evaluar no válido";
	FinSi
	
FinProceso
