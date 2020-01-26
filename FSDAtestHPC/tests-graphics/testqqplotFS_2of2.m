load tempfileWS
% This is an example of the use of option h
XX=load('wool.txt');
y=(XX(:,end));
lny=log(y);
X=XX(:,1:end-1);
outLM=fitlm(X,y,'exclude','');
res=outLM.Residuals{:,3};
outLMtra=fitlm(X,lny,'exclude','');
restra=outLMtra.Residuals{:,3};
h1=subplot(1,2,1);
qqplotFS(res,'X',X,'plots',1,'h',h1);
title('QQplot using untransformed data')
h2=subplot(1,2,2);
qqplotFS(restra,'X',X,'plots',1,'h',h2);
title('QQplot using transformed data')
close all
save tempfileWS