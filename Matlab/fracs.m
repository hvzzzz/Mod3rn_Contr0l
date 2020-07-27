syms w;
format short
%f=w^4+w^2-1;
%f=w^2*(w^2+1)*(w^2+0.5^2)-1
f=w^2*((1-w^2)^2+(0.8*w)^2)-1
parts=factor(f,w,'FactorMode', 'real')
all=expand(f)