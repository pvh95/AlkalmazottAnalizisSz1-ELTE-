function [x,Jnorma,MatlabPolyfit]=legkisebbnegyzetek(t,f,n)
%% A Gauss-f�le norm�l-egyenlet megval�s�t�sa n-edfok� polinomok eset�n

% A feladat: adott (t_i,f_i) alak� pontokra legkisebb n�gyzetek m�dszer�nek
% megval�s�t�sa Gauss-f�le norm�l-egyenlettel
%
%


%% Bemen� param�terek list�ja: 

% t           alappontok
% f           t-hez tartoz� �rt�kek
% n           a k�zel�t� m�dszer rendje

%% El�k�sz�letek 

e=ones(max(size(t)),1);
A(:,1)=e;
A(:,2)=t';
for i=3:n+1
    A(:,i)=A(:,i-1).*t';
end
ATranA=(A'*A);
ATranf=(A'*f');
x=(A'*A)\(A'*f');
J=A*x-f';
Jnorma=norm(J,2)^2;

%% Biztons�gi �sszevet�s a Matlab be�p�tett f�ggv�ny�vel

MatlabPolyfit=rot90(polyfit(t,f,n)',2);


