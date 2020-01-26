load tempfileWS
% The purpose of this example is to show that in presence of units very far
% from the bulk of th data (bad or good elverage points) it is necessary to
% bound their effect putting a constraint on their leverage hi=xi'(X'X)xi
rng(10000)
n=100;
p=1;
X=randn(n,p);
epsil=10;
beta=ones(p,1);
y=X*beta+randn(n,1)*epsil;
% Add 10 very remote points
add=3;
Xadd=X(1:add,:)+5000;
yadd=y(1:add)+200;
Xall=[X;Xadd];
yall=[y;yadd];
outLXS=LXS(y,X);
bs=outLXS.bs;
subplot(2,1,1)
out1=FSRmdr(yall,Xall,bs,'plots',1);
xylim=axis;
ylabel('mdr')
title('Monitoring of mdr without bound on the leverage')
subplot(2,1,2)
out2=FSRmdr(yall,Xall,bs,'plots',1,'threshlevoutX',10);
ylim(xylim(3:4));
ylabel('mdr')
title('Monitoring of mdr with bound on the leverage')
close all
save tempfileWS