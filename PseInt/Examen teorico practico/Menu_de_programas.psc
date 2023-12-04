//Descripción: Algoritmo que ejecuta el proceso de sacar un menú de opciones para evaluar dentro de un proceso aparte
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 02/12/2023
SubProceso opcion <- menu //Subproceso son el menu de opciones
	Definir opcion Como Entero;
	
	Escribir "Elige el programa a ejecutar";
	Escribir "----------------";
	Escribir "[1] Contando enteros en línea";
	Escribir "[2] Suma de fracciones simple";
	Escribir "[3] Producto punto sin arreglos";
	Escribir "[4] Repartir Par";
	Escribir "[5] Números vecinos";
	Escribir "[6] Roberto y el pago de peaje";
	Escribir "[7] Evaluando una expresión complicada";
	Escribir "[8] 3 digit palindrome";
	Escribir "[9] Fechas A";
	Escribir "[0] Salir";
	Escribir Sin Saltar "Elige la opción";
	Leer opcion;
FinSubProceso

Proceso Menu_de_programas
	Definir opcion1 Como Entero;
	
	Repetir //Con este repetir traeremos una y otra vez el menu del subproceso hasta que sea [0] salir
		Limpiar Pantalla; //Limpia los resultados de las opciones elegidas una vez ejecutadas
		opcion1<-menu (); //Trae el menu.
		
		Si opcion1=0 Entonces //Accioón meramente estetica
			Escribir "___________________________";
			Escribir "Procesando";
		SiNo
			Escribir "___________________________";
			Escribir "Programa:";
		FinSi
		Segun opcion1 Hacer //Segun el valor elegido del menu, el algoritmo ejecutara algún programa de los que tiene guardados
			1:
				Escribir "Contando enteros en línea";
				Escribir "___________________________";
				Definir valo,conteo,veces Como Entero;
				Definir caract Como Caracter;
				Escribir"Ingresa la linea de carcteres deseada y salta la linea cuando ya no desee ingresar más datos";
				conteo<-0; 
				veces<-0;
				Repetir
					Escribir Sin Saltar "";
					Leer caract; 
					Si caract<>"" Entonces
						valo<-ConvertirANumero(caract);
						conteo<-conteo+valo;
					FinSi
					veces<-veces+1;
				Hasta Que caract="" 
				Escribir "  ", veces-1,"  ", conteo;
			2:
				Escribir "Suma de fracciones simple";
				Escribir "___________________________";
				Definir n1,d1,n2,d2,nf,df Como Entero; 
				Escribir "Ingrese a continuación los valores deseados en la fracción siguiendo en orden de numerador, denominador, numerador, denominador";
				Escribir "Rango de valores permitido [1,20]";
				Leer n1,d1,n2,d2;
				Si (n1>=1 y n1<=20) y (n2>=1 y n2<=20) y (d1>=1 y d1<=20) y (d2>=1 y d2<=20) Entonces
					Si d1<>d2 Entonces 
						df<-d1*d2;
						nf<-(n1*d2)+(n2*d1);
					SiNo
						df<-d1;
						nf<-n1+n2;
					FinSi
					Escribir n1,"/",d1,"+",n2,"/",d2," = ",nf,"/",df;
				SiNo
					Escribir "Uno de los valores no esta en el rango permitido";
				FinSi
			3:
				Escribir "Producto punto sin arreglos";
				Escribir "___________________________";
				Definir n,nums,i,num1,num2,result,mult Como Entero;
				Escribir "Ingresa la cantidad de pares de valores a evaluar";
				Escribir "El rango de valores permitido es [1,10]";
				Leer n;
				Si n<=10 y n>=1 Entonces
					nums<-n*2; 
					num1<-0;
					num2<-0;
					result<-0;
					Escribir "A continuación ingresa los valores";
					Para i<-1 Hasta nums Con Paso 1 Hacer
						Si (i mod 2)=0 Entonces
							Leer num1;
						SiNo
							Leer num2;
						FinSi
						Si num1<>0 y num2<>0 Entonces
							mult<-num1*num2;
							result<-result+mult;
							num1<-0;
							num2<-0;
						FinSi
					FinPara
					Escribir result;	
				SiNo
					Escribir "El valor no es permitido";
				FinSi
			4:
				Escribir "Repartir Par";
				Escribir "___________________________";
				Definir manzanas,hermanas,div Como Entero;
				Escribir "Ingrese el número de manzanas que se tienen";
				Escribir "Rango permitido [1,100]";
				Leer manzanas;
				Escribir "Ingresa en número de hermanas";
				Escribir "Rango permitido [1,50]";
				Leer hermanas;
				Si (hermanas<=50 y hermanas>=1) y (manzanas<=100 y manzanas>=1) Entonces
					div<-trunc(manzanas/hermanas); 
					Si (div mod 2)=0 Entonces
						Escribir div;
					SiNo
						Escribir "NO";
					FinSi
				SiNo
					Escribir "Alguno de los valores ingresados esta fuera del rango permitido";
				FinSi
			5:
				Escribir "Números vecinos";
				Escribir "___________________________";
				Definir pares,conta,casas,i,ca,cb,vecino Como Entero;
				Definir resultar Como Texto;
				Escribir "ingresa el número de pares a evaluar";
				Leer pares;
				Si pares<=1000 y pares>=1 Entonces
					Escribir "A continuación ingresa los números de las casas";
					i<-1;
					resultar<-""; 
					conta<-0;
					ca<-0;
					cb<-0;
					Repetir
						Si (i mod 2)=0 Entonces
							Leer ca;
							Si ca>100 o ca<1 Entonces 
								Escribir "No es un número de casa valido";
								ca<-(-1);
							FinSi
							i<-i+1;
						SiNo
							Leer cb;
							si cb>100 o cb<1 Entonces
								Escribir "No es un número de casa valido";
								cb<-(-1);
							FinSi
							i<-i+1;
						FinSi
						Si ca<>0 y cb<>0 Entonces
							vecino<-ca-cb;
							Si vecino=1 o vecino=-1 o (ca=100 y cb=1) o (ca=1 y cb=100) Entonces
								resultar<-Concatenar(resultar," ");
								resultar<-Concatenar(resultar,"SI");
							SiNo
								resultar<-Concatenar(resultar," ");
								resultar<-Concatenar(resultar,"NO");
							FinSi
							ca<-0;
							cb<-0;
							conta<-conta+1;
						FinSi
					Hasta Que pares=conta o ca=(-1) o cb=(-1)
					Escribir result;
				SiNo
					Escribir "Número de pares a evaluar no válido";
	FinSi
			6:
				Escribir "Roberto y el pago de peaje";
				Escribir "___________________________";
				Definir costo,prim,resultt Como Real;
				Definir i Como Entero;
				Definir total Como Caracter;
				Escribir Sin Saltar"Ingresa el costo de la primera caseta";
				Leer costo;
				resultt<-0;
				total<-" ";
				prim<-costo;
				Si costo<0 o costo>300 Entonces
					Escribir "No es un costo válido";
				SiNo
					Para i<-1 Hasta 5 Con Paso 1 Hacer
						total<-Concatenar(total,ConvertirATexto(costo)); 
						total<-Concatenar(total,", "); 
						resultt<-resultt+costo; 
						costo<-costo-(costo*.045); 
					FinPara
					Escribir resultt-prim;
					Escribir "[",total,"]";
				FinSi
			7:
				Escribir "Evaluando una expresión complicada";
				Escribir "___________________________";
				Definir u,x,z,operacion1,operacion2,resultado Como Real;
				Escribir "Ingresa los valores x,y,z en ese orden sin pasar del rango [1,100]";
				Leer x;
				Leer u;
				Leer z;
				Si (x<1 o x>100) o (u<1 o u>100) o (x<1 o x>100) Entonces
					Escribir "Una de las variables esta fuera del rango";
				SiNo 
					operacion1<-2*u;
					operacion1<-operacion1+z;
					operacion1<-operacion1^2.8;
					operacion1<-operacion1-z;
					operacion2<-x+u;
					operacion2<-operacion2-(x/z);
					resultado<-operacion1/operacion2;
					Escribir resultado; 
				FinSi
			8:
				Escribir "3 digit palindrome";
				Escribir "___________________________";
				Definir numer,digit1,digit3 Como Caracter;
				Definir i,long Como Entero;
				Escribir "Ingresar el número de tres dígitos";
				Leer numer;
				long<-Longitud(numer);
				Si long<>3 Entonces
					Escribir "No es un dígito válido";
				SiNo
					digit1<-Subcadena(numer,0,0);
					digit3<-Subcadena(numer,2,2);
					Si digit1=digit3 Entonces
						Escribir "True";
					SiNo
						Escribir "Falso";
					FinSi
				FinSi
			9:
				Escribir "Fechas A";
				Escribir "___________________________";
				Definir d,m,a Como Entero;
				Escribir"Ingresa la fecha en el orden día/mes/año";
				Leer d,m,a;
				Si (a mod 4)=0 Entonces
					Si m=1 o m=3 o m=5 o m=7 o m=8 o m=10 o m=12 Entonces 
						d<-d+1;
						Si d>32 Entonces
							Escribir "Día no valido";
						FinSi
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
							Si d>29 Entonces 
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
				SiNo 
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
				
			De Otro Modo:
				Si opcion1<>0 Entonces
					Escribir "No esta en el menu posiblemente";
				FinSi
		FinSegun
		
		Esperar 3 Segundos;
		
	Hasta Que opcion1=0
	Escribir "Hasta la próxima";
FinProceso
