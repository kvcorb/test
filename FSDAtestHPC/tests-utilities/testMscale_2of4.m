load tempfileWS
psifunc=struct;
psifunc.class='HA'
abc=[1.5 3.5 8];
bdp=0.5;
c=HAbdp(bdp,1,abc);
% kc = E(rho) = sup(rho)*bdp
kc=HArho(c*abc(3),[c, abc])*bdp;
psifunc.c1=[c abc];
psifunc.kc1=kc;
n=10000;
shift=5;
u=3*randn(n,1);
u(1:10)=u(1:10)+shift;
s=Mscale(u,psifunc)
close all
save tempfileWS