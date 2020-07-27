syms k1 k2 k3 l1 l2 l3 s
A=[0 1 0;0 0 1;-6 -11 -6];
B=[0;0;1];
C=[1 0 0];
p=[-1-j,-1+j,-5];
K=place(A,B,p)
AA=[0 1 0;0 0 1;-(6+K(1)) -(11+K(2)) -(6+K(3))];%nuevo sistema con realimentaciones
fprintf("Función de Transferencia de planta-controlador:\n")
trans0=C*inv(s*eye(3)-AA)*B;pretty(trans0)
l=[l1;l2;l3];
eqn=children(collect(det(s*eye(3)-(AA-l*C))));
eqns=children(collect(expand((s-(-6))*(s-(-6))*(s-(-6)))));
solvers=[eqn(2)==eqns(2),eqn(3)==eqns(3),eqn(4)==eqns(4)];
ka=solve(solvers,[l1 l2 l3]);
L=[ka.l1;ka.l2;ka.l3]%ganancias del observador
AAA=AA-L*C;
fprintf("Función de Transferencia del Observador:\n")
trans=C*inv(s*eye(3)-AAA)*B;pretty(trans)

