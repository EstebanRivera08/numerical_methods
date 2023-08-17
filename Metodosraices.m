    

clear all;

IterMax=10000 ; %Número de iteraciones máximas
disp('MÉTODOS PARA HALLAR RAICES DE UNA FUNCIÓN')
disp(' 1 -> Método bisección bolzano')
disp(' 2 -> Método de posición falsa')
disp(' 3 -> Método de secante')
disp(' 4 -> Método de Newton')
%Inputs
metodo=input('Ingrese el número del método que desea utilizar: ') ;

if metodo==1
    disp('Método de bisección de Bolzano') ;
    fun=input('Ingrese la función de x (recuerde poner "." para cada operación): ','s') ;
    f=inline(fun) ; %Función
 
i=0    ;
while i<=5    
    a=input('Limite inferior: ') ; %Inicio de intervalo 
    b=input('Limite superior: ') ; %Final del intervalo  
       if f(a)*f(b)<0
           break            
       end     
                 
       disp('No existe una raiz en el intervalo estipulado, por favor ingrese otros limites') 
       
    i=i+1   ;
end
    
    if f(a)*f(b)<0    
    
    TolInt=input('Error: ') ; %Tamaño mín de intervalo (a,b)    
   
%Iteraciones
%valores iniciales
    k=1 ;
    Int=abs(b-a) ; %Tamaño intervalo inicial
    c=(a+b)/2 ; %punto inicial
    
   Resultados(1,1)=0 ; Resultados(1,2)=a ;  Resultados(k+1,3)=c ;  
   Resultados(1,4)=b ; Resultados(1,5)=f(a) ;
   Resultados(1,7)=f(c) ; Resultados(1,6)=f(b) ;      
    
  
while (abs(f(c))>=TolInt && k<IterMax)  
    
    % Respuestas cada iteración
   Resultados(k,1)=k ; Resultados(k+1,2)=a ;  Resultados(k+1,3)=c ;  
   Resultados(k,4)=b ; Resultados(k+1,5)=f(a) ;
   Resultados(k,7)=f(c) ; Resultados(k+1,6)=f(b) ;  
    
       if (f(a)*f(c)>0)        
         a=c ;
        end 
        
        if (f(a)*f(c)<0)        
         b=c ;        
        end
        
   c=(a+b)/2 ; % Redefinir C
   k=k+1 ;    %#iteración
   Int=abs(b-a) ;  %Tamaño intervalo
                   
end  

%Código gráfica
    x=[c-10:0.1:c+10] ; %limites de la gráfica
    eje=zeros(length(x));
    plot(x,f(x),'k',x,eje,'r')
    axis tight
    hold on
    plot(Resultados(k,3),Resultados(k,7), 'o')

%Codigo para el formato de la tabla
format long
BB=array2table(Resultados,...
            'VariableNames',{'i','a','c','b','f(a)','f(c)','f(b)'})    
fprintf('La cantidad de iteraciones fue : %f \n', k-1)        
fprintf('La raiz de la función en el intervalo dado es x = : %f \n', c)        
    
    else
    disp('Se superó el intento para encontrar un intervalo en el que exista una única raíz') 
    end    
end

if metodo==2

%Inputs
    disp('Método de posición falsa') ;
    fun=input('Ingrese la función (recuerde poner "." para cada operación): ','s') ;
    f=inline(fun) ; %Función
    
i=0 ;     
while i<=5    
    a=input('Limite inferior: ') ; %Inicio de intervalo 
    b=input('Limite superior: ') ; %Final del intervalo  
       if f(a)*f(b)<0
           break            
       end        
       disp('No existe una raiz en el intervalo estipulado, por favor ingrese otros limites')          
    i=i+1 ;
end
    
    TolInt=input('Error: ') ; %Tamaño mín de intervalo (a,b)    
   
%Iteraciones
%valores iniciales
    k=0 ;
    Int=abs(b-a) ; %Tamaño intervalo inicial
   c=b-f(b)*(b-a)/(f(b)-f(a)) ; %punto inicial
  
while (abs(f(c))>TolInt && k<IterMax)  
    
    % Respuestas cada iteración
   Resultados(k+1,1)=k ; Resultados(k+1,2)=a ;  Resultados(k+1,3)=c ;  
   Resultados(k+1,4)=b ; Resultados(k+1,5)=f(a) ;
   Resultados(k+1,7)=f(c) ; Resultados(k+1,6)=f(b) ;  
    
       if (f(a)*f(c)>0)        
         a=c ;
        end 
        
        if (f(a)*f(c)<0)        
         b=c ;        
        end
        
   c=b-f(b)*(b-a)/(f(b)-f(a)) ; % Redefinir C
   k=k+1 ;    %#iteración

                   
end  

%Código gráfica
    x=[c-10:0.1:c+10] ; %limites de la gráfica
    eje=zeros(length(x));
    plot(x,f(x),'k',x,eje,'r')
    axis tight
    hold on
    plot(Resultados(k,3),Resultados(k,7), 'o')

%Codigo para el formato de la tabla
format long
PF=array2table(Resultados,...
            'VariableNames',{'i','a','c','b','f(a)','f(c)','f(b)'})    
fprintf('La cantidad de iteraciones fue : %f \n', k-1)          
fprintf('La raiz de la función en el intervalo dado es x = : %f \n', c)
%Inputs

end


if metodo==3

%Inputs
    disp('Método de secante')
    fun=input('Ingrese la función (recuerde poner "." para cada operación): ','s') ;
    f=inline(fun) ; %Función dependiente de t

i=0;
while i<=5
    x0=input('Primer punto de iteración: ') ; %Valor inicial de iteración
    x1=input('Segundo punto de iteración: ') ; %Valor 2do de iteración
       if (f(x1)-f(x0))~=0
           break            
       end        
       disp('Ingrese otros valores por favor')     
    i=i+1;
end    
    
    Error=input('Error del cálculo: ') ;
    
%Iteraciones
    k=0 ;
    Int=abs(f(x1)-f(x0)) ;
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)) ;
    
while (abs(f(x2))>Error && k<IterMax)
    
   %Respuesta cada iteración 
   Resultados(k+1,1)=k ; Resultados(k+1,2)=x0 ;
   Resultados(k+1,3)=x1 ; Resultados(k+1,4)=f(x0) ;  Resultados(k+1,5)=f(x1) ;
    
   x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0)) ;

   k=k+1 ;    %#iteración
   Int=abs(f(x2)-f(x1)) ;  %Diferencia entre resultados
   x0=x1  ;
   x1=x2  ;
   
end  

%Código gráfica
    x=[x1-10:0.1:x1+10] ; %limites de la gráfica
    eje=zeros(length(x));
    plot(x,f(x),'k',x,eje,'r')
    axis tight
    hold on
    plot(Resultados(k,3),Resultados(k,4), 'ro')

%Codigo para el formato de la tabla
format long
MS=array2table(Resultados,...
            'VariableNames',{'i','x(i)','x(i+1)','f(x(i))','f(x(i+1))'})    
fprintf('La cantidad de iteraciones fueron : %f \n', k-1)          
fprintf('La raiz de la función en el intervalo dado es x = : %f \n', x1)

end

if metodo==4
%Inputs
syms x

    disp('Método de Newton-Raphson')
    fun=input('Ingrese la función (recuerde poner "." para cada operación): ','s') ;
    f=inline(fun) ; %Función dependiente de t
    df=inline(diff(f(x))) ;

    i=0;
while i<=5
    x0=input('ingrese el valor inicial de iteración: ') ; %Valor inicial de iteración
    if df(x0)~=0
           break            
    end        
       disp('Ingrese otro valor por favor') 
       i=i+1;
end

    Error=input('Error: ') ;
    
%Condiciones iniciales
    k=0 ; 
%Iteraciones
   Resultados(k+1,1)=k ; Resultados(k+1,2)=x0 ;
   Resultados(k+1,3)=f(x0) ; Resultados(k+1,4)=df(x0) ;
   
while ((abs(f(x0))>Error && k<IterMax))
   
   %Newton Raphson
   
   x=x0-f(x0)/df(x0) ; 
   x0=x ;
   k=k+1 ;    %#iteración
          %Respuesta cada iteración 
   Resultados(k+1,1)=k ; Resultados(k+1,2)=x0 ;
   Resultados(k+1,3)=f(x0) ; Resultados(k+1,4)=df(x0) ;
   
end  

%Código gráfica
    y=[x0-10:0.1:x0+10] ; %limites de la gráfica
    eje=zeros(length(y));
    plot(y,f(y),'k',y,eje,'r')
    ylim([-10 10])
    hold on
    plot(Resultados(k,2),Resultados(k,3), 'o')

%Codigo para el formato de la tabla
format long
NR=array2table(Resultados,...
            'VariableNames',{'i','x(i)','f(x(i))','df(xi))'})    
fprintf('La cantidad de iteraciones fueron : %f \n', k)          
fprintf('La raiz de la función en el intervalo dado es x = : %f \n', x0)

end
