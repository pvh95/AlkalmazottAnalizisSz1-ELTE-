function A0WA6S_4(f,x_0)
%% A0WA6S_4(@(x)(x.^5),5)

format long
h = 10.^(-[0:1:8]);
for i=1:9
	derivalt(i)=(f(x_0-2*h(i))-4*f(x_0-h(i))+6*f(x_0)-4*f(x_0+h(i))+f(x_0+2*h(i)))./(h(i).^4);
end

disp('Az egyre finomodo h melletti kozelito derivalt ertekei rendre:')
disp(derivalt')
