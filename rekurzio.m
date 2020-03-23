function [I_1] = rekurzio(n)

%% Bemeno parameterek listaja

% n         a kozelitendo integral indexe

%% Kimeno parameter

% I_1       numerikus megoldas

%Pelda: [I_1] = rekurzio(5)

format long
I_1=zeros(n+1,1);
I_1(1)=log(1.1); % I_0 erteke
% A rekurzio
for i=1:n
	I_1(i+1)=1/(i)-10*I_1(i);
end    

