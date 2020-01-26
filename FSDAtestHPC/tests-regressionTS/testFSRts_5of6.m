load tempfileWS
rng(1)
model=struct;
model.trend=[];
model.trendb=[];
model.seasonal=102;
model.seasonalb=40*[0.1 -0.5 0.2 0.3 0.01];
model.signal2noiseratio=20;
model.lshift=30;
model.lshiftb=2000;
T=100;
outSIM=simulateTS(T,'model',model,'plots',1);
y=outSIM.y;
% Contaminate the series.
y(80:90)=y(80:90)+2000;
model1=struct;
model1.trend=1;              % linear trend
model1.s=12;                 % monthly time series
model1.seasonal=104;
lms=struct;
lms.bsb=[1:20 80:85];
lms.posLS=30;
% Initialize the search with the units inside lms.bsb.
out=FSRts(y,'model',model1,'lms',lms);
close all
save tempfileWS