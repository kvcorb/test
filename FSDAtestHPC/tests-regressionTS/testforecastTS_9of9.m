load tempfileWS
rng(1000)
model=struct;
model.trend=1;
model.trendb=[5,0.01];
model.seasonal=2;
model.seasonalb=0.1*[2 4 0.1 2];
model.signal2noiseratio=10;
model.ARb=[0.2 0.3];
T=150;
out=simulateTS(T,'model',model,'plots',1);
yall=out.y;
% Fit a model imposing linear trend, sesonal component and AR(2)
y=out.y(1:100);
nfore=50;
model=struct;
model.trend=1;
model.seasonal=2;
% No level shift
model.lshift=0;
model.ARp=2;
out=LTSts(y,'model',model,'plots',1,'dispresults',true);
% Note that in this case all the 120 values of Xall are supplied and
% the number of forecasts is 20
forecastTS(out,'model',model,'nfore',50,'conflev',0.75)
hold('on')
plot(1:length(yall),yall)
close all
save tempfileWS