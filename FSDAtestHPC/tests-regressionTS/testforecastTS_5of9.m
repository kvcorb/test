load tempfileWS
close all
% In this example we estimate a model without the seasonal component
%   1949 1950 1951 1952 1953 1954 1955 1956 1957 1958 1959 1960
y = [112  115  145  171  196  204  242  284  315  340  360  417   % Jan
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
y=y(:);
% Contaminate the first 20 observations
y(1:20)=y(1:20)+200;
% Model with linear trend and no seasonal component. Search for a level shift
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=[];          % no seasonal component
model.lshift=10;            % search for level shift
out=LTSts(y,'model',model,'plots',1,'dispresults',true,'msg',0);
% 3 years forecasts
nfore=36;
StartDate=[1949 1];
conflev=0.999; % Wide confidence level for the forecast
outFORE=forecastTS(out,'model',model,'nfore',nfore,'StartDate',StartDate,'conflev',conflev);
close all
save tempfileWS