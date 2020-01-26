load tempfileWS
close all;
state=100;
randn('state', state);
n=100;
X=randn(n,3);
bet=[3;4;5];
y=3*randn(n,1)+X*bet;
y(1:20)=y(1:20)+13;
% Define nominal confidence level
conflev=[0.99,1-0.01/length(y)];
% Define number of subsets
nsamp=3000;
% Define the main title of the plots
titl='';
% LMS with no reweighting
[outLMS]=LXS(y,X,'nsamp',nsamp,'conflev',conflev(1));
h=subplot(2,2,1)
laby='Scaled LMS residuals';
resindexplot(outLMS.residuals,'h',h,'title',titl,'laby',laby,'numlab','','conflev',conflev)
% LTS with no reweighting
h=subplot(2,2,2);
[outLTS]=LXS(y,X,'nsamp',nsamp,'conflev',conflev(1),'lms',0);
laby='Scaled LTS residuals';
resindexplot(outLTS.residuals,'h',h,'title',titl,'laby',laby,'numlab','','conflev',conflev);
% LMS with reweighting
[outLMSr]=LXS(y,X,'nsamp',nsamp,'conflev',conflev(1),'rew',1);
h=subplot(2,2,3);
laby='Scaled reweighted LMS residuals';
resindexplot(outLMSr.residuals,'h',h,'title',titl,'laby',laby,'numlab','','conflev',conflev)
% LTS with reweighting
[outLTSr]=LXS(y,X,'nsamp',nsamp,'conflev',conflev(1),'rew',1,'lms',0);
h=subplot(2,2,4);
laby='Scaled reweighted LTS residuals';
resindexplot(outLTSr.residuals,'h',h,'title',titl,'laby',laby,'numlab','','conflev',conflev);
% By simply changing the seed to 543 (state=543), using a Bonferroni size of 1%, no unit is declared as outlier.
close all
save tempfileWS