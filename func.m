function F = func(f,g,t_0,x_0,y_0,N,t_f)

T = zeros(N+1,3);
T(1,1) = t_0;
T(1,2) = x_0;
T(1,3) = y_0;
tk = t_0;
xk = x_0;
yk = y_0;
h = (t_f-t_0)/N;
for i=1:N
    f1 = f(tk,xk,yk);
    g1 = g(tk,xk,yk);
    
    f2 = f(tk + h/2,xk + (h/2*f1), yk + (h/2*g1));
    g2 = g(tk + h/2,xk + (h/2*f1), yk + (h/2*g1));
    
    f3 = f(tk + h/2,xk + (h/2*f2), yk + (h/2*g2));
    g3 = g(tk + h/2,xk + (h/2*f2), yk + (h/2*g2));
    
    f4 = f(tk + h,xk + (h*f3), yk + (h*g3));
    g4 = g(tk + h,xk + (h*f3), yk + (h*g3));
    
    xk = xk + (h/6*(f1 + 2*f2 + 2*f3 +f4));
    yk = yk + (h/6*(g1 + 2*g2 + 2*g3 +g4));
    tk = tk + h;
    
    T(i+1,1) = tk;
    T(i+1,2) = xk;
    T(i+1,3) = yk;
end
F = T(:,2)';
end