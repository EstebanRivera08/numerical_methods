clear all 

alfa=1.4 ;
a=0 ;
b=20 ;
u0=2.5 ;
v0=0 ;
n=1000 ;

syms t u v

f(t,u,v)=v ;
g(t,u,v)=-3/2*v.^2./u+u.^(-3*alfa-1)-1./u ;

X=func(f,g,a,u0,v0,n,b) ;

plot(X(:,1),X(:,2),'b')