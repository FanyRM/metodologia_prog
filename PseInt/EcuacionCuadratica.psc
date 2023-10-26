Algoritmo EcuacionCuadratica
	Definir a,b,c,x1,x2 Como Real;
	Escribir "Ingresa los valores a,b,c";
	Leer a;
	Leer b;
	Leer c;
	Si a=0 Entonces
		Escribir "División por cero";
	SiNo
		Definir disccriminante Como Real;
		disccriminante<-(b^2-4*a*c);
		Si disccriminante<0 Entonces
			Escribir "Error raices imaginarias";
		SiNo
			x1<-(-b+raiz(disccriminante))/(2*a);
			x2<-(-b-raiz(disccriminante))/(2*a);
			Escribir "Las raices son x1=",x1," y x2=",x2;
		FinSi
	FinSi
FinAlgoritmo
