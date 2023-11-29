//Descripción: Evalua un programa dependiendo de una opción elegida
//Autor: Celeste Estefanía Ramírez Matehuala
//Fecha: 29/11/2023

SubProceso opcion <- menu
	Definir opcion Como Entero;
	
	Escribir "Elige el programa a ejecutar";
	Escribir "----------------";
	Escribir "[1] Contar A";
	Escribir "[2] Nombre vacio";
	Escribir "[3] Secuencia de collatz";
	Escribir "[4] Valida vocal";
	Escribir "[5] Validación de nombre";
	Escribir "[6] Validación de número entre rangos";
	Escribir "[7] Validación de Rango";
	Escribir "[0] Salir";
	Escribir Sin Saltar "Elige la opción";
	Leer opcion;
FinSubProceso

Proceso Programas_Repetir
	Definir opcion1 Como Entero;
	
	Repetir
		Limpiar Pantalla;
		opcion1<-menu ();
		
		Escribir "";
		Escribir "___________________________";
		Segun opcion1 Hacer
			1:
				Definir a,letra Como Texto;
				Definir contador Como Entero;
				contador<-0;
				a<-"A";
				Escribir "Algoritmo que va contando cuantas letras "A" se ingresan antes de ingresar un "."";
				Escribir "Ingresar los caracteres:";
				Repetir
					Leer letra;
					Si letra=a Entonces
						contador<-contador+1;
					FinSi
				Hasta Que letra="."
				
				Escribir contador;
			2:
				Definir nombre Como Caracter;
				Definir extension Como Entero;
				
				Escribir "Algoritmo que valida que un nombre no este en blanco, que tenga caracteres validos y sea un nombre.";
				
				Repetir
					Escribir Sin Saltar "Ingresa un nombre";
					Leer nombre;
					extension<-Longitud(nombre);
				Hasta Que extension>0 y (nombre<>"" o nombre<>" ")
				
				Escribir "Has ingresado el nombre de forma adecuada";
			3:
				
				Definir n,contador Como Entero;
				Escribir "Ingresa el número";
				Leer n;
				contador<-1;
				Escribir "Algoritmo en el que siempre se hará un preceso A UN DETERMINADO NUMERO dependiendo de si es PAR o IMPAR";
				Repetir
					Si (n mod 2)=0 Entonces
						n<-n/2;
					SiNo
						n<-(n*3)+1;
					FinSi
					contador<-contador+1;
				Hasta Que n=1
				Escribir contador;
			4:
				Definir vocal Como Caracter;
				Escribir "Algoritmo que valida si es un caracter vocal o no, independientemente si esta acentuado o no";
				Repetir
					Escribir Sin Saltar"Ingrese un caracter";
					Leer vocal;
				Hasta Que vocal="a" o vocal="e" o vocal="i" o vocal="o" o vocal="u" o vocal="á" o vocal="é" o vocal="í" o vocal="ó" o vocal="ú" 
				
				Escribir "Has ingresado la vocal de forma correcta";
			5:
				Definir nombre Como Caracter;
				Definir long Como Entero;
				Escribir "Algoritmo que valida que un nombre este entre los 3 y los 50 caracteres.";
				Repetir
					Escribir "Ingresa un nombre entre 3 y 50 caracteres";
					Leer nombre;
					long<-Longitud(nombre);
				Hasta Que long<50 y long>3 y nombre<>" "
				
				Escribir "Has ingresado el nombre correctamente";
				Escribir "";
			6:
				Definir numer Como Entero;
				Escribir "Algoritmo que validar un número entre los rangos [1,10] y [40,50]";
				Repetir
					Escribir Sin Saltar "Ingresa un número entre los rango [1,10] y [40,50]";
					Leer numer;
				Hasta Que (numer<=10 y numer>=1) o (numer<=50 y numer>=40)
				Escribir "Has ingresado el número adecuado";
			7:
				Definir num Como Entero;
				Escribir "Algoritmo que valida si un numero esta entre el rango de [18,110]";
				Repetir
					Escribir Sin Saltar "Ingresa el número que entre en el rango [18,110]";
					Leer num;
				Hasta Que num>=18 y num<=110
				Escribir "Has ingresado el número correctamente";
				
			De Otro Modo:
				Escribir "No esta en el menu posiblemente";
		FinSegun
		
		Esperar 5 Segundos;
		
	Hasta Que opcion1=0
	
	Escribir "Hasta la próxima";
	
FinProceso
