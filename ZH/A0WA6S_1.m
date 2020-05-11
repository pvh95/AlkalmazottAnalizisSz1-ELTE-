function A0WA6S_1(n)
%% A0WA6S_1(11)

if n>=9 
    
    %% t es f 
    t = [1:n];
    f = 2*t;
    for k = 1 : ceil(n/2)-1
        f(2*k)=-f(2*k);
    end

    %% Folyamatmodellek A matrixai
    A_1 = [ones(length(t),1) t' t.^2' t.^3' t.^4'];
    A_2 = [log(t)' cos(t)'];

    %% A Gauss-fele normalegyenlet A^TAx=A^Tf megoldasa x = (A^TA)\(A^Tf) 
    x_1 = (A_1'*A_1)\(A_1'*f');
    x_2 = (A_2'*A_2)\(A_2'*f');

    %% Abrazolas
    tt = t(1):0.01:t(end); % idopontok finom felosztasa 

    %% Plottolas
    plot(t,f,'mo',tt,x_1(1)+x_1(2)*tt+x_1(3)*tt.^2+x_1(4)*tt.^3+x_1(5)*tt.^4,tt,x_2(1)*log(tt)+x_2(2)*cos(tt))
    %% Kompakt polyval megoldas plot(t,f,'mo',tt,polyval(flip(x_1),tt),tt,x_2(1)*log(tt)+x_2(2)*cos(tt))
    legend('Adatok','F_1(t)','F_2(t)')
    else
        disp('A vektor hossza nem megfelelo!')
end
