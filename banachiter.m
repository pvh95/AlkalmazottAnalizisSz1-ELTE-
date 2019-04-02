function [iter] = banachiter(f,q,x_0,TOL)

%% Bemenõ paraméterek listája

% f         kontraktiv fuggveny
% q         kontrakcios allando
% x0        kezdeti ertek
% TOL       tolerancia


%% Kimenõ paraméter

% xnum        numerikus megoldas
% iter        megtett iteraciok szama


%Példa: [iter] = banachiter(@(x)(0.9*cos(x)),0.9*sin(1),1,1e-12)


x_1=f(x_0);
n=log(((1-q)*TOL)/(abs(x_1-x_0)))/log(q);
ceil(n);
iter=disp(ceil(n));
