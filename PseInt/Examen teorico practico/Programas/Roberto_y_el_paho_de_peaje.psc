//Descripción: Algoritmo que evalua lo que cuesta por caseta ya que 
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha:30/11/2023

Proceso Roberto_y_el_pago_de_peaje
	Definir costo,prim,resultt Como Real;
	Definir i Como Entero;
	Definir total Como Caracter;
	
	Escribir Sin Saltar"Ingresa el costo de la primera caseta";
	Leer costo;
	resultt<-0;
	total<-" ";
	prim<-costo;
	
	//Condicional en donde si se pasa del rango o no llega no evalua la acción.
	Si costo<0 o costo>300 Entonces
		Escribir "No es un costo válido";
	SiNo
		//Ejecuta los descuentos en cada proceso hasta que se hayan cumplido las 5 casetas.
		Para i<-1 Hasta 5 Con Paso 1 Hacer
			total<-Concatenar(total,ConvertirATexto(costo)); //Cadena que al final agrupa todos los datos obtenidos
			total<-Concatenar(total,", "); //Mero proceso estetico
			resultt<-resultt+costo; //La suma de los valores
			costo<-costo-(costo*.045); //el proximo descuento
		FinPara
		Escribir resultt-prim;
		Escribir "[",total,"]";
	FinSi
	
FinProceso
