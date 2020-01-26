load tempfileWS
% 1) we use all the default options for Beta (random normal for each group with
% mu=0.5 and sigma=1)
% 2) X in the second dimension for the third group is generated according to U(1, 3)
rng(10,'twister')
% Specify the distribution of the explanatory variables
Xdistrib=struct;
Xdistrib.type='Uniform';
Xdistrib.a=zeros(p-1,k);
Xdistrib.a(2,3)=1;
Xdistrib.b=ones(p-1,k);
Xdistrib.b(2,3)=3;
% 3) regression hyperplanes contain intercepts
Q=MixSimreg(k,p,'BarOmega',0.01,'Xdistrib',Xdistrib);
n=200;
% Q.Xdistrib.BarX in this case has dimension 5-by-3 and is equal to
%     1.0000    1.0000    1.0000
%     0.5000    0.5000    0.5000
%     0.5000    0.5000    2.0000
%     0.5000    0.5000    0.5000
%     0.5000    0.5000    0.5000
% Probabilitties of overlapping are evaluated at
% Q.Beta(:,1)'*Q.Xdistrib.BarX(:,1) ... Q.Beta(:,3)'*Q.Xdistrib.BarX(:,3)
[y,X,id]=simdatasetreg(n,Q.Pi,Q.Beta,Q.S,Q.Xdistrib);
yXplot(y,X(:,2:end),'group',id);
close all
save tempfileWS