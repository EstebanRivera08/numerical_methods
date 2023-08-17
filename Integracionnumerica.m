disp('INTEGRACIÓN NÚMERICA')
disp(' ')
format long

f=input('Ingrese la función a integrar: ','s') ;
f=inline(f) ;

disp('Cual método desea utilizar para la integración')
disp(' 1 -> Trapecio ')
disp(' 2 -> Simpson ' )
while 1
Tipo=input('Digite su opción: ') ;
    if Tipo==1 || Tipo==2
        break
    else
        disp('Ingrese 1 o 2, según sea el caso')
    end
end

while 1
N=input('¿Cuantas particiones desea tener para el cálculo?: ') ;
    if N>=1
        break
    else
        disp('Cómo mínimo puede tener 1 partición')
    end
end

a=input('Ingrese el límite inferior: ');
b=input('Ingrese el límite superior: ');

x=linspace(a,b,N+1);
h=(b-a)/N ;
fx=f(x) ;
if Tipo==1
   disp('Regla de trapecio')
   suma=0 ;
   for i=2:N
       suma=suma+f(x(i)) ;
   end
   integral1=h/2*(f(a)+2*suma+f(b)) ;
else
    disp('Regla compuesta de Simpson')
    Par=0; Impar=0;
    for i=2:N
        if ((-1)^i)==1
           Impar=Impar+f(x(i)) ;
        else
           Par=Par+f(x(i)) ;
        end
     integral1=h/3*(f(a)+4*Impar+2*Par+f(b));
    end
Impar
Par
end


Resultado=integral1 
xgraf=linspace(a-(b-a)/10,b+(b-a)/10,50) ;
plot(xgraf,f(xgraf),'k') ;
hold on
Area=[0 f(x) 0] ;
x=[a x b] ;
fill(x,Area,'r') ;
axis tight
grid on
       
 