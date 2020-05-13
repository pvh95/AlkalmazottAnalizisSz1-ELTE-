
%% A0WA6S
format
x = [-3 -2 0 2 3 5];
f_x = [1 -4 4 -4 7 17];
n = length(x);
N = zeros(n-1, n-1); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tartsuk meg az eredeti kodot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Elso osztott veges differencia hanyados
for k = 1 : n-1
   N(k, 1) = (f_x(k+1) - f_x(k))/(x(k+1) - x(k));
end
% A tobbi osztott veges differencia hanyados
for j = 2 : n - 1
   for k = 1 : n-j
      N(k, j) = (N(k+1, j - 1) - N(k, j - 1))/(x(k+j) - x(k));
   end
end
N_bovitett = [N; zeros(1,n-1)];
Newton_osztott_differencia_matrix = [x' f_x' N_bovitett];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Az uj resz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for j=1:n-1
    for k=1:n-1
         uj_newton(k+(j-1),j)=Newton_osztott_differencia_matrix(k,j+2);
    end
end
uj_newton = uj_newton(1:n-1,:);
N = [x' f_x' [zeros(1, n-1); uj_newton]]
