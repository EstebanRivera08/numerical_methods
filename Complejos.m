clear
clc

f = @(a,b,x) exp((a + b*1i).*x) ;

a = log(2) ;
b = pi ;

x = -3:0.01:3 ;

Re1 = real(f(a,b,x)) ;
Im1 = imag(f(a,b,x)) ;

Re2 = real(f(a,b,x*1i)) ;
Im2 = imag(f(a,b,x*1i)) ;

figure('Color','White')
plot(Re1,Im1,'ok',Re2,Im2,'or')
ylabel('Im( f(x) )')
xlabel('Re( f(x) )')
xline(0,'b')
yline(0,'b')
legend('f(R)','f(C)','0*i','0')
axis([-8 7 -4 6])
grid minor
txt = 'f(x) = e^{[(ln(2) + \pi*i)*x]}' ;
text(-7,-3,txt)

