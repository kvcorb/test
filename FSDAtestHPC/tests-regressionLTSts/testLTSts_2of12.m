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
% Source:
% http://datamarket.com/data/list/?q=provider:tsdl
y=(y(:));
yr = repmat((1949:1960),12,1);
mo = repmat((1:12)',1,12);
time = datestr(datenum(yr(:),mo(:),1));
ts = timeseries(y(:),time,'name','AirlinePassengers');
ts.TimeInfo.Format = 'dd-mmm-yyyy';
tscol = tscollection(ts);
% plot airline data
plot(ts)
% linear trend + just one harmonic for seasonal component
model=struct;
model.trend=1;              % linear trend
model.s=12;                 % monthly time series
model.seasonal=1;           % just one harmonic
model.lshift=0;             % no level shift
out=LTSts(y,'model',model,'dispresults',true);
close all
% Plot real and fitted values
plot(y,'Linewidth',1.5);
hold('on')
plot(out.yhat,'r--','Linewidth',1.5)
legend({'Real values','Fitted values'},'Location','SouthEast','interpreter','LaTeX','FontSize',14)
numpar = {'model parameters:' , 'A=1, B=1, G=0, $\delta_1=0$'};
title(gca,numpar,'interpreter','LaTeX','FontSize',16);
close all
save tempfileWS