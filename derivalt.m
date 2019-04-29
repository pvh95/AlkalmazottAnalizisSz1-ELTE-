function [elso, elsoketto, masodik] = derivalt(f,x_0,h)

% Vektoros
%h=1:-0.1:0.1;
%for k=1:length(h)
% elsoderivalt(k)=(f(x_0+h(k))-f(x_0))/(h(k));
% elsoderivaltketto=(f(x_0+h(k))-f(x_0-h(k)))/(2*(h(k)));
% masodikderivalt(k)=(f(x_0+h(k))-2*f(x_0)+f(x_0-h(k)))/((h(k)).^2);
%end
%elso=elsoderivalt(end);
%elsoketto=elsoderivaltketto(end);
%masodik=masodikderivalt(end);

elso=(f(x_0+h)-f(x_0))/(h);
elsoketto=(f(x_0+h)-f(x_0-h))/(2*(h));
masodik=(f(x_0+h)-2*f(x_0)+f(x_0-h))/(h.^2);

