clear all;
clc 


IterMax=100 ; %Número de iteraciones máximas
syms x
f(x) = x.^3-10*x-5 ; %Función

%Puntos iniciales
x0=0 ; x1=10 ;
    
Error=1e-10 ;
    
%Iteraciones
k=0 ;
Int=abs(f(x1)-f(x0)) ;
x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)) ;
    
while ( k<=IterMax)
    
   %Respuesta cada iteración 
   Resultados(k+1,1)=k ; Resultados(k+1,2)=x0 ;
   Resultados(k+1,3)=x1 ; Resultados(k+1,4)=f(x1) ;  
    
   x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)) ;

   k=k+1 ;    %#iteración
   Int=abs(f(x2)-f(x1)) ;  %Diferencia entre resultados
   
   if isnan(x1)
       break
   end
       
   x0=x1  ;
   x1=x2  ;
   
end  

%Codigo para el formato de la tabla
format long
MS=array2table(Resultados,...
            'VariableNames',{'i','x(i)','x(i+1)','f(x(i+1))'})    
fprintf('La cantidad de iteraciones fueron : %d \n', k-1)          
fprintf('La raiz de la función en el intervalo dado es x = : %f \n', Resultados(end,2))
