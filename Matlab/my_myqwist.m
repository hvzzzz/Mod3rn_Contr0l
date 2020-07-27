%% Usando la funcion de transferencia
%%
clc; clear all; close all;
num=[1];
den=[1 0.8 1];
f=tf(num,den);
h=nyquistplot(f);
p=getoptions(h);
p.ShowFullContour='off';
setoptions(h,p);
%% para el caso del retardo
%%
s=tf('s');
sys=exp(-1*s)
sysx=pade(sys,1)
modul=1;
sys2=sysx*modul;
h=nyquistplot(sys2);
p=getoptions(h);
p.ShowFullContour='off';
setoptions(h,p);
%% pirateando lo manualXD
%%
clc; clear all; close all;
w=0:0.01:2*pi;
%w=10;
modul=1./sqrt((1-w.^2).^2+(0.8.*w).^2);
argumen=-atan((0.8*w)./(1-w.^2));
%modul=1./(w.*sqrt(1+w.^2));
%argumen=-pi/2-atan(w);
%modul=1./(sqrt(1+w.^2));
%argumen=-atan(w);
%modul=sqrt(w.^2+1)./(sqrt(100+w.^2));
%argumen=atan(w)-atan(w./10);
%modul=1*ones(1,length(w));
%argumen=-w;
%modul=100./sqrt((100-w.^2).^2+(2.*w).^2);
%argumen=-atan((2*w)./(100-w.^2));
reales=modul.*cos(argumen);
imaginando=modul.*sin(argumen);
argumen=argumen*180/pi;
for i=1:length(w)
    fprintf('w=%6.3f Re=%6.3f Im=%6.3f Mod=%6.3f Ang=%6.3f\n',w(i),reales(i),imaginando(i),modul(i),argumen(i))
end
plot(reales,imaginando)
%sprintf("%f %f %f %f\n",reales',imaginando',modul',argumen')