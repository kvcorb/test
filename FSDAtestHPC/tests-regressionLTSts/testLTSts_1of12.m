rng('default')
n=45;
a=1;
b=0.8;
sig=1;
seq=(1:n)';
y=a+b*seq+sig*randn(n,1);
% Add a level shift in the simulated series
y(round(n/2):end)=y(round(n/2):end)+10;
% model with a linear trend, non seasonal and level shift
model=struct;
model.trend=1;
model.seasonal=0;
% Potential level shift position is investigated in positions:
% t=10, t=11, ..., t=T-10.
model.lshift=10;
out=LTSts(y,'model',model,'plots',1);
% Using the notation of the paper RPRH: A=1, B=1, G=0 and $\delta_1>0$.
str=strcat('A=1, B=0, G=0, $\delta_2=',num2str(out.posLS),'$');
title(findobj(gcf,'-regexp','Tag','LTSts:ts'),str,'interpreter','latex');
close all
save tempfileWS