function [x,J]=legkisebbnegyzetek(t,f,n)
%% A Gauss-féle normál-egyenlet megvalósítása n-edfokú polinomok esetén

% A feladat: adott (t_i,f_i) alakú pontokra legkisebb négyzetek módszerének
% megvalósítása Gauss-féle normál-egyenlettel
%
%


%% Bemenõ paraméterek listája: 

% t           alappontok
% f           t-hez tartozó értékek
% n           a közelítõ módszer rendje


%% Az A matrix osszerakasa
A(:,1)=ones(length(t),1);
for j=2:n+1
    A(:,j)=A(:,j-1).*t';
end

%% Megoldas es maradekvektor szamitas
x = (A'*A)\(A'*f');
J = norm(A*x-f',2)^2;




