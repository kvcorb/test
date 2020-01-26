load tempfileWS
rng(1000)
model=struct;
model.trend=1;
model.trendb=[5,1000];
model.seasonal=102;
model.seasonalb=100*[2 4 0.1 8 0.001];
model.signal2noiseratio=10;
model.ARb=[0.2 0.7];
T=100;
out=simulateTS(T,'model',model,'plots',1);
% Fit a model imposing linear trend, sesonal component and AR(2)
y=out.y;
nfore=20;
Xall=1e+2*randn(T+nfore,1);
X=Xall(1:T,:);
model=struct;
model.trend=1;
model.seasonal=102;
% No level shift
model.lshift=0;
% Add a nonn important expl. variable
model.X=X;
model.ARp=2;
out=LTSts(y,'model',model,'plots',1,'dispresults',true);
% Note that in this case all the 120 values of Xall are supplied and
% the number of forecasts is 20
model.X=Xall;
forecastTS(out,'model',model,'nfore',20)
close all
save tempfileWS