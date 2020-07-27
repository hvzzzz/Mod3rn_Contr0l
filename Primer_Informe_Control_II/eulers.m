clc;clear all;close all;
ti=0;tf=10;h=0.001;%tiempos de inializacion de la simulacion
t=ti:h:tf;%vector del tiempo
[m,n]=size(t);
%salida
y=zeros(n,m);
%Entrada
%u=t;%rampa unitaria
%u=ones(n,m);%escalon
%u=sin(2*pi*t);%senoidal
u=zeros(n,m);u(100,1)=1;%impulso
a0=14.379;a1=0.9;a2=1;alpha=12.04;%constantes del modelo dinamico
for k=3:n
    y(k)=(1/(a2/h^2+a1/h+a0))*(alpha*u(k)+(2*a2/h^2+a1/h)*y(k-1)-(a2/h^2)*y(k-2));
end
fig=figure();
subplot(1,2,1)
plot(t,u);title("Entrada del Sistema");xlabel('Tiempo[Segundos]');grid on;ylabel('\tau(t)[N]');
subplot(1,2,2)
plot(t,y);title("Salida del Sistema");
xlabel('Tiempo[Segundos]');grid on;ylabel('\theta(t)[rad]');