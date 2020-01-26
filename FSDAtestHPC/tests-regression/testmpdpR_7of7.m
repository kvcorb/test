load tempfileWS
clearvars;close all;
% scatterplot of data: one point looks outlying
load('forbes.txt');
y=forbes(:,2);
X=forbes(:,1);
h1=subplot(2,1,1);
[out] = mpdpR(y, X, 1);
resindexplot(out,'h',h1);
title('alpha=1','FontSize',15);
h2=subplot(2,1,2);
% MLE estimate
[outalpha0] = mpdpR(y, X, 0);
resindexplot(outalpha0,'h',h2);
title('alpha=0','FontSize',15);
close all
save tempfileWS