//Descripción: Algoritmo que reaprte en pares manzanas, si es un número impar dará un "NO"
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:30/11/2023

Proceso Repartir_par
	Definir manzanas,hermanas,div Como Entero;
	//Esta sección esta escogida para realizar la solicitud de datos y dar especificaciones de los mismos
	Escribir "Ingrese el número de manzanas que se tienen";
	Escribir "Rango permitido [1,100]";
	Leer manzanas;
	Escribir "Ingresa en número de hermanas";
	Escribir "Rango permitido [1,50]";
	Leer hermanas;
	
	//Esta condicional doble sirve para evaluar si los valores están dentro del rango permitido
	Si (hermanas<=50 y hermanas>=1) y (manzanas<=100 y manzanas>=1) Entonces
		div<-trunc(manzanas/hermanas); //Divide el número de manzanas entre el de hermanas tomando solo el valor entero
		//En la condicional se evalua si el resultado de la divición de las manzanas que le tocan a cada hermana es un valor par o no para continuar o no la ejecución
		Si (div mod 2)=0 Entonces
			Escribir div;
		SiNo
			Escribir "NO";
		FinSi
	SiNo
		Escribir "Alguno de los valores ingresados esta fuera del rango permitido";
	FinSi
	
FinProceso
