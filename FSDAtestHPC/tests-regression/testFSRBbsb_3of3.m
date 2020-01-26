load tempfileWS
load hprice.txt;
% setup parameters
n=size(hprice,1);
y=hprice(:,1);
X=hprice(:,2:5);
n0=5;
% set \beta components
beta0=0*ones(5,1);
beta0(2,1)=10;
beta0(3,1)=5000;
beta0(4,1)=10000;
beta0(5,1)=10000;
% $\tau$
s02=1/4.0e-8;
tau0=1/s02;
% R prior settings
R=2.4*eye(5);
R(2,2)=6e-7;
R(3,3)=.15;
R(4,4)=.6;
R(5,5)=.6;
R=inv(R);
[~,Un,BB]=FSRBmdr(y,X,beta0, R, tau0, n0);
[Unchk,BBchk]=FSRBbsb(y,X,beta0, R, tau0, n0);
% Test for equality BB and BBchk
disp(isequaln(BB,BBchk))
% Test for equality Un and Unchk
disp(isequaln(Un,Unchk))
close all
save tempfileWS