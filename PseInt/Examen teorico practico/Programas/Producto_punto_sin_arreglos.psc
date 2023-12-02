//Descripción: Algoritmo que evalua una cantidad n de pares, multiplicando y sumando los resultados.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 30/11/2023

Proceso Producto_punto_sin_arreglos
	Definir n,nums,i,num1,num2,result,mult Como Entero;
	
	Escribir "Ingresa la cantidad de pares de valores a evaluar";
	Escribir "El rango de valores permitido es [1,10]";
	Leer n;
	
	Si n<=10 y n>=1 Entonces
		//A continuación se evaluan todas las variables a cero para poder ejecutar operaciones.
		nums<-n*2; //Esta variable según los pares sacará cual es la cantidad de datos a obtener
		num1<-0;
		num2<-0;
		result<-0;
		Escribir "A continuación ingresa los valores";
		
		//Este proceso evalua una n cantidad de veces las veces que se ingresaran pares
		Para i<-1 Hasta nums Con Paso 1 Hacer
			
			//En esta condicional se evalua si va en la primera o la segunda parte de la multiplicacion entre pares para saber si tomar o no un valor en cierta variable para la operación
			Si (i mod 2)=0 Entonces
				Leer num1;
			SiNo
				Leer num2;
			FinSi
			
			//Si las dos variables ya estan tomadas realiza la multiplicación y suma el resultado a los demás para obtener el valor de la salida
			Si num1<>0 y num2<>0 Entonces
				mult<-num1*num2;
				result<-result+mult;
				//A continuación se limpian las variables para continuar con el proceso de multiplicar
				num1<-0;
				num2<-0;
			FinSi
		FinPara
		Escribir result;	
	SiNo
		Escribir "El valor no es permitido";
	FinSi

FinProceso
