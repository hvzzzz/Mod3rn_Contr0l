clc; clear all; close all;
T=3.125e-6;
%wc=
wo=(2*pi)/T;
a0=0.5;
t=0:1e-8:40e-6;
f=a0/2;
for n=1:length(t)
    a=2/(T*n*wo)*sin(n*wo*0.781251e-6);
    b=-2/(T*n*wo)*(cos(n*wo*0.781251e-6)-1);
    f=f+a*cos(t*n*wo)+b*sin(t*n*wo);
end
f1=f.*sin(t*2*pi*50e3);
%plot(t,f)
%plot(t,f1)
f3=0.5*8.966e2*cos(1.025e7*t-4.588)
f4=0.5*8.936e2*cos(9.75e6*t+0.4655)
f5=f3+f4
%plot(t,f5)
f6=cos(2.5*10e6*t).*cos(10e6*t)
%plot(t,f6)
f2=conv(f1,sin(t*2*pi*50e3))
for n=1:length(t)
    a=2/(T*n*wo)*sin(n*wo*0.781251e-6);
    b=-2/(T*n*wo)*(cos(n*wo*0.781251e-6)-1);
    amp(n)=sqrt(a^2+b^2);
    freq(n)=n/T;
end
figure(2)
stem(freq,amp)