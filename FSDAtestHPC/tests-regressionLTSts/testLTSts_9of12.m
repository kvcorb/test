load tempfileWS
%   1949 1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960
y = [112  115  145  171  196  204  242  284  315  340  360  417    % Jan
118  126  150  180  196  188  233  277  301  318  342  391    % Feb
132  141  178  193  236  235  267  317  356  362  406  419    % Mar
129  135  163  181  235  227  269  313  348  348  396  461    % Apr
121  125  172  183  229  234  270  318  355  363  420  472    % May
135  149  178  218  243  264  315  374  422  435  472  535    % Jun
148  170  199  230  264  302  364  413  465  491  548  622    % Jul
148  170  199  242  272  293  347  405  467  505  559  606    % Aug
136  158  184  209  237  259  312  355  404  404  463  508    % Sep
119  133  162  191  211  229  274  306  347  359  407  461    % Oct
104  114  146  172  180  203  237  271  305  310  362  390    % Nov
118  140  166  194  201  229  278  306  336  337  405  432 ]; % Dec
% Two short level shifts in opposite directions and an isolated outlier.
% Add a level shift contamination plus some outliers.
y1=y(:);
y1(50:55)=y1(50:55)-300;
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
% Estimate the parameters
[out]=LTSts(y1,'model',model,'nsamp',500,...
'plots',1,'lshiftlocref',lshiftlocref,'msg',0);
% Using the notation of the paper RPRH: A=2, B=4, G=2 and $\delta_1>0$.
str=strcat('A=2, B=4, G=2, $\delta_2=',num2str(out.posLS),'$');
numpar = {'model parameters:' , str};
axeslast=findobj('-regexp','Tag','LTSts:ts');
title(axeslast(end),numpar,'interpreter','LaTeX','FontSize',16);
% generate the wedgeplot
% wedgeplot(out,'transpose',true,'extradata',[y1 out.yhat]);
close all
save tempfileWS