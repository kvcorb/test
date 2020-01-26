load tempfileWS
n=100;
p=8;
state=1;
randn('state', state);
X=randn(n,p);
y=randn(n,1);
y(1:10)=y(1:10)+5;
% Run the forward search with Exploratory Data Analysis purposes
% LMS using 10000 subsamples
[outLXS]=LXS(y,X,'nsamp',10000);
% Forward Search
[out]=FSReda(y,X,outLXS.bs);
%The monitoring residuals plot shows a set of positive residuals which
%starting from the central part of the search tend to have a residual much
%larger than that of the other units.
resfwdplot(out);
%The minimum deletion residual from m=90 starts going above the 99% threshold.
mdrplot(out);
%The curve which monitors the normality test shows a sudden big increase with the outliers are included
figure;
lwdenv=2;
xlimx=[10 100];
subplot(2,2,1);
plot(out.nor(:,1),out.nor(:,2));
title('Asimmetry test');
xlim(xlimx);
quant=chi2inv(0.99,1);
v=axis;
line([v(1),v(2)],[quant,quant],'color','r','LineWidth',lwdenv);
subplot(2,2,2)
plot(out.nor(:,1),out.nor(:,3))
title('Kurtosis test');
xlim(xlimx);
v=axis;
line([v(1),v(2)],[quant,quant],'color','r','LineWidth',lwdenv);
subplot(2,2,3:4)
plot(out.nor(:,1),out.nor(:,4));
xlim(xlimx);
quant=chi2inv(0.99,2);
v=axis;
line([v(1),v(2)],[quant,quant],'color','r','LineWidth',lwdenv);
title('Normality test');
xlabel('Subset size m');
close all
save tempfileWS