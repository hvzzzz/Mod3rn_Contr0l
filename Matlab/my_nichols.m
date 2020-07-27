n=[6];
d=[1 4 3 0];
g=tf(n,d)
g1=g/(g+1)
nichols(g1);
%% El codigo normal
%%
clc; clear all; close all;
w=0:0.01:10;
f1=2;
mag1=20*log10(abs(f1))*ones(1,length(w));
arg1=180/pi*angle(f1)*ones(1,length(w));
f2=1./(w.*i);
mag2=20*log10(abs(f2));
arg2=180/pi*angle(f2);
f3=1./(1+w.*i);
mag3=20*log10(abs(f3));
arg3=180/pi*angle(f3);
f4=1./((w.*i)./3+1);
mag4=20*log10(abs(f4));
arg4=180/pi*angle(f4);
mags=mag1+mag3+mag2+mag4;
args=arg1+arg3+arg2+arg4;
for i=1:length(w)
    fprintf("w=%6.2f Ganancia=%6.2f Fase=%6.2f\n",w(i),mag1(i),arg1(i))
    fprintf("w=%6.2f Ganancia=%6.2f Fase=%6.2f\n",w(i),mag2(i),arg2(i))
    fprintf("w=%6.2f Ganancia=%6.2f Fase=%6.2f\n",w(i),mag3(i),arg3(i))
    fprintf("w=%6.2f Ganancia=%6.2f Fase=%6.2f\n",w(i),mag4(i),arg4(i))
    fprintf("w=%6.2f GananciaT=%6.2f FaseT=%6.2f\n",w(i),mags(i),args(i))
    fprintf("------------------------------------\n")
end
plot(args,mags);
%para graficar el bode
%semilogx(arg4)
