load tempfileWS
% The purpose of this example is to show that while best LMS using all
% default options contains some of the remote units. In order to make sure
% that the remote units are excluded from the best LMS subset it is
% necessary to use option bonflevoutX.
rng('default')
rng(10000)
n=100;
p=1;
X=randn(n,p);
epsil=10;
beta=ones(p,1);
y=X*beta+randn(n,1)*epsil;
% Add 10 very remote points
add=10;
Xadd=X(1:add,:)+5000;
yadd=y(1:add)+200;
Xall=[X;Xadd];
yall=[y;yadd];
out=LXS(yall,Xall);
subplot(2,1,1)
plot(Xall,yall,'o')
xylim=axis;
line(xylim(1:2),out.beta(1)+out.beta(2)*xylim(1:2))
title('Fit using best subset with option bonflevoutX empty')
subplot(2,1,2)
plot(Xall,yall,'o')
out=LXS(yall,Xall,'bonflevoutX',0.99);
line(xylim(1:2),out.beta(1)+out.beta(2)*xylim(1:2))
ylim(xylim(3:4));
title('Fit using best subset with option bonflevoutX  not empty')
close all
save tempfileWS