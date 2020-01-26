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
rhofunc='optimal';
bdp=0.5;
out=RobCov(X,outS.residuals,outS.scale);
disp('Compare 5 estimates of cov(\hat beta)')
disp(out.covrob)
disp('--------')
disp(out.covrob1)
disp('--------')
disp(out.covrob2)
disp('--------')
disp(out.covrob3)
disp('--------')
disp(out.covrob4)
close all
save tempfileWS