syms k1 k2 k3 l1 l2 l3 s
% A=[0 0 -315;1 0 -171;0 1 -25];
% C=[0 0 1];
A=[0 1;-2 -3];
B=[0;1];
C=[2 0];
ob=[C;C*A]
rank(ob)
pretty(C*inv(s*eye(2)-A)*B)
AA=[0 1 0;0 0 1;-6 -11 -6];
BB=[0;0;1];
CC=[6 2 0];
obs=[CC;CC*AA;CC*AA*AA]
det(obs)
pretty(CC*inv(s*eye(3)-AA)*BB)
%A=[0 1 0;0 0 1;-315 -171 -25];
%A=[-25 -171 -315;1 0 0;0 1 0];
%C=[10 0 0];
%p=[-2-4j,-2+4j,-10]
%k=[k1 k2 k3];
%l=[l1;l2;l3];
%l=[l1;l2];
%eqn=children(collect(det(s*eye(2)-(A-l*C))))
%eqns=children(collect(expand((s-(-8-109.13j))*(s-(-8+109.13j))*(s-(-160)))))
%eqns=children(collect(s^2+2*0.6*120*s+120^2))
%solvers=[eqn(2)==eqns(2),eqn(3)==eqns(3),eqn(4)==eqns(4)];
%solvers=[eqn(2)==eqns(2),eqn(3)==eqns(3)];
%ka=solve(solvers,[l1 l2 l3])
%ka=solve(solvers,[l1 l2])
%resp=[ka.l1 ka.l2]
%K=place(A,B,p)
% eqn=children(collect(det(s*eye(3)-(A-B*k))))
% eqns=children(collect(expand((s-(-2-4j))*(s-(-2+4j))*(s-(-10)))))
% solvers=[eqn(2)==eqns(2),eqn(3)==eqns(3),eqn(4)==eqns(4)]
% ka=solve(solvers,[k1 k2 k3])
% resp=[ka.k1 ka.k2 ka.k3]
% K=place(A,B,p)