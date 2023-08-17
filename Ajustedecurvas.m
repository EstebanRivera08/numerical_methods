clear all
clc
sympref('FloatingPointOutput',true);
%Matriz de puntos

    disp('AJUSTE DE CURVAS')
    disp(' ')

while 1
N=input('¿Cuantos puntos desea ajustar?: ') ;
    if N>1
    break
    end
    disp('Deber ser mayor a 1')
end

for i=1:N
    clc
    disp('AJUSTE DE CURVAS')
    disp(' ')
    disp('Ingrese los puntos:')
    xi(i,1)=input(sprintf('Ingrese x%d: ',i));
    yi(i,1)=input(sprintf('Ingrese y%d: ',i));
    clc
end

   n=1:N;
    disp('AJUSTE DE CURVAS')
    disp(' ')
    disp('Datos para ajustar: ')
    Puntos=[xi' ; yi'] ;
    Datos=table(Puntos, 'RowNames',{'xi';'yi'}) ;
    disp(Datos)
    
disp('¿Tipo de ajuste?')
disp('1 -> Lineal')
disp('2 -> Polinomial')
disp('3 -> Potencial')
disp('4 -> Exponencial')

while 1
opcion=input('Digite el número de la opción que desea: ') ;
    if opcion==1 || opcion==2 || opcion==3 || opcion==4
        break
    end
    disp('Debe ingresar 1 o 2, según sea el caso')
end

syms x
if opcion==1 || opcion==4

    if opcion==4
        yi=log(yi) ;
    end
    
   sumxiyi=0 ;
 for i=1:N
   sumxiyi=sumxiyi+xi(i,1)*yi(i,1) ;
 end
   sumxi=sum(xi) ;
   sumyi=sum(yi) ;
   sumxi2=sum(xi.^2) ;
   
   m=(N*sumxiyi-sumxi*sumyi)/(N*sumxi2-sumxi^2) ;
   b=(sumyi*sumxi2-sumxi*sumxiyi)/(N*sumxi2-sumxi^2) ;

  if opcion==1
   f=inline(m*x+b) ;
   lineal=[n' xi yi xi.^2 xi.*yi; NaN sumxi sumyi sumxi2 sumxiyi] ;
   lineal=array2table(lineal, 'VariableNames',...
    {'i','xi','yi','xi^2','xi*yi'}) 
  else
   c=exp(b) ;
   f=inline(c*exp(m*x)) ;
   yi_=exp(yi) ; sumyi_=sum(yi_) ;
   lineal=[n' xi yi_ yi xi.^2 xi.*yi; NaN sumxi sumyi_ sumyi sumxi2 sumxiyi] ;
   lineal=array2table(lineal, 'VariableNames',...
    {'i','xi','yi','Yi=ln(yi)','xi^2','xi*Yi'})    
   yi=yi_ ;
  end
end

if opcion==2 || opcion==3
    M=input('Ingrese el grado del polinomio: ') ;
    
    if opcion==2
  for j=1:M+1
    for i=1:N
       F(i,j)=xi(i,1)^(j-1) ;
    end
  end
    Y=F'*yi ;
    A=F'*F ;
    C=inv(A)*Y ;
    
   f=0 ; 
  for i=1:M+1
      f=f+C(i,1)*x^(i-1) ;
  end
   f=inline(f) ; 
   
    else
  
     xMy=0 ;
  for i=1:N
     xMy=xMy+xi(i,1)^M*yi(i,1) ;
     x2M=sum(xi.^(2*M)) ;
  end

   A=xMy/x2M ;    
   f=inline(A*x^M) ;
    end 
end

   clf
   X=linspace(min(xi),max(xi),31) ;
   plot(xi,yi,'ro',X,f(X),'k')
   title('CURVA DE AJUSTE')
   xlabel('x') ; ylabel('yi,f(x)') ;
   
   results=[n' xi yi f(xi) abs(yi-f(xi))] ;
   resultados=array2table(results, 'VariableNames',...
    {'i','xi','yi','f(xi)','|f(xi)-yi|'})  ;
   disp('Los resultados obtenidos fueron: ')
   disp(resultados)
   
   disp('La función que ajusta su curva es')
   pretty(expand(f(x)))


