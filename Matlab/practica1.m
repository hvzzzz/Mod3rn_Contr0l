syms Kx Dx Jx r J w;
A=[0 1;-Kx/Jx -Dx/Jx];
B=[0;J*w/Jx];
C=[1 0];
S=[B A*B]
V=[C;C*A]
det(V)
%%
%
syms s
A=[-0.435 0.209 0.02;0.268 -0.394 0;0.227 0 -0.02];
B=[1;0;0];
C=[0.003 0 0];
S=[B A*B A*A*B]
V=[C;C*A;C*A*A];
caract=det(s*eye(3)-A)
pretty(simplify(caract));
M=[0.1274 0.849 1;0.849 1 0;1 0 0];
det(V)
P=S*M
Q=inv(M*V)
a=inv(Q)*A*Q
b=inv(Q)*B
c=C*Q
%a=inv(P)*A*P
%b=inv(P)*B
%pretty(simplify(det(S)))
%pretty(simplify(det(r*eye(2)-A)))
%pretty(simplify(eig(A)))