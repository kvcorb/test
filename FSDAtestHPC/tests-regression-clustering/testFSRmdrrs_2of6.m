load tempfileWS
% In this case the two groups have roughly the same size (n1=140 and n2=150)
close all
rng(2);
b1=[1 1];
b2=[1 2.6];
n1=140;
n2=150;
s1=0.1;
s2=0.1;
X1=rand(n1,1);
X2=rand(n2,1);
y1=randn(n1,1)*s1+b1(1)+b1(2)*X1;
y2=randn(n2,1)*s2+b2(1)+b2(2)*X2;
hold('on')
plot(X1,y1,'o');
plot(X2,y2,'o');
title('Two simulated regression lines')
y=[y1;y2];
X=[X1;X2];
figure
% parfor of Parallel Computing Toolbox is used (if present in current
% computer) and pool is not cleaned after
% the execution of the random starts
% The number of workers which is used is the one specified
% in the local/current profile
[out]=FSRmdrrs(y,X,'constr','','nsimul',100,'init',10,'plots',1,'cleanpool',false);
disp('The two peaks in the trajectories of minimum deletion residual (mdr).')
disp('clearly show the presence of two groups.')
disp('The decrease after the peak in the trajectories of mdr is due to the masking effect.')
close all
save tempfileWS