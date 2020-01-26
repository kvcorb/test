load tempfileWS
% complete model to be tested.
overmodel=struct;
overmodel.trend=2;              % quadratic trend
overmodel.s=12;                 % monthly time series
overmodel.seasonal=303;         % number of harmonics
overmodel.lshift=4;             % position where to start monitoring level shift
overmodel.X=tmp.*[1:n]';
% pval threshold
thPval=0.01;
[out_model_1, out_reduced_1] = LTStsVarSel(out_sim.y,'model',overmodel,'thPval',thPval,'plots',1);
close all
save tempfileWS