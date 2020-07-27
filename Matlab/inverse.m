clc;clear all;close all;
syms s;
A=[0 1;-4 -5]
B=[1;1]
C=[1 1]
A*B
D=0;
%p=[1+2i,-15+10i;1,5]
%a=inv(p)*A*p
%[a b]=eig(A)
%[a b]=ss2tf(A,B,C,D)
[f c]=size(A);
a=inv(s.*eye(f)-A);
a1=ilaplace(a)*B  
%simplify(collect(a))
pretty(a1)