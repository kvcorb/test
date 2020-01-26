psifunc=struct;
psifunc.class='TB';
bdp=0.5;
c=TBbdp(bdp,1);
% kc = E(rho) = sup(rho)*bdp
kc=c^2/6*bdp;
psifunc.c1=c;
psifunc.kc1=kc;
n=10000;
shift=5;
u=2*randn(n,1);
u(1:10)=u(1:10)+shift;
s=Mscale(u,psifunc)
close all
save tempfileWS