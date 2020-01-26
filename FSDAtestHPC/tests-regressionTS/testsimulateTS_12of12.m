load tempfileWS
rng(100)
model=struct;
model.trend=1;
model.trendb=[5,1000];
model.seasonal='';
model.signal2noiseratio=10;
model.ARb=[0.2 0.7];
T=100;
X=1e+2*randn(T,1);
model.X=X;
model.Xb=100;
out=simulateTS(T,'model',model,'plots',1);
y=out.y;
% Fit a model with linear trend, AR(3) and the true expl. variable
model=struct;
model.trend=1;
model.seasonal=0;
model.lshift=0;
model.X=X;
model.ARp=3;
out=LTSts(y,'model',model,'plots',1,'dispresults',true);
close all
save tempfileWS