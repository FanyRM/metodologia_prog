//Descripci�n: Un algoritmo que da la fecha posterior al ingresado seg�n d�a mes y a�o
//Autor:Celeste Estefan�a Ram�rez Matehuala
//Fecha: 01/12/2023

Proceso Fechas_A
	Definir d,m,a Como Entero;
	Escribir"Ingresa la fecha en el orden d�a/mes/a�o";
	Leer d,m,a;
	
	Si (a mod 4)=0 Entonces //Esta condici�n evalua si se es un a�o bisiesto o no
		Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces //Seg�n el mes ser� el limite de valor a d�a
			d<-d+1;//Se agraga uno al d�a para saber el consiguiente.
			
			//Las siguientes dos condiciones evaluan el d�a para los casos especiales
			Si d>32 Entonces
				Escribir "D�a no valido";
			FinSi
			Si d>31 Entonces //En relaci�n al d�a, si se es 31 se suma uno al m�s y se empieza el d�a en 1
				m<-m+1;
				d<-1;
				Si m>12 Entonces //Si el mes es mayor a 12 Entonces se agrega uno al a�o y mes inicia en 1
					a<-a+1;
					m<-1;
				FinSi
			FinSi
		SiNo
			Si m=2 Entonces //La condici�n para mes de febrero con menos d�as
				d<-d+1;//Se agraga uno al d�a para saber el consiguiente.
				
				//Las siguientes dos condiciones evaluan el d�a para los casos especiales
				Si d>29 Entonces //En a�o biciesto el l�mite en febrero es 29
					m<-m+1;
					d<-1;
					Si m>12 Entonces
						a<-a+1;
						m<-1;
					FinSi
				FinSi
			SiNo //Para meses de 30 d�as
				d<-d+1;//Se agraga uno al d�a para saber el consiguiente.
				
				//Las siguientes dos condiciones evaluan el d�a para los casos especiales
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
	SiNo //Condici�n para los a�os comunes
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
