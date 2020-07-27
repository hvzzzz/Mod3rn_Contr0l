clc;clear all;close all;
syms s;
A=[0 1 0; 0 -4 3;-1 -1 -2];
B=[0 0;1 0;0 1];
C=[1 0 0;0 0 1];
D=0;
E=[0;2;0];
H=0;
[f c]=size(A);
a=inv(s.*eye(f)-A);
Gr=C*a*B+D;
Gw=C*a*E+H;
%simplify(collect(a))
pretty(Gr)
pretty(Gw)