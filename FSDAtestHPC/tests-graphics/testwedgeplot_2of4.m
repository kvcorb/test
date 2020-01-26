load tempfileWS
% Load the airline data.
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
% Add a level shift contamintion plus some outliers.
y(68:end)=y(68:end)+1300;
y(67)=y(67)-600;
y(45)=y(45)-800;
y(68:69)=y(68:69)+800;
% Create structure specifying model
model=struct;
model.trend=2;              % quadratic trend
model.s=12;                 % monthly time series
model.seasonal=204;         % number of harmonics
model.lshift=40;            % position where to start monitoring level shift
model.X='';
% Create structure lts specifying lts options
lts=struct;
lts.bestr=20; % number of best solutions to bring to full convergence
% h = dimension of the h subset (75 per cent of the data, bdp=0.25)
h=round(0.75*length(y));
[out, varargout]=LTSts(y,'model',model,'nsamp',500,...
'lts',lts,'h',h,'plots',0,'msg',0);
% Create the double wedge plot.
wedgeplot(out)
close all
save tempfileWS