Ts=1/1000;
wo=2*pi/Ts
Vs=440;R=10;L=10*0.001;tau=Ts/10
Amp=5;
t=0:Ts/1000:Ts;
v=zeros(length(t));
if(sqrt((Amp*sin(wo*t)).^2)<=0.7)
    if(wo*t<=pi)
        
    end
end


