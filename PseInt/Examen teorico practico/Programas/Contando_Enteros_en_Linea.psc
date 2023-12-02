//Descripción: Algoritmo que recibe datos numericos hasta que de un salto
//Autor:Celeste Estefanía Ramírez Matehuala
//Fecha: 29/11/2023

Proceso Contando_los_Enteros_de_la_linea
	Definir valores,conteo,veces Como Entero;
	Definir caract Como Caracter;
	
	Escribir"Ingresa la linea de carcteres deseada y salta la linea cuando ya no desee ingresar más datos";
	conteo<-0; //Conteo y veces son variables en las guardaremos información necesaria para arrojar los resultados deseados.
	veces<-0; //Conteo guardará la suma de los valores agregados y veces la cantidad de valores agregados
	
	Repetir
		Escribir Sin Saltar "";
		Leer caract; //Introducción de valor que se añadira o no a los demás.
		Si caract<>"" Entonces
			valores<-ConvertirANumero(caract);
			conteo<-conteo+valores;
		FinSi
		veces<-veces+1;
	Hasta Que caract="" //Repetir es necesario para que solicite el número la cantidad de veces que sean hasta que se aplique un salto de linea vacia
	
	Escribir "  ", veces-1,"  ", conteo; //Los resultados.
	
FinProceso
