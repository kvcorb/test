load tempfileWS
% The purpose of this example is to show that in presence of units very far
% from the bulk of th data (bad or good elverage points) it is necessary to
% bound their effect putting a constraint on their leverage hi=xi'(X'X)xi
rng('default')
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
outNoLevConstr=FSR(yall,Xall,'msg',0,'ylim',[0 5]);
xylim=axis;
ylabel('mdr')
title('FS without bound on the leverage')
% threshoutX is passed s astructure
threshoutX=struct;
threshoutX.threshlevoutX=5;
% Use the instruction below if you wish to change the confidence level to
% be used to find outlierd in the X space
% threshoutX.bonflevoutX=0.99
outWithLevConstr=FSR(yall,Xall,'threshoutX',threshoutX,'msg',0,'ylim',[0 5]);
title('FS with bound on the leverage')
close all
save tempfileWS