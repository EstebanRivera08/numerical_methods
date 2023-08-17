clear all
clc
format long

syms x y

disp('MÉTODO DE EULER')
disp('dx/dt=f(x,y)')
disp('dy/dt=g(x,y)')

f(x,y)=input('Ingrese función f(x,y): ');
g(x,y)=input('Ingrese función g(x,y): ');

t0=input('Ingrese tiempo inicial t0: ' );
x0=input('Ingrese condiciones iniciales x(t0): ' );
y0=input('Ingrese condiciones iniciales y(t0): ' );
tf=input('Ingrese tiempo final tf: ' );

N=input('ingrese particiones: ') ;

X=Euler(f,g,x0,y0,t0,tf,N) ;

Solucion=array2table(X,'VariableNames',{'t','x(t)','y(t)','dx/dt','dy/dt'});

tiledlayout(1,2)

nexttile
plot(X(:,1),X(:,2),'b',X(:,1),X(:,3),'r')
title('funciones parametricas y=y(t),x=x(t)')
legend('x(t)','y(t)')
xlabel('t')
ylabel('x(t),y(t)')
grid on
axis tight

nexttile
plot(X(:,2),X(:,3),'g')
title('función y=y(x)')
legend('y(x)')
xlabel('x')
ylabel('y')
grid on
axis tight

disp('Se ha resuelto su problema :D')
