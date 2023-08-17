clear all ;
clc ;

disp('MÉTODOS ITERATIVO PARA RESOLVER SISTEMAS DE ECUACIONES LINEALES')
disp(' ')
IterMax=10000 ;
disp('Sistema Ax=b')
n=input('Ingrese el tamaño de la matriz Anxn o el número de variables: ') ;
A=zeros(n) ;
x0=zeros(n,1) ;
b=zeros(n,1) ;
Error=input('Ingrese el error del cálculo: ') ;

disp('Ingrese las componentes aij de la matriz A asociada al sistema de ecuaciones') ;
while 1
    i=1 ;
  while i<=n
    j=1 ;
     F=sprintf('Fila %d', i)
    while j<=n    
        A(i,j)=input(sprintf('a%d%d: ', i, j)) ;
        j=j+1 ;
    end
    i=i+1 ;
  end
  A
    if 1
       for i=1:n     
           aii(i)=abs(A(i,i));
           aij(i)=sum(abs(A(i,:)))-abs(A(i,i)) ;
           Dif(i)=aii(i)-aij(i) ;
       end
       cero=zeros(length(Dif)) ;
          if Dif>cero
            break
          else
    disp('La matriz no es de diagonal estrictamente dominante, la solución no va a converger por este método')
          end     
    else 
        disp('Det(A)~0, NO tendrá única solución, ingrese nuevamente')
    end
end 

disp('ingrese las componentes del vector de valores independientes (b)')
i=1 ;
  while i<=n
      b(i,1)=input(sprintf('b%d: ', i)) ;
      i=i+1 ;
  end 
b
disp('ingrese las componentes del vector solución inicial x0')
i=1 ;
  while i<=n
      x0(i,1)=input(sprintf('x0(%d): ', i)) ;
      i=i+1 ;
  end  
 x0
 x01=x0 ;
 
 k=0 ; err=10 ;
 disp('MÉTODOS DE JACOBI')
 while (k<=IterMax && err>=Error)
  
    It(k+1,1)=k ; 
    err=0 ;
    for i=1:n
     xi(k+1,i)=x0(i) ;   
     x(i,1)=(b(i,1)-A(i,:)*x0+A(i,i)*x0(i,1))/A(i,i) ;   
 
     D(i,1)=abs(x(i,1)-x0(i,1)) ;
     err=err+D(i,1) ;
     
     x0(i,1)=x(i,1) ;
    end 
    k=k+1 ; 
    
 end
 
 xfinal=x0 ;
IM=table(It,xi)
 
disp('La solución del método de Jacobi es: ')
 xfinal
Iteraciones=sprintf('La cantidad de iteraciones realizadas fueron: %d', k-1)




 