load tempfileWS
% A time series of 100 observations is simulated from a model
% which contains a quadratic trend, a linear time varying seasonal
% component with two harmonics, two explanatory variables and a level
% shift in position 30 with size -40000 and a signal to noise ratio
% egual to 10
rng(1)
model=struct;
model.trend=2;
model.trendb=[5,10,-3];
model.seasonal=102;
model.seasonalb=100*[2 4 0.1 8 0.001];
model.signal2noiseratio=10;
model.lshift=30;
model.lshiftb=-40000;
model.X=2;
model.Xb=[10000 20000];
T=100;
out=simulateTS(T,'model',model,'plots',1);
close all
save tempfileWS