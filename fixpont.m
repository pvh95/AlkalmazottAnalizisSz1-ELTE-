function [xnum, iter] = fixpont(x0,varphi,TOL,maxit)

%% Bemenõ paraméterek listája

% x0          kezdeti ertek
% varphi      a phi kontraktiv fuggveny
% TOL         Leallasi felt.1. (|x_{k+1}-x_{k}|/|x_{k}|<TOL)
% maxit       Leallasi felt.2.


%% Kimenõ paraméter

% xnum        numerikus megoldas
% iter        megtett iteraciok szama


%Példa: [xnum iter] = fixpont(1,@(x)(sqrt(x+6)),1e-10,50)

x(1) = x0;
err=TOL+1;
it = 0;

%Fixpont iteracio
while ((err > TOL) && (it < maxit))
    it = it + 1;
    x(it+1) = varphi(x(it));
    err=abs(x(it+1)-x(it))/abs(x(it));
end
xnum=x(end);
iter = it;
