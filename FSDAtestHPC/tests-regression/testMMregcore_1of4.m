n=200;
p=3;
state1=123456;
randn('state', state1);
X=randn(n,p);
y=randn(n,1);
kk=10;
ycont = y;
ycont(1:kk)=ycont(1:kk)+7;
[outS]=Sreg(ycont,X);
outMM=MMregcore(ycont,X,outS.beta,outS.scale)
close all
save tempfileWS