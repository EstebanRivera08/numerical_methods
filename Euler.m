
function X=Euler(f,g,x0,y0,t0,tf,N)

x=zeros(N,1) ; dx=zeros(N,1) ;
y=zeros(N,1) ; dy=zeros(N,1);
x(1)=x0 ;
y(1)=y0 ;
t=linspace(t0,tf,N) ;
h=(tf-t0)/(N-1) ;
t(1)=t0 ;

    for i=1:N-1
        x(i+1)=x(i)+h*f(x(i),y(i)) ;
        y(i+1)=y(i)+h*g(x(i),y(i)) ;
        dx(i+1)=f(x(i),y(i)) ;
        dy(i+1)=g(x(i),y(i)) ;
    end

 tabla=[t' x y dx dy]  ;
    
X=tabla; 