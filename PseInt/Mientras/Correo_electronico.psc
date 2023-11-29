//Descripción: Con este proceso se evalua una cadena de texto para saber si funge o no como correo electronico segun las condiciones de contener un arroba, terminar en .com y no estar vacio.
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 21/11/2023

Proceso Correo_electronico
	Definir correo,s,com Como Caracter;
	Definir longi,seleccionador,arroba,contador Como Entero;
	
	Escribir "Ingresa correo electrónico";
	Leer correo;
	//Cuenta la longitud de la cadena
	longi<-Longitud(correo);
	// el numero de caracter que debe ser evaluado
	seleccionador<-0;
	//Cuenta los arrobas siendo que solo debe tener 1
	arroba<-0;
	//Cuenta la cantidad de caracteres que cumplen la condicion
	contador<-0;
	//El com es usado para evaluar la ultima parte de la cadena para saber si termina en .com
	com<-Subcadena(correo,(longi-4),longi);
	
	//Evalua a cadena caracter por caracter para saber si no contiene caracteres especiales y solo tiene los permitidos
	Mientras seleccionador<>longi Hacer
		s<-Subcadena(correo,seleccionador,seleccionador);
		
		Si s="A" o s="B" o s="C" o s="D" o s="E" o s="F" o s="G" o s="H" o s="I" o s="J" o s="K" o s="L" o s="M" o s="N" o s="Ñ" o s="O" o s="P" o s="Q" o s="R" o s="S" o s="T" o s="U" o s="V" o s="W" o s="X" o s="Y" o s="Z" Entonces
			contador<-contador+1;
		SiNo
			Si s="a" o s="b" o s="c" o s="d" o s="e" o s="f" o s="g" o s="h" o s="i" o s="j" o s="k" o s="l" o s="m" o s="n" o s="ñ" o s="o" o s="p" o s="q" o s="r" o s="s" o s="t" o s="u" o s="v" o s="w" o s="x" o s="y" o s="z" Entonces
				contador<-contador+1;
			SiNo
				Si s="0" o s="1" o s="2" o s="3" o s="4" o s="5" o s="6" o s="7" o s="8" o s="9" Entonces
					contador<-contador+1;
				SiNo
					Si s="." o s="@" Entonces
						contador<-contador+1;
					SiNo
						contador<-contador-1;
					FinSi
				FinSi
			FinSi
			
		FinSi
		
		Si s="@" Entonces
			arroba<-arroba+1;
		FinSi
		
		seleccionador<-seleccionador+1;
		
	FinMientras
	
	Si arroba=1 y com=".com" y contador=longi Entonces
		Escribir "El correo electrónico es válido.";
	SiNo
		Escribir "El correo electrónico es inválido.";
	FinSi
	
FinProceso
