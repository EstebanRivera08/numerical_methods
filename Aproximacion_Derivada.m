disp('APROXIMACIÓN DE DERIVADA')
disp(' ')
disp('¿Qué desea interpolar?')
disp('1 -> Un conjunto de puntos')
disp('2 -> Una función')
format short

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
  
while 1
N=input('¿Cuantos puntos tiene para interpolar?: ') ;
    if N>1
    break
    end
    disp('Deber ser mayor a 1')
end
    
for i=1:N
    xiyi(i,1)=input(sprintf('Ingrese x%d: ',i));
if tipo==2
    xiyi(i,2)=f(xiyi(i,1));
else
    xiyi(i,2)=input(sprintf('Ingrese y%d: ',i));
end
end

disp('DERIVADA APARTIR DEL POLINOMIO INTERPOLADOR DE NEWTON')
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
 syms x
for k=2:N
  dx=1 ;
  deltax=0 ;
  for i=2:k
    for j=2:k
      if j~=k
  dx=dx*(x-xiyi(j-1,1)) ;
      end
    end
  deltax=deltax+dx ;
  end
  P=P+a(k,k+1)*deltax ;
end
PN=inline(P) ;
derivada=inline(diff(f(x))) ;
if tipo==1
Resultados=[xiyi(:,1) xiyi(:,2) PN(xiyi(:,1))] ;
Datos=array2table(Resultados,'VariableNames',{'xi','f(xi)','dP/dx(xi)'})
else
Resultados=[xiyi(:,1) xiyi(:,2) PN(xiyi(:,1)) derivada(xiyi(:,1))] ;
Datos=array2table(Resultados,'VariableNames',{'xi','f(xi)','dP/dx(xi)','df/dx(xi)'})
end
Punto=input('¿En cual punto desea aproximar la derivada?: ');
Solucion=sprintf('La derivada en ese punto es aproximadamente: %f',PN(Punto))

if tipo==2
Comparacion=sprintf('El valor de la derivada real es: %f',derivada(Punto))
end
 