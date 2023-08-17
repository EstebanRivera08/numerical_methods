format long
syms x
a=1/5 ;
x0=0;
error=0.01 ;

g=inline(exp(x)+exp(-5*x)) ;
e=g(a) ;
f=0 ;
n=0 ;

for n=0:4
    dfn=inline(diff(g(x),n)) ;
    f=f+(dfn(x0)/factorial(n))*(a-x0)^n;
    F(n+1)=f ;
    N(n+1)=n ;
    n=n+1 ;
end
F=F' ; N=N' ; error=(abs(F-e)) ;
table(N,F,error)


n=[1:11] ;
an=zeros(1,10) ;
suman = zeros(1,10) ;
EN= zeros(1,10) ;
an(1)=10; suman(1)=10; EN(1)=an(1)/suman(1) ;
for n=1:10
    an(n+1)=3/((an(n))^2+2)+2 ;
    suman(n+1)=sum(an(1:n+1)) ;
    EN(n+1)=an(n+1)/suman(n+1) ;
end
a_n=an' ; sum_an=suman' ; EN_n=EN' ;
table(a_n,sum_an,EN_n)
