function f=NR(f,p0)
%   Datos   - f es la función a la cual se le quiere encontrar la raiz
%           - df es la derivada de la función
%           - p0 es una aproximación inicial para hallar la raiz
%           - error es el error con el cual se calcula la raiz
%   Resultados  - F es la raiz de la función

    it = 0;                     % Creamos una variable para controlar un máximo de iteraciones
    Resultado = 10000:4;     % Creamos una matriz para poder guardar los resultados
    syms x
    df = inline(diff(f(x))) ;
    while abs(f(p0))>1e-5 && it<10000      % Se hace mientras el valor absoluto de f(p0)(posible raiz) sea mayor al error
        p = p0-(f(p0)/df(p0));      % Calculamos el siguiente punto, el cual converge más cerca a la raiz
        Resultado(it+1,1) = it;     % Guardamos cada uno de los resultados en una matriz
        Resultado(it+1,2) = p0; 
        Resultado(it+1,3) = p-p0;
        Resultado(it+1,4) = f(p0);
        p0 = p;                 % Nuestro siguiente punto de referencia es el punto que acabamos de calcular
        it = it + 1;            % Actualizamos el número de iteraciones
    end
    ResultadosNR=array2table(Resultado,...
            'VariableNames',{'k','p0','p-p0','f(p)'})      % Mostramos cada iteración en una tabla
    y = [p0-10:0.1:p0+10];      % Rango para hacer la gráfica
    eje=zeros(length(y));       % Eje para poder ver mejor el punto de corte con el eje OX
    plot(y , f(y), 'k', y ,eje,'r', p0, f(p0), 'or')    % Gráfica de la función
    ylim([-10 10])
    grid on
    f = p0;
    