//Descripción: Un algoritmo que da la fecha posterior al ingresado según día mes y año
//Autor:Celeste Estefanía Ramírez Matehuala
//Fecha: 01/12/2023

Proceso Fechas_A
	Definir d,m,a Como Entero;
	Escribir"Ingresa la fecha en el orden día/mes/año";
	Leer d,m,a;
	
	Si (a mod 4)=0 Entonces //Esta condición evalua si se es un año bisiesto o no
		Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces //Según el mes será el limite de valor a día
			d<-d+1;//Se agraga uno al día para saber el consiguiente.
			
			//Las siguientes dos condiciones evaluan el día para los casos especiales
			Si d>32 Entonces
				Escribir "Día no valido";
			FinSi
			Si d>31 Entonces //En relación al día, si se es 31 se suma uno al més y se empieza el día en 1
				m<-m+1;
				d<-1;
				Si m>12 Entonces //Si el mes es mayor a 12 Entonces se agrega uno al año y mes inicia en 1
					a<-a+1;
					m<-1;
				FinSi
			FinSi
		SiNo
			Si m=2 Entonces //La condición para mes de febrero con menos días
				d<-d+1;//Se agraga uno al día para saber el consiguiente.
				
				//Las siguientes dos condiciones evaluan el día para los casos especiales
				Si d>29 Entonces //En año biciesto el límite en febrero es 29
					m<-m+1;
					d<-1;
					Si m>12 Entonces
						a<-a+1;
						m<-1;
					FinSi
				FinSi
			SiNo //Para meses de 30 días
				d<-d+1;//Se agraga uno al día para saber el consiguiente.
				
				//Las siguientes dos condiciones evaluan el día para los casos especiales
				Si d>30 Entonces
					m<-m+1;
					d<-1;
					Si m>12 Entonces
						a<-a+1;
						m<-1;
					FinSi
				FinSi
			FinSi
		FinSi
	SiNo //Condición para los años comunes
		Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces
			d<-d+1;
			Si d>31 Entonces
				m<-m+1;
				d<-1;
				Si m>12 Entonces
					a<-a+1;
					m<-1;
				FinSi
			FinSi
		SiNo
			Si m=2 Entonces
				d<-d+1;
				Si d>28 Entonces
					m<-m+1;
					d<-1;
					Si m>12 Entonces
						a<-a+1;
						m<-1;
					FinSi
				FinSi
			SiNo
				d<-d+1;
				Si d>30 Entonces
					m<-m+1;
					d<-1;
					Si m>12 Entonces
						a<-a+1;
						m<-1;
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi

	Escribir d,"/",m,"/",a;
	
FinProceso
