Proceso Media_Aritmetica_Celeste_Estefania_Ramirez_Matehuala_GDS0611
	Definir i,n,v,sum Como Entero;
	Definir prom Como Real;
	
	Escribir "Ingrese la cantidad de valores a promediar";
	Leer n;
	Escribir "Ingrese los ",n," números";
	sum<-0;
	
	Para i<-1 Hasta n Con Paso 1 Hacer
		Leer v;
		sum<-sum+v;
	FinPara
	
	Escribir "El promedio es: ",sum/n;
	
FinProceso
