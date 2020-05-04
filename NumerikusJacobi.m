function J=NumerikusJacobi(f,x);

    
for i=1:length(x)
  xd=x; h=sqrt(eps*(1+abs(xd(i)))); xd(i)=xd(i)+h; 
  J(:,i)=(f(xd)-f(x))/h;
end;
