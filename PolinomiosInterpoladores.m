clear all
sympref('FloatingPointOutput',true);
%Matriz de puntos

disp('¿Qué desea ajustar?')
disp('1 -> Un conjunto de puntos')
disp('2 -> Una función')


while 1
tipo=input('Ingrese el número de su opción: ') ;
    if tipo==1 || tipo==2
    break
    end
    disp('Debe ingresar 1 o 2, según sea el caso')
end

if tipo==2
    f=input('Ingrese la función: ','s') ;
    f=inline(f) ;
end
      
xiyi(:,1)=input('Ingrese los datos de x: ');
if tipo==2
    xiyi(:,2)=f(xiyi(:,1));
else
    xiyi(:,2)=input('Ingrese los datos de y: ');
end

N = size(xiyi,1) ;
if N<=1
    error('Debe ingresar como mínimo 2 puntos')
end


disp('¿Método de interpolación?')
disp('1 -> Polinomios de Lagrage')
disp('2 -> Polinomios de Newton')
disp('3 -> spline cubico')

while 1
interp=input('Ingrese el número de su opción: ') ;
    if interp==1 || interp==2 || interp == 3
    break
    end
    disp('Debe ingresar 1 o 2, según sea el caso')
end

syms x
if interp == 1 || interp == 2
if interp==1
disp('POLINOMIO INTERPOLADOR DE LAGRANGE')
disp(' ') ;
P=0 ;
for k=1:N
    numerador=1 ;
    denominador=1 ;
    for j=1:N
        if j~=k
    numerador=numerador*(x-xiyi(j,1)) ;
    denominador=denominador*(xiyi(k,1)-xiyi(j,1)) ;
    LNk=numerador/denominador ;
        end
    end
  P=P+xiyi(k,2)*LNk ;
  fun=simplify(P) ;
end
PN=inline(P) ;
end

if interp==2
disp('POLINOMIO INTERPOLADOR DE NEWTON')
disp(' ') ;
a=NaN(N,N+1) ;
a(:,1)=xiyi(:,1);
a(:,2)=xiyi(:,2);

for i=2:N
  for j=i:N
a(j,i+1)=(a(j,i)-a(j-1,i))/(a(j,1)-a(j-i+1,1));
  end
end

 P=0 ;
for k=1:N
  dx=1 ;
  if k>1
  for i=2:k
  dx=dx*(x-xiyi(i-1,1)) ;
  end
  end
  P=P+a(k,k+1)*dx ;
end

PN=inline(P);

xi=xiyi(:,1) ;
for i=2:N+1
Diferencias_divididas(:,i-1)=a(:,i) ;
end

Results=table(xi,Diferencias_divididas);
Resultados=array2table(Results)
%Gráfica

end

X=linspace(min(xiyi(:,1)),max(xiyi(:,1)),200) ;
if tipo==2
    figure('color','white')
    plot(xiyi(:,1),xiyi(:,2),'bo',X,PN(X),'k',X,f(X),'r')
    grid minor
    xlabel('x')
    ylabel('y')

    Interpolacion(:,1)=X ;   Interpolacion(:,2)=PN(X) ;
    Interpolacion(:,3)=f(X); Interpolacion(:,4)=abs(f(X)-PN(X)) ;

    Resultados=array2table(Interpolacion, 'VariableNames',...
        {'x','PN(x)','f(x)','|f(x)-PN(x)|'}) ;

else
     figure('color','white')
     plot(xiyi(:,1),xiyi(:,2),'ro',X,PN(X),'k')
     grid minor
     xlabel('x')
     ylabel('y')
end


disp('El polinomio interpolador es: ') 
P
disp('Simplificando la expresión: ')
pretty(expand(PN(x)))
end 

if interp==3
hi = zeros(size(xiyi(:,1))) ;
G = hi ;
D = hi ;
B = hi ;
S = hi ;
hi(1:N-1) = xiyi(2:end,1)-xiyi(1:end-1,1) ;
a = xiyi(:,2) ;

F = zeros(N) ;
F(1,1) = 1 ;
F(N,N) = 1 ;

for i = 2:N-1
      F(i,i-1) = hi(i-1) ;
      F(i,i+1) = hi(i) ;
      F(i,i) = 2*(hi(i-1)+hi(i)) ;
      G(i) = 3/hi(i)*(a(i+1)-a(i))-3/hi(i-1)*(a(i)-a(i-1)) ;
end

C = inv(F)*G ;

syms x
for i = 1:N-1
    D(i) = (C(i+1)-C(i))/(3*hi(i)) ;
    B(i) = (a(i+1)-a(i))/hi(i)-hi(i)/3*(C(i+1)+2*C(i)) ;
end
end