function erinto = kvadraturazh(a,b,m,fv)

%% A tanult harom numerikus integralo osszetett formula: erinto, trapez es Simspon
%% Input
%  a          intervallum kezdete
%  b          intervallum vege
%  m          reszintervallumok szama (Simspon m/2-re lesz alkalmazva)
%  fv         az integralando fuggveny
%  modszer    a kivant modszer


format long
h=(b-a)/m;

x = [a:h/2:b];
y = eval(fv);
erinto= h*sum(y(2:2:2*m));

