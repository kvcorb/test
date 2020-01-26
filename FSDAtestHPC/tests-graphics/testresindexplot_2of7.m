load tempfileWS
load('stack_loss.txt');
y=stack_loss(:,4);
X=stack_loss(:,1:3);
% Define confidence level
conflev=[0.95,0.99];
figure;
h1=subplot(2,1,1);
% Compute studentized residuals (deletion residuals)
stats=regstats(y,X,'linear',{'standres','studres'});
resindexplot(stats.studres,'h',h1,'conflev',conflev,'labx','Index number','laby','Deletion residuals');
% Compute robust residuals
[out]=LXS(y,X,'nsamp',0,'rew',1,'lms',0);
h2=subplot(2,1,2);
resindexplot(out.residuals,'h',h2,'conflev',conflev,'labx','Index number','laby','Robust LTS reweighted residuals');
close all
save tempfileWS