load tempfileWS
rng(1000)
model=struct;
model.trend=1;
model.trendb=[5,1000];
model.seasonal=102;
model.seasonalb=100*[2 4 0.1 8 0.001];
model.signal2noiseratio=10;
T=120;
Xall=1e+2*randn(T,1);
model.X=Xall;
model.Xb=100;
out=simulateTS(T,'model',model,'plots',1);
% Fit a model using just the first 100 obs
yall=out.y;
Tred=100;
y=yall(1:Tred);
X=Xall(1:Tred,:);
model=struct;
model.trend=1;
model.seasonal=102;
% Potential level shift position is investigated in positions:
% t=10, t=11, ..., t=T-10.
model.lshift=0;
model.X=X;
out=LTSts(y,'model',model,'plots',1,'dispresults',true);
% Note that in this case all the 120 values of Xall are supplied and
% the number of forecasts is 20
model.X=Xall;
forecastTS(out,'model',model,'nfore',20)
close all
save tempfileWS