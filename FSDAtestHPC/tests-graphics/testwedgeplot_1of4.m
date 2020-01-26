n=45;
a=1;
b=0.8;
sig=1;
seq=(1:n)';
y=a+b*seq+sig*randn(n,1);
y(round(n/2):end)=y(round(n/2):end)+10;
% model with a quadratic trend, non seasonal and level shift
model=struct;
model.trend=2;
model.seasonal=0;
% Potential level shift position is investigated in positions:
% t=10, t=11, ..., t=T-10.
model.lshift=10;
out=LTSts(y,'model',model);
wedgeplot(out,'transpose',true,'extradata',[y out.yhat])
close all
save tempfileWS