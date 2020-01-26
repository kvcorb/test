load tempfileWS
close all
% Generate two groups and a set of concentrated outliers
rng('default') 
rng(100)
p=1;
n1=90;
x1=(randn(n1,p)+2)*2.1-1;
y1=-1.2*x1*1+randn(n1,1)*0.6+2.1;
n2=90;
x2=(randn(n1,p)+4)*1.5-4;
y2=5+x2*0.7+randn(n2,p)*0.6;
n3=20;
x3=randn(n3,p)*0.1+12-4;
y3=randn(n3,p)*0.1+16-2;
%x3=0;
%y3=0;
X=[x1;x2;x3];
y=[y1;y2;y3];
n=n1+n2+n3;
group=[ones(n1,1); 2*ones(n2,1); 3*ones(n3,1)];
yXplot(y,X,group);
legend('Location','best')
% gscatter(X,y,group)
% Run the 3 models and compare the results
k=2;
% Specify restriction factor for variance of residuals
restrfact=5;
% 10 per cent first level trimming.
alphaLik=0.1;
% number of subsamples to extract
nsamp=1000;
addnoisevariable = false;
if addnoisevariable ==true
X=[X randn(n,1)];
end
% In this case we use CWM model
alphaXcwm=1;
[outCWM]=tclustreg(y,X,k,restrfact,alphaLik,alphaXcwm,...
'mixt',0,'plots',1,'msg',0,'nsamp',nsamp);
title('CWM model')
% In this case we use an adaptive second level of trimming.
alphaXada=0.95;
[outADA]=tclustreg(y,X,k,restrfact,alphaLik,alphaXada,...
'mixt',0,'plots',1,'msg',0,'nsamp',nsamp);
title('Adaptive second level trimming')
% In this case we use a fixed level of trimming
alphaXfixed=0.02;
[out2LT]=tclustreg(y,X,k,restrfact,alphaLik,alphaXfixed,...
'mixt',0,'plots',1,'msg',0,'nsamp',nsamp);
title('Fixed second level trimming')
disp('CWM model and adaptive second level trimming')
disp('can recover the real structure of the data')
close all
save tempfileWS