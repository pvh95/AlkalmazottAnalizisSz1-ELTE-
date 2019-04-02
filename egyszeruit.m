function [eredmeny] = egyszeruit(f,x,maxit)

format long
k=0;
while k<maxit
      k=k+1;
      x=eval(f);
end
eredmeny=x;
