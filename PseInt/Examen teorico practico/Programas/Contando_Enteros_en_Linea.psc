//Descripci�n: Algoritmo que recibe datos numericos hasta que de un salto
//Autor:Celeste Estefan�a Ram�rez Matehuala
//Fecha: 29/11/2023

Proceso Contando_los_Enteros_de_la_linea
	Definir valores,conteo,veces Como Entero;
	Definir caract Como Caracter;
	
	Escribir"Ingresa la linea de carcteres deseada y salta la linea cuando ya no desee ingresar m�s datos";
	conteo<-0; //Conteo y veces son variables en las guardaremos informaci�n necesaria para arrojar los resultados deseados.
	veces<-0; //Conteo guardar� la suma de los valores agregados y veces la cantidad de valores agregados
	
	Repetir
		Escribir Sin Saltar "";
		Leer caract; //Introducci�n de valor que se a�adira o no a los dem�s.
		Si caract<>"" Entonces
			valores<-ConvertirANumero(caract);
			conteo<-conteo+valores;
		FinSi
		veces<-veces+1;
	Hasta Que caract="" //Repetir es necesario para que solicite el n�mero la cantidad de veces que sean hasta que se aplique un salto de linea vacia
	
	Escribir "  ", veces-1,"  ", conteo; //Los resultados.
	
FinProceso
