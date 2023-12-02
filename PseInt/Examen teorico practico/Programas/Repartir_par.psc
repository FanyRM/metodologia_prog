//Descripci�n: Algoritmo que reaprte en pares manzanas, si es un n�mero impar dar� un "NO"
//Autor: Celeste Estefan�a Ram�rez Matehuala
//Fecha:30/11/2023

Proceso Repartir_par
	Definir manzanas,hermanas,div Como Entero;
	//Esta secci�n esta escogida para realizar la solicitud de datos y dar especificaciones de los mismos
	Escribir "Ingrese el n�mero de manzanas que se tienen";
	Escribir "Rango permitido [1,100]";
	Leer manzanas;
	Escribir "Ingresa en n�mero de hermanas";
	Escribir "Rango permitido [1,50]";
	Leer hermanas;
	
	//Esta condicional doble sirve para evaluar si los valores est�n dentro del rango permitido
	Si (hermanas<=50 y hermanas>=1) y (manzanas<=100 y manzanas>=1) Entonces
		div<-trunc(manzanas/hermanas); //Divide el n�mero de manzanas entre el de hermanas tomando solo el valor entero
		//En la condicional se evalua si el resultado de la divici�n de las manzanas que le tocan a cada hermana es un valor par o no para continuar o no la ejecuci�n
		Si (div mod 2)=0 Entonces
			Escribir div;
		SiNo
			Escribir "NO";
		FinSi
	SiNo
		Escribir "Alguno de los valores ingresados esta fuera del rango permitido";
	FinSi
	
FinProceso
