a=[50^2 10*50^2];
b=[1 32 50^2+60 2*50^2 0];
trans=tf(a,b)
bode(trans)