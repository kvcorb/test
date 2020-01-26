load tempfileWS
y1=y(:);
y1(50:55)=y1(50:55)-300;
y1(68:end)=y1(68:end)-700;
y1(70:75)=y1(70:75)+300;
y1(90:90)=y1(90:90)+300;
% Create structure specifying model
model=struct;
model.trend=2;              % quadratic trend
model.s=12;                 % monthly time series
model.seasonal=204;         % number of harmonics
model.lshift=40;            % position where to start monitoring level shift
model.X='';
% Create structure lts specifying lts options
lshiftlocref=struct;
% Set window length for local refinement.
lshiftlocref.wlength=10;
% Set tuning constant to use insde Huber rho function
lshiftlocref.huberc=1.5;
close all
% Estimate the parameters
[out, varargout]=LTSts(y1,'model',model,'nsamp',500,...
'plots',2,'lshiftlocref',lshiftlocref,'msg',0);
% Using the notation of the paper RPRH: A=2, B=4, G=2 and $\delta_1>0$.
str=strcat('A=2, B=4, G=2, $\delta_2=',num2str(out.posLS),'$');
numpar = {'model parameters:' , str};
title(findobj('-regexp','Tag','LTSts:ts'),numpar,'interpreter','LaTeX','FontSize',16);
% generate the wedgeplot
% wedgeplot(out,'transpose',true,'extradata',[y1 out.yhat]);
close all
save tempfileWS