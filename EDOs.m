clc
clear all

disp('RUNGE-KUTTA')
disp('x´´(t)+P(t)x´(t)+Q(t)x(t)+R(t)=0')

P=input('Ingrese P(t): ','s');
Q=input('Ingrese Q(t): ','s');
R=input('Ingrese R(t): ','s');
a=input('Ingrese el limite inferior (a): ') ;
xa=input('Ingrese el limite superior (b): '); 
xa=input('Ingrese la función evaluada en a: ');
xb=input('Ingrese la función evaluada en b: ');

function F=sRK(f,g,a,ax,ay,h)

x=zeros(N,1) ;
y=zeros(N,1) ;
t=zeros(N,1) ;

x(1)=xa ; y(1)=ya ; t(1)=a;
X(1,1)=x(1) ; Y(1,1)=y(1) ;
%x´´(t)+P(t)x´(t)+Q(t)x(t)+R(t)=0
for i=1:N       
  for j=1:4

    if j==1 || j==4
        mult=1 ;
    else
        mult=1/2 ;
    end
    
    X(i,1)=x(i) ; Y(i,1)=y(i) ;
   
    if j>1
    X(i,j)=x(i)+mult*h*f(i,j-1) ;
    Y(i,j)=y(i)+mult*h*g(i,j-1) ; 
    end
    
    f(i,j)=Y(i,j) ;
    g(i,j)=-P(mult*t(i))*Y(i,j)-Q(mult*t(i))*X(i,j)-R(mult*t(i)) ; 
    
  end 
  
    y(i+1)=y(i)+h/6*(g(i,1)+2*g(i,2)+2*g(i,3)+g(i,4)) ;
    x(i+1)=x(i)+h/6*(f(i,1)+2*f(i,2)+2*f(i,3)+f(i,4)) ;
    
    t(i+1)=t(i)+h ;
end

plot(t,x)

    
    
    