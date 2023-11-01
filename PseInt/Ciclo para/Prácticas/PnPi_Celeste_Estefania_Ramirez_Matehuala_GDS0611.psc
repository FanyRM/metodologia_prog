Proceso PnPi_Celeste_Estefania_Ramirez_Matehuala_GDS0611
	Definir n,r,i,p,vl,l2,long,vl1,num,np Como Entero;
	Definir c,vs,s,s2,s3,s4 Como Cadena;
	
	Escribir "Inserta la cantidad de numeros a incertar";
	Leer n;
	Escribir "Inserte ",n," números separados por un espacio";
	Leer c;
	vs<-" ";
	c<-Concatenar(vs,c);
	c<-Concatenar(c,vs);
	long<-Longitud(c);
	vl<-0;
	
	Si long=0 Entonces
		Escribir "No hay números ingresados";
	SiNo
		Para i<-1 Hasta long Con Paso 1 Hacer
			s<-Subcadena(c,i,i);
			
			Si s=" " Entonces
				s2<-Subcadena(c,(vl+1),(i-1));
				l2<-Longitud(s2);
				vl<-i;
				
				Para p<-0 Hasta 0 Con Paso 1 Hacer
					s3<-Subcadena(s2,0,0);
					
					Si s3=" " Entonces
						Escribir Sin Saltar " ";
					SiNo
						Si s3="-" Entonces
							Escribir Sin Saltar "N";
							
							s4<-Subcadena(s2,1,(l2-1));
							num<-ConvertirANumero(s4);
							np<-num Mod 2;
							
							Si np=0 Entonces
								Escribir Sin Saltar "p";
							FinSi
							
							Si np>0 Entonces
								Escribir Sin Saltar "i";
							FinSi
							
						SiNo
							Si s3<>" " o s3<>"" Entonces
								Escribir Sin Saltar "P";
								
								s4<-Subcadena(s2,0,(l2-1));
								num<-ConvertirANumero(s4);
								np<-num Mod 2;
								
								Si np=0 Entonces
									Escribir Sin Saltar "p";
								FinSi
								
								Si np>0 Entonces
									Escribir Sin Saltar "i";
								FinSi
								
							FinSi
						FinSi
					FinSi
					vl<-i;
					
				FinPara
				Escribir Sin Saltar " ";
				
			FinSi
		FinPara
	FinSi
	Escribir "";

FinProceso
