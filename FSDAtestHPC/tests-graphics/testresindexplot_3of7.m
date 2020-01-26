load tempfileWS
[out]=LXS(y,X,'nsamp',0,'rew',1,'lms',0);
bonfconf = 1-0.01/size(y,1);    % 99% Bonferronised
resindexplot(out.residuals,'conflev',[0.95,0.99,bonfconf],'labx','Index number','laby','Robust LTS reweighted residuals');
close all
save tempfileWS