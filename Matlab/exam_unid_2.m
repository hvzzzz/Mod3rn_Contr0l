clc; clear all; close all;
syms s l1 l2 l3 k1 k2 ke 
l=[l1;l2;l3]
k=[k1 k2]
%A=[0 1 0;0 0 1;0 -171 -101.71];
%B=[0;0;1];
%C=[1325 0 0];
%A=[-1 1;0 2]
%B=[0;1]
%C=[1 1]
A=[-2 1;0 -5]
B=[0;1]
C=[1 1]
%error=s*eye(3)-(A-l*C)
error=s*eye(2)-(A-B*k);
trans=C*inv(s*eye(2)-A)*B;
collect(det(error))
collect(A-B*k)
%AA=[-1 1 0;-k1 -k2+2 ke;-1 -1 0]
AA=[-2 1 0;-k1 -k2-5 ke;-1 -1 0]
%AAA=[1 1 0;0 -17 183.1;-1 -1 0];
BB=[0;0;1]
CC=[1 1 0]
%AA=[0 1 0;-(k1+3) -(k2+5) ke;-1 0 0]
%BB=[0;0;1];
%CC=[1 0 0];
collect(det(s*eye(3)-AA))
collect(CC*inv(s*eye(3)-AA)*BB)
%expand((s+100)*(s^2+16*s+183.1));
% errors=1+C*inv(AAA)*B