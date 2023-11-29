//Descripción: Es una cuenta regresiva según un valor dado
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:21/11/2023

Proceso Cuenta_Regresiva
	Definir dato,contador Como Entero;
	Escribir "Ingrese el número con el cual iniciar su cuenta regresiva";
	Leer dato;
	contador<-dato;
	
	//En cada proceso del mientras se resta un numero y borra pantalla hasta que sea el contado igual a 0
	Mientras contador<>0 Hacer
		Escribir "Ingrese el número con el cual iniciar su cuenta regresiva";
		Escribir "";
		Escribir "Cuenta regresiva:",contador;
		contador<-contador-1;
		Esperar 1 Segundos;
		Borrar Pantalla;
	FinMientras
	
FinProceso
