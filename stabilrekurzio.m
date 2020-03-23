function [I_2] = stabilrekurzio(n)

%% Bemeno parameterek listaja

% n         a kozelitendo integral indexe

%% Kimeno parameter

% I_2       numerikus megoldas

%Pelda: [I_2] = stabilrekurzio(38)

format long
I_2=zeros(n,1);
I_2(n)=0;
% A stabil rekurzio
for i=1:n-1
	I_2(n-i)=1/10*(1/(n+1-i)-I_2(n+1-i));
end    

