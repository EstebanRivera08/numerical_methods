 clear all ;

disp('MÉTODO DE FACTORIZACIÓN TRIANGULAR PARA RESOLVER SISTEMAS DE ECUACIONES LINEALES')
disp(' ')
IterMax=10000 ;
disp('Sistema Ax=b')
n=input('Ingrese el tamaño de la matriz Anxn o el número de variables: ') ;
A=zeros(n) ;
b=zeros(n,1) ;
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
    if abs(det(A))<1e-6
        break
    else 
        disp('Det(A)~0. NO tendrá única solución, ingrese nuevamente los valores')
    end
end 

disp('ingrese las componentes del vector de valores independientes b')
i=1 ;
  while i<=n
      b(i,1)=input(sprintf('b%d: ', i)) ;
      i=i+1 ;
  end 
b

disp('x = Inv(A)*b')
x1 = inv(A)*b 


disp('FACTORIZACIÓN A=LU')
U=A ;   
L=zeros(n) ;
  for i=1:n
      L(i,i)=1 ;
  end
  k=1 ;
  while k<n    
      for i=k+1:n
         L(i,k)=U(i,k)/U(k,k)  ;
         U(i,:)=U(i,:)-L(i,k)*U(k,:) ;
      end
        k=k+1 ;
  end 
disp('La matriz triangular inferior es: ')
L
disp('La matriz triangular superior es: ')
U
LxU=L*U
disp('Ly=B')
y=zeros(n,1) ;
y(1,1)=b(1,1)/L(1,1) ;
 for i=2:n
    y(i,1)=(b(i,1)-L(i,:)*y(:,1))/L(i,i) ;
 end     
disp('El vector que soluciona el sistema de ecuaciones Ly=b')
y
disp('Ux=y') 
x(n,1)=y(n,1)/U(n,n) ;
for i=n-1:-1:1
    x(i,1)=(y(i,1)-U(i,:)*x(:,1))/U(i,i) ;
end
disp('La solución que soluciona el sistema Ax=b: ')
x

    









